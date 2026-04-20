package com.google.firebase.firestore.model;

import com.google.firebase.firestore.model.mutation.FieldMask;
import com.google.firebase.firestore.util.Assert;
import com.google.firestore.v1.MapValue;
import com.google.firestore.v1.Value;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes22.dex */
public final class ObjectValue implements Cloneable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final Object lock;
    private volatile Value mergedValue;
    private final Map<String, Object> overlayMap;
    private Value partialValue;

    public static ObjectValue fromMap(Map<String, Value> value) {
        return new ObjectValue(Values.encodeValue(value));
    }

    public ObjectValue(Value value) {
        this.lock = new Object();
        this.overlayMap = new HashMap();
        Assert.hardAssert(value.hasMapValue(), "ObjectValues should be backed by a MapValue", new Object[0]);
        Assert.hardAssert(!ServerTimestamps.isServerTimestamp(value), "ServerTimestamps should not be used as an ObjectValue", new Object[0]);
        this.mergedValue = value;
    }

    public ObjectValue() {
        this(Value.newBuilder().setMapValue(MapValue.getDefaultInstance()).build());
    }

    public Map<String, Value> getFieldsMap() {
        return buildProto().getMapValue().getFieldsMap();
    }

    public FieldMask getFieldMask() {
        return extractFieldMask(buildProto().getMapValue());
    }

    private FieldMask extractFieldMask(MapValue value) {
        Set<FieldPath> fields = new HashSet<>();
        for (Map.Entry<String, Value> entry : value.getFieldsMap().entrySet()) {
            FieldPath currentPath = FieldPath.fromSingleSegment(entry.getKey());
            if (Values.isMapValue(entry.getValue())) {
                FieldMask nestedMask = extractFieldMask(entry.getValue().getMapValue());
                Set<FieldPath> nestedFields = nestedMask.getMask();
                if (nestedFields.isEmpty()) {
                    fields.add(currentPath);
                } else {
                    for (FieldPath nestedPath : nestedFields) {
                        fields.add(currentPath.append(nestedPath));
                    }
                }
            } else {
                fields.add(currentPath);
            }
        }
        return FieldMask.fromSet(fields);
    }

    public Value get(FieldPath fieldPath) {
        return extractNestedValue(buildProto(), fieldPath);
    }

    private static Value extractNestedValue(Value value, FieldPath fieldPath) {
        if (fieldPath.isEmpty()) {
            return value;
        }
        for (int i = 0; i < fieldPath.length() - 1; i++) {
            value = value.getMapValue().getFieldsOrDefault(fieldPath.getSegment(i), null);
            if (!Values.isMapValue(value)) {
                return null;
            }
        }
        return value.getMapValue().getFieldsOrDefault(fieldPath.getLastSegment(), null);
    }

    private Value buildProto() {
        Value value = this.mergedValue;
        if (value == null) {
            synchronized (this.lock) {
                value = this.mergedValue;
                if (value == null) {
                    if (this.partialValue == null) {
                        throw new AssertionError();
                    }
                    boolean zIsEmpty = this.overlayMap.isEmpty();
                    Value value2 = this.partialValue;
                    if (zIsEmpty) {
                        value = value2;
                    } else {
                        MapValue mergedResult = applyOverlay(value2, FieldPath.EMPTY_PATH, this.overlayMap);
                        if (mergedResult == null) {
                            value = this.partialValue;
                        } else {
                            value = Value.newBuilder().setMapValue(mergedResult).build();
                        }
                    }
                    if (value == null) {
                        throw new AssertionError();
                    }
                    this.mergedValue = value;
                    this.partialValue = null;
                    this.overlayMap.clear();
                }
            }
        }
        return value;
    }

    public void delete(FieldPath path) {
        Assert.hardAssert(!path.isEmpty(), "Cannot delete field for empty path on ObjectValue", new Object[0]);
        setOverlay(path, null);
    }

    public void set(FieldPath path, Value value) {
        Assert.hardAssert(!path.isEmpty(), "Cannot set field for empty path on ObjectValue", new Object[0]);
        setOverlay(path, value);
    }

    public void setAll(Map<FieldPath, Value> data) {
        for (Map.Entry<FieldPath, Value> entry : data.entrySet()) {
            FieldPath path = entry.getKey();
            if (entry.getValue() == null) {
                delete(path);
            } else {
                set(path, entry.getValue());
            }
        }
    }

    private void setOverlay(FieldPath path, Value value) {
        synchronized (this.lock) {
            if (this.mergedValue != null) {
                this.partialValue = this.mergedValue;
                this.mergedValue = null;
            }
            setOverlay(this.overlayMap, path, value);
        }
    }

    private static void setOverlay(Map<String, Object> overlayMap, FieldPath path, Value value) {
        Map<String, Object> currentLevel = overlayMap;
        for (int i = 0; i < path.length() - 1; i++) {
            String currentSegment = path.getSegment(i);
            Object currentValue = currentLevel.get(currentSegment);
            if (currentValue instanceof Map) {
                currentLevel = (Map) currentValue;
            } else if ((currentValue instanceof Value) && ((Value) currentValue).hasMapValue()) {
                Map<String, Object> nextLevel = new HashMap<>(((Value) currentValue).getMapValue().getFieldsMap());
                currentLevel.put(currentSegment, nextLevel);
                currentLevel = nextLevel;
            } else {
                Map<String, Object> nextLevel2 = new HashMap<>();
                currentLevel.put(currentSegment, nextLevel2);
                currentLevel = nextLevel2;
            }
        }
        currentLevel.put(path.getLastSegment(), value);
    }

    private static MapValue applyOverlay(Value partialValue, FieldPath currentPath, Map<String, Object> currentOverlays) {
        MapValue.Builder resultAtPath;
        boolean modified = false;
        Value existingValue = extractNestedValue(partialValue, currentPath);
        if (Values.isMapValue(existingValue)) {
            resultAtPath = existingValue.getMapValue().toBuilder();
        } else {
            resultAtPath = MapValue.newBuilder();
        }
        for (Map.Entry<String, Object> entry : currentOverlays.entrySet()) {
            String pathSegment = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof Map) {
                MapValue nested = applyOverlay(partialValue, currentPath.append(pathSegment), (Map) value);
                if (nested != null) {
                    resultAtPath.putFields(pathSegment, Value.newBuilder().setMapValue(nested).build());
                    modified = true;
                }
            } else if (value instanceof Value) {
                resultAtPath.putFields(pathSegment, (Value) value);
                modified = true;
            } else if (resultAtPath.containsFields(pathSegment)) {
                Assert.hardAssert(value == null, "Expected entry to be a Map, a Value or null", new Object[0]);
                resultAtPath.removeFields(pathSegment);
                modified = true;
            }
        }
        if (modified) {
            return resultAtPath.build();
        }
        return null;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o instanceof ObjectValue) {
            return buildProto().equals(((ObjectValue) o).buildProto());
        }
        return false;
    }

    public int hashCode() {
        return buildProto().hashCode();
    }

    public String toString() {
        return "ObjectValue{internalValue=" + Values.canonicalId(buildProto()) + AbstractJsonLexerKt.END_OBJ;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ObjectValue m8433clone() {
        return new ObjectValue(buildProto());
    }
}

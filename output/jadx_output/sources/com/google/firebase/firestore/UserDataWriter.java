package com.google.firebase.firestore;

import com.google.firebase.firestore.DocumentSnapshot;
import com.google.firebase.firestore.model.DatabaseId;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.ServerTimestamps;
import com.google.firebase.firestore.model.Values;
import com.google.firebase.firestore.util.Assert;
import com.google.firebase.firestore.util.Logger;
import com.google.firestore.v1.ArrayValue;
import com.google.firestore.v1.Value;
import com.google.protobuf.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes22.dex */
public class UserDataWriter {
    private final FirebaseFirestore firestore;
    private final DocumentSnapshot.ServerTimestampBehavior serverTimestampBehavior;

    public UserDataWriter(FirebaseFirestore firestore, DocumentSnapshot.ServerTimestampBehavior serverTimestampBehavior) {
        this.firestore = firestore;
        this.serverTimestampBehavior = serverTimestampBehavior;
    }

    public Object convertValue(Value value) {
        switch (Values.typeOrder(value)) {
            case 0:
                return null;
            case 1:
            case 9:
            case 11:
            case 12:
            case 14:
            default:
                throw Assert.fail("Unknown value type: " + value.getValueTypeCase(), new Object[0]);
            case 2:
                return Boolean.valueOf(value.getBooleanValue());
            case 3:
            case 4:
                if (value.hasIntegerValue()) {
                    return Long.valueOf(value.getIntegerValue());
                }
                return Double.valueOf(value.getDoubleValue());
            case 5:
                return convertTimestamp(value.getTimestampValue());
            case 6:
                return convertServerTimestamp(value);
            case 7:
                return value.getStringValue();
            case 8:
                return Blob.fromByteString(value.getBytesValue());
            case 10:
                return convertReference(value);
            case 13:
                return new GeoPoint(value.getGeoPointValue().getLatitude(), value.getGeoPointValue().getLongitude());
            case 15:
                return convertArray(value.getArrayValue());
            case 16:
                return convertVectorValue(value.getMapValue().getFieldsMap());
            case 17:
                return convertObject(value.getMapValue().getFieldsMap());
        }
    }

    Map<String, Object> convertObject(Map<String, Value> mapValue) {
        Map<String, Object> result = new HashMap<>();
        for (Map.Entry<String, Value> entry : mapValue.entrySet()) {
            result.put(entry.getKey(), convertValue(entry.getValue()));
        }
        return result;
    }

    VectorValue convertVectorValue(Map<String, Value> mapValue) {
        List<Value> values = mapValue.get(Values.VECTOR_MAP_VECTORS_KEY).getArrayValue().getValuesList();
        double[] doubles = new double[values.size()];
        for (int i = 0; i < values.size(); i++) {
            doubles[i] = values.get(i).getDoubleValue();
        }
        return new VectorValue(doubles);
    }

    private Object convertServerTimestamp(Value serverTimestampValue) {
        switch (this.serverTimestampBehavior) {
            case PREVIOUS:
                Value previousValue = ServerTimestamps.getPreviousValue(serverTimestampValue);
                if (previousValue == null) {
                    return null;
                }
                return convertValue(previousValue);
            case ESTIMATE:
                return convertTimestamp(ServerTimestamps.getLocalWriteTime(serverTimestampValue));
            default:
                return null;
        }
    }

    private Object convertTimestamp(Timestamp value) {
        return new com.google.firebase.Timestamp(value.getSeconds(), value.getNanos());
    }

    private List<Object> convertArray(ArrayValue arrayValue) {
        ArrayList<Object> result = new ArrayList<>(arrayValue.getValuesCount());
        for (Value v : arrayValue.getValuesList()) {
            result.add(convertValue(v));
        }
        return result;
    }

    private Object convertReference(Value value) {
        DatabaseId refDatabase = DatabaseId.fromName(value.getReferenceValue());
        DocumentKey key = DocumentKey.fromName(value.getReferenceValue());
        DatabaseId database = this.firestore.getDatabaseId();
        if (!refDatabase.equals(database)) {
            Logger.warn("DocumentSnapshot", "Document %s contains a document reference within a different database (%s/%s) which is not supported. It will be treated as a reference in the current database (%s/%s) instead.", key.getPath(), refDatabase.getProjectId(), refDatabase.getDatabaseId(), database.getProjectId(), database.getDatabaseId());
        }
        return new DocumentReference(key, this.firestore);
    }
}

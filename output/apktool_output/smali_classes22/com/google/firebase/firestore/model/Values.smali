.class public final Lcom/google/firebase/firestore/model/Values;
.super Ljava/lang/Object;
.source "Values.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/model/Values$Enterprise;,
        Lcom/google/firebase/firestore/model/Values$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nValues.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Values.kt\ncom/google/firebase/firestore/model/Values\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,775:1\n37#2,2:776\n37#2,2:778\n1557#3:780\n1628#3,3:781\n*S KotlinDebug\n*F\n+ 1 Values.kt\ncom/google/firebase/firestore/model/Values\n*L\n363#1:776,2\n364#1:778,2\n751#1:780\n751#1:781,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00be\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\t\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0010\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0013\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u001c\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0088\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u001f\u001a\u00020\u00102\u0008\u0010 \u001a\u0004\u0018\u00010\u0007H\u0007J\u001c\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010\u00072\u0008\u0010$\u001a\u0004\u0018\u00010\u0007H\u0007J\u0018\u0010%\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u0007H\u0002J\u0018\u0010&\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u0007H\u0002J\u0018\u0010\'\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u0007H\u0002J\u001a\u0010(\u001a\u00020\"2\u0006\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010\u0007H\u0007J\u001c\u0010,\u001a\u00020\u00102\u0008\u0010#\u001a\u0004\u0018\u00010\u00072\u0008\u0010$\u001a\u0004\u0018\u00010\u0007H\u0007J \u0010-\u001a\u00020\u00102\u0006\u0010.\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u0007H\u0002J(\u0010/\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u00072\u0006\u00100\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u00072\u0006\u00101\u001a\u00020\"H\u0007J(\u00102\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u00072\u0006\u00100\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u00072\u0006\u00101\u001a\u00020\"H\u0007J\u0018\u00103\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u0007H\u0002J\u0018\u00104\u001a\u00020\u00102\u0006\u0010#\u001a\u0002052\u0006\u0010$\u001a\u000205H\u0002J\u0018\u00106\u001a\u00020\u00102\u0006\u00107\u001a\u00020\u00052\u0006\u00108\u001a\u00020\u0005H\u0002J\u0018\u00109\u001a\u00020\u00102\u0006\u0010#\u001a\u00020:2\u0006\u0010$\u001a\u00020:H\u0002J\u0018\u0010;\u001a\u00020\u00102\u0006\u0010#\u001a\u00020<2\u0006\u0010$\u001a\u00020<H\u0002J\u0018\u0010=\u001a\u00020\u00102\u0006\u0010#\u001a\u00020>2\u0006\u0010$\u001a\u00020>H\u0002J\u0018\u0010?\u001a\u00020\u00102\u0006\u0010#\u001a\u00020>2\u0006\u0010$\u001a\u00020>H\u0002J\u0010\u0010@\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0007H\u0007J\u001c\u0010A\u001a\u00020B2\n\u0010C\u001a\u00060Dj\u0002`E2\u0006\u0010 \u001a\u00020\u0007H\u0002J\u001c\u0010F\u001a\u00020B2\n\u0010C\u001a\u00060Dj\u0002`E2\u0006\u0010G\u001a\u000205H\u0002J\u001c\u0010H\u001a\u00020B2\n\u0010C\u001a\u00060Dj\u0002`E2\u0006\u0010I\u001a\u00020:H\u0002J\u001c\u0010J\u001a\u00020B2\n\u0010C\u001a\u00060Dj\u0002`E2\u0006\u0010 \u001a\u00020\u0007H\u0002J\u001c\u0010K\u001a\u00020B2\n\u0010C\u001a\u00060Dj\u0002`E2\u0006\u0010L\u001a\u00020>H\u0002J\u001c\u0010M\u001a\u00020B2\n\u0010C\u001a\u00060Dj\u0002`E2\u0006\u0010N\u001a\u00020<H\u0002J\u0012\u0010O\u001a\u00020\"2\u0008\u0010 \u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010P\u001a\u00020\"2\u0008\u0010 \u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010Q\u001a\u00020\"2\u0008\u0010 \u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010R\u001a\u00020\"2\u0008\u0010 \u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010S\u001a\u00020\"2\u0008\u0010 \u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010T\u001a\u00020\"2\u0008\u0010 \u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010U\u001a\u00020\"2\u0008\u0010 \u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010V\u001a\u00020\"2\u0008\u0010 \u001a\u0004\u0018\u00010\u0007H\u0007J\u0018\u0010W\u001a\u00020\u00072\u0006\u0010X\u001a\u00020Y2\u0006\u0010Z\u001a\u00020[H\u0007J\u0010\u0010e\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0007H\u0007J\u0010\u0010f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0007H\u0007J\u0010\u0010g\u001a\u00020\"2\u0006\u0010 \u001a\u00020\u0007H\u0007J\u0010\u0010h\u001a\u00020\"2\u0006\u0010 \u001a\u00020\u0007H\u0007J\u0010\u0010i\u001a\u00020\u00072\u0006\u0010 \u001a\u00020jH\u0007J\u0010\u0010i\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0010H\u0007J\u0010\u0010i\u001a\u00020\u00072\u0006\u0010 \u001a\u00020kH\u0007J\u0010\u0010i\u001a\u00020\u00072\u0006\u0010 \u001a\u00020lH\u0007J\u0010\u0010i\u001a\u00020\u00072\u0006\u0010 \u001a\u00020mH\u0007J\u0010\u0010i\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0005H\u0007J\u0010\u0010i\u001a\u00020\u00072\u0006\u0010 \u001a\u00020nH\u0007J\u0010\u0010i\u001a\u00020\u00072\u0006\u0010o\u001a\u00020pH\u0007J\u0010\u0010i\u001a\u00020\u00072\u0006\u0010G\u001a\u00020qH\u0007J\u0010\u0010i\u001a\u00020\u00072\u0006\u0010 \u001a\u000205H\u0007J\u0010\u0010i\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\"H\u0007J\u0010\u0010i\u001a\u00020\u00072\u0006\u0010t\u001a\u00020uH\u0007J\u0010\u0010i\u001a\u00020\u00072\u0006\u0010 \u001a\u00020vH\u0007J\u0010\u0010i\u001a\u00020\u00072\u0006\u0010 \u001a\u00020wH\u0007J\u0010\u0010i\u001a\u00020\u00072\u0006\u0010x\u001a\u00020yH\u0007J\u0010\u0010i\u001a\u00020\u00072\u0006\u0010z\u001a\u00020{H\u0007J\u0010\u0010|\u001a\u00020\u00072\u0006\u0010z\u001a\u00020}H\u0007J\u001c\u0010i\u001a\u00020\u00072\u0012\u0010~\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00070\u007fH\u0007J\u0018\u0010i\u001a\u00020\u00072\u000e\u0010\u0080\u0001\u001a\t\u0012\u0004\u0012\u00020\u00070\u0081\u0001H\u0007J\u0013\u0010\u0082\u0001\u001a\u00020\u00072\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H\u0007J\u001a\u0010G\u001a\u0002052\u0007\u0010\u0083\u0001\u001a\u00020j2\u0007\u0010\u0084\u0001\u001a\u00020\u0010H\u0007J\u0015\u0010\u0085\u0001\u001a\u0004\u0018\u00010}2\u0008\u0010 \u001a\u0004\u0018\u00010\u0007H\u0007J\u001b\u0010\u0086\u0001\u001a\u00020B2\u0007\u0010\u0083\u0001\u001a\u00020j2\u0007\u0010\u0087\u0001\u001a\u00020\u0010H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\\\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010]\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010^\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010_\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010`\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010a\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010b\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010c\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010d\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010r\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010s\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0089\u0001"
    }
    d2 = {
        "Lcom/google/firebase/firestore/model/Values;",
        "",
        "<init>",
        "()V",
        "TYPE_KEY",
        "",
        "NAN_VALUE",
        "Lcom/google/firestore/v1/Value;",
        "NULL_VALUE",
        "MIN_VALUE",
        "MAX_VALUE_TYPE",
        "MAX_VALUE",
        "VECTOR_VALUE_TYPE",
        "VECTOR_MAP_VECTORS_KEY",
        "MIN_VECTOR_VALUE",
        "TYPE_ORDER_NULL",
        "",
        "TYPE_ORDER_UNSET",
        "TYPE_ORDER_BOOLEAN",
        "TYPE_ORDER_NUMBER_NAN",
        "TYPE_ORDER_NUMBER",
        "TYPE_ORDER_TIMESTAMP",
        "TYPE_ORDER_SERVER_TIMESTAMP",
        "TYPE_ORDER_STRING",
        "TYPE_ORDER_BLOB",
        "TYPE_ORDER_REFERENCE",
        "TYPE_ORDER_GEOPOINT",
        "TYPE_ORDER_ARRAY",
        "TYPE_ORDER_VECTOR",
        "TYPE_ORDER_MAP",
        "TYPE_ORDER_MAX_VALUE",
        "typeOrder",
        "value",
        "equals",
        "",
        "left",
        "right",
        "numberEquals",
        "arrayEquals",
        "objectEquals",
        "contains",
        "haystack",
        "Lcom/google/firestore/v1/ArrayValueOrBuilder;",
        "needle",
        "compare",
        "compareInternal",
        "leftType",
        "lowerBoundCompare",
        "leftInclusive",
        "rightInclusive",
        "upperBoundCompare",
        "compareNumbers",
        "compareTimestamps",
        "Lcom/google/protobuf/Timestamp;",
        "compareReferences",
        "leftPath",
        "rightPath",
        "compareGeoPoints",
        "Lcom/google/type/LatLng;",
        "compareArrays",
        "Lcom/google/firestore/v1/ArrayValue;",
        "compareMaps",
        "Lcom/google/firestore/v1/MapValue;",
        "compareVectors",
        "canonicalId",
        "canonifyValue",
        "",
        "builder",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "canonifyTimestamp",
        "timestamp",
        "canonifyGeoPoint",
        "latLng",
        "canonifyReference",
        "canonifyObject",
        "mapValue",
        "canonifyArray",
        "arrayValue",
        "isInteger",
        "isDouble",
        "isNumber",
        "isArray",
        "isReferenceValue",
        "isNullValue",
        "isNanValue",
        "isMapValue",
        "refValue",
        "databaseId",
        "Lcom/google/firebase/firestore/model/DatabaseId;",
        "key",
        "Lcom/google/firebase/firestore/model/DocumentKey;",
        "MIN_BOOLEAN",
        "MIN_NUMBER",
        "MIN_TIMESTAMP",
        "MIN_STRING",
        "MIN_BYTES",
        "MIN_REFERENCE",
        "MIN_GEO_POINT",
        "MIN_ARRAY",
        "MIN_MAP",
        "getLowerBound",
        "getUpperBound",
        "isMaxValue",
        "isVectorValue",
        "encodeValue",
        "",
        "",
        "",
        "",
        "Lcom/google/firebase/firestore/model/ResourcePath;",
        "date",
        "Ljava/util/Date;",
        "Lcom/google/firebase/Timestamp;",
        "TRUE_VALUE",
        "FALSE_VALUE",
        "geoPoint",
        "Lcom/google/firebase/firestore/GeoPoint;",
        "",
        "Lcom/google/firebase/firestore/Blob;",
        "docRef",
        "Lcom/google/firebase/firestore/DocumentReference;",
        "vector",
        "Lcom/google/firebase/firestore/VectorValue;",
        "encodeVectorValue",
        "",
        "map",
        "",
        "values",
        "",
        "encodeAnyValue",
        "seconds",
        "nanos",
        "getVectorValue",
        "validateRange",
        "nanoseconds",
        "Enterprise",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final FALSE_VALUE:Lcom/google/firestore/v1/Value;

.field public static final INSTANCE:Lcom/google/firebase/firestore/model/Values;

.field public static final MAX_VALUE:Lcom/google/firestore/v1/Value;

.field public static final MAX_VALUE_TYPE:Lcom/google/firestore/v1/Value;

.field private static final MIN_ARRAY:Lcom/google/firestore/v1/Value;

.field private static final MIN_BOOLEAN:Lcom/google/firestore/v1/Value;

.field private static final MIN_BYTES:Lcom/google/firestore/v1/Value;

.field private static final MIN_GEO_POINT:Lcom/google/firestore/v1/Value;

.field private static final MIN_MAP:Lcom/google/firestore/v1/Value;

.field private static final MIN_NUMBER:Lcom/google/firestore/v1/Value;

.field private static final MIN_REFERENCE:Lcom/google/firestore/v1/Value;

.field private static final MIN_STRING:Lcom/google/firestore/v1/Value;

.field private static final MIN_TIMESTAMP:Lcom/google/firestore/v1/Value;

.field public static final MIN_VALUE:Lcom/google/firestore/v1/Value;

.field private static final MIN_VECTOR_VALUE:Lcom/google/firestore/v1/Value;

.field public static final NAN_VALUE:Lcom/google/firestore/v1/Value;

.field public static final NULL_VALUE:Lcom/google/firestore/v1/Value;

.field public static final TRUE_VALUE:Lcom/google/firestore/v1/Value;

.field public static final TYPE_KEY:Ljava/lang/String; = "__type__"

.field public static final TYPE_ORDER_ARRAY:I = 0xf

.field public static final TYPE_ORDER_BLOB:I = 0x8

.field public static final TYPE_ORDER_BOOLEAN:I = 0x2

.field public static final TYPE_ORDER_GEOPOINT:I = 0xd

.field public static final TYPE_ORDER_MAP:I = 0x11

.field public static final TYPE_ORDER_MAX_VALUE:I = 0x7fffffff

.field public static final TYPE_ORDER_NULL:I = 0x0

.field public static final TYPE_ORDER_NUMBER:I = 0x4

.field public static final TYPE_ORDER_NUMBER_NAN:I = 0x3

.field public static final TYPE_ORDER_REFERENCE:I = 0xa

.field public static final TYPE_ORDER_SERVER_TIMESTAMP:I = 0x6

.field public static final TYPE_ORDER_STRING:I = 0x7

.field public static final TYPE_ORDER_TIMESTAMP:I = 0x5

.field public static final TYPE_ORDER_UNSET:I = 0x0

.field public static final TYPE_ORDER_VECTOR:I = 0x10

.field public static final VECTOR_MAP_VECTORS_KEY:Ljava/lang/String; = "value"

.field public static final VECTOR_VALUE_TYPE:Lcom/google/firestore/v1/Value;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/firebase/firestore/model/Values;

    invoke-direct {v0}, Lcom/google/firebase/firestore/model/Values;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->INSTANCE:Lcom/google/firebase/firestore/model/Values;

    .line 39
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v0, v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setDoubleValue(D)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v3, "build(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->NAN_VALUE:Lcom/google/firestore/v1/Value;

    .line 40
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    sget-object v4, Lcom/google/protobuf/NullValue;->NULL_VALUE:Lcom/google/protobuf/NullValue;

    invoke-virtual {v0, v4}, Lcom/google/firestore/v1/Value$Builder;->setNullValue(Lcom/google/protobuf/NullValue;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->NULL_VALUE:Lcom/google/firestore/v1/Value;

    .line 41
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->NULL_VALUE:Lcom/google/firestore/v1/Value;

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_VALUE:Lcom/google/firestore/v1/Value;

    .line 42
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    const-string v4, "__max__"

    invoke-virtual {v0, v4}, Lcom/google/firestore/v1/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->MAX_VALUE_TYPE:Lcom/google/firestore/v1/Value;

    .line 47
    nop

    .line 45
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/google/firestore/v1/MapValue;->newBuilder()Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v4

    sget-object v5, Lcom/google/firebase/firestore/model/Values;->MAX_VALUE_TYPE:Lcom/google/firestore/v1/Value;

    const-string v6, "__type__"

    invoke-virtual {v4, v6, v5}, Lcom/google/firestore/v1/MapValue$Builder;->putFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/firestore/v1/Value$Builder;->setMapValue(Lcom/google/firestore/v1/MapValue$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->MAX_VALUE:Lcom/google/firestore/v1/Value;

    .line 49
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    const-string v4, "__vector__"

    invoke-virtual {v0, v4}, Lcom/google/firestore/v1/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->VECTOR_VALUE_TYPE:Lcom/google/firestore/v1/Value;

    .line 61
    nop

    .line 52
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/google/firestore/v1/MapValue;->newBuilder()Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v4

    .line 55
    sget-object v5, Lcom/google/firebase/firestore/model/Values;->VECTOR_VALUE_TYPE:Lcom/google/firestore/v1/Value;

    invoke-virtual {v4, v6, v5}, Lcom/google/firestore/v1/MapValue$Builder;->putFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v4

    .line 57
    nop

    .line 58
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v5

    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->newBuilder()Lcom/google/firestore/v1/ArrayValue$Builder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/firestore/v1/Value$Builder;->setArrayValue(Lcom/google/firestore/v1/ArrayValue$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/firestore/v1/Value;

    .line 56
    const-string v6, "value"

    invoke-virtual {v4, v6, v5}, Lcom/google/firestore/v1/MapValue$Builder;->putFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v4

    .line 53
    invoke-virtual {v0, v4}, Lcom/google/firestore/v1/Value$Builder;->setMapValue(Lcom/google/firestore/v1/MapValue$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_VECTOR_VALUE:Lcom/google/firestore/v1/Value;

    .line 561
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/google/firestore/v1/Value$Builder;->setBooleanValue(Z)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_BOOLEAN:Lcom/google/firestore/v1/Value;

    .line 562
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setDoubleValue(D)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_NUMBER:Lcom/google/firestore/v1/Value;

    .line 564
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->newBuilder()Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v1

    const-wide/high16 v5, -0x8000000000000000L

    invoke-virtual {v1, v5, v6}, Lcom/google/protobuf/Timestamp$Builder;->setSeconds(J)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setTimestampValue(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_TIMESTAMP:Lcom/google/firestore/v1/Value;

    .line 565
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_STRING:Lcom/google/firestore/v1/Value;

    .line 566
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setBytesValue(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_BYTES:Lcom/google/firestore/v1/Value;

    .line 567
    sget-object v0, Lcom/google/firebase/firestore/model/DatabaseId;->EMPTY:Lcom/google/firebase/firestore/model/DatabaseId;

    const-string v1, "EMPTY"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->empty()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    const-string v2, "empty(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/model/Values;->refValue(Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_REFERENCE:Lcom/google/firestore/v1/Value;

    .line 571
    nop

    .line 569
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    .line 570
    invoke-static {}, Lcom/google/type/LatLng;->newBuilder()Lcom/google/type/LatLng$Builder;

    move-result-object v1

    const-wide v5, -0x3fa9800000000000L    # -90.0

    invoke-virtual {v1, v5, v6}, Lcom/google/type/LatLng$Builder;->setLatitude(D)Lcom/google/type/LatLng$Builder;

    move-result-object v1

    const-wide v5, -0x3f99800000000000L    # -180.0

    invoke-virtual {v1, v5, v6}, Lcom/google/type/LatLng$Builder;->setLongitude(D)Lcom/google/type/LatLng$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setGeoPointValue(Lcom/google/type/LatLng$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_GEO_POINT:Lcom/google/firestore/v1/Value;

    .line 573
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->getDefaultInstance()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setArrayValue(Lcom/google/firestore/v1/ArrayValue;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_ARRAY:Lcom/google/firestore/v1/Value;

    .line 574
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/firestore/v1/MapValue;->getDefaultInstance()Lcom/google/firestore/v1/MapValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setMapValue(Lcom/google/firestore/v1/MapValue;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_MAP:Lcom/google/firestore/v1/Value;

    .line 665
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setBooleanValue(Z)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->TRUE_VALUE:Lcom/google/firestore/v1/Value;

    .line 667
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/firestore/v1/Value$Builder;->setBooleanValue(Z)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->FALSE_VALUE:Lcom/google/firestore/v1/Value;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$compareInternal(Lcom/google/firebase/firestore/model/Values;ILcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I
    .locals 1
    .param p0, "$this"    # Lcom/google/firebase/firestore/model/Values;
    .param p1, "leftType"    # I
    .param p2, "left"    # Lcom/google/firestore/v1/Value;
    .param p3, "right"    # Lcom/google/firestore/v1/Value;

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/firestore/model/Values;->compareInternal(ILcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I

    move-result v0

    return v0
.end method

.method private final arrayEquals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z
    .locals 7
    .param p1, "left"    # Lcom/google/firestore/v1/Value;
    .param p2, "right"    # Lcom/google/firestore/v1/Value;

    .line 171
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v0

    .line 172
    .local v0, "leftArray":Lcom/google/firestore/v1/ArrayValue;
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v1

    .line 174
    .local v1, "rightArray":Lcom/google/firestore/v1/ArrayValue;
    invoke-virtual {v0}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 175
    return v4

    .line 178
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 179
    invoke-virtual {v0, v2}, Lcom/google/firestore/v1/ArrayValue;->getValues(I)Lcom/google/firestore/v1/Value;

    move-result-object v5

    invoke-virtual {v1, v2}, Lcom/google/firestore/v1/ArrayValue;->getValues(I)Lcom/google/firestore/v1/Value;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/firebase/firestore/model/Values;->equals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 180
    return v4

    .line 178
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public static final canonicalId(Lcom/google/firestore/v1/Value;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Lcom/google/firestore/v1/Value;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .local v0, "builder":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/google/firebase/firestore/model/Values;->INSTANCE:Lcom/google/firebase/firestore/model/Values;

    invoke-direct {v1, v0, p0}, Lcom/google/firebase/firestore/model/Values;->canonifyValue(Ljava/lang/StringBuilder;Lcom/google/firestore/v1/Value;)V

    .line 436
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private final canonifyArray(Ljava/lang/StringBuilder;Lcom/google/firestore/v1/ArrayValue;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "arrayValue"    # Lcom/google/firestore/v1/ArrayValue;

    .line 490
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {p2}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 492
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/firestore/v1/ArrayValue;->getValues(I)Lcom/google/firestore/v1/Value;

    move-result-object v0

    const-string v1, "getValues(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/model/Values;->canonifyValue(Ljava/lang/StringBuilder;Lcom/google/firestore/v1/Value;)V

    .line 493
    const/4 v0, 0x1

    .local v0, "i":I
    invoke-virtual {p2}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 494
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {p2, v0}, Lcom/google/firestore/v1/ArrayValue;->getValues(I)Lcom/google/firestore/v1/Value;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v3}, Lcom/google/firebase/firestore/model/Values;->canonifyValue(Ljava/lang/StringBuilder;Lcom/google/firestore/v1/Value;)V

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    .end local v0    # "i":I
    :cond_0
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    return-void
.end method

.method private final canonifyGeoPoint(Ljava/lang/StringBuilder;Lcom/google/type/LatLng;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "latLng"    # Lcom/google/type/LatLng;

    .line 461
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p2}, Lcom/google/type/LatLng;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/type/LatLng;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "geo(%s,%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    return-void
.end method

.method private final canonifyObject(Ljava/lang/StringBuilder;Lcom/google/firestore/v1/MapValue;)V
    .locals 5
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "mapValue"    # Lcom/google/firestore/v1/MapValue;

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 474
    .local v0, "keys":Ljava/util/ArrayList;
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    .line 476
    const-string v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    .local v1, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 479
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 480
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {p2, v2}, Lcom/google/firestore/v1/MapValue;->getFieldsOrThrow(Ljava/lang/String;)Lcom/google/firestore/v1/Value;

    move-result-object v3

    const-string v4, "getFieldsOrThrow(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v3}, Lcom/google/firebase/firestore/model/Values;->canonifyValue(Ljava/lang/StringBuilder;Lcom/google/firestore/v1/Value;)V

    .line 482
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 486
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    const-string v2, "}"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    return-void
.end method

.method private final canonifyReference(Ljava/lang/StringBuilder;Lcom/google/firestore/v1/Value;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 465
    invoke-static {p2}, Lcom/google/firebase/firestore/model/Values;->isReferenceValue(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Value should be a ReferenceValue"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 466
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getReferenceValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->fromName(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 467
    return-void
.end method

.method private final canonifyTimestamp(Ljava/lang/StringBuilder;Lcom/google/protobuf/Timestamp;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "timestamp"    # Lcom/google/protobuf/Timestamp;

    .line 457
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p2}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "time(%s,%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    return-void
.end method

.method private final canonifyValue(Ljava/lang/StringBuilder;Lcom/google/firestore/v1/Value;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 440
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/firebase/firestore/model/Values$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 451
    :pswitch_0
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    const-string v1, "getMapValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/model/Values;->canonifyObject(Ljava/lang/StringBuilder;Lcom/google/firestore/v1/MapValue;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 450
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v0

    const-string v1, "getArrayValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/model/Values;->canonifyArray(Ljava/lang/StringBuilder;Lcom/google/firestore/v1/ArrayValue;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 449
    :pswitch_2
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getGeoPointValue()Lcom/google/type/LatLng;

    move-result-object v0

    const-string v1, "getGeoPointValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/model/Values;->canonifyGeoPoint(Ljava/lang/StringBuilder;Lcom/google/type/LatLng;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 448
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/model/Values;->canonifyReference(Ljava/lang/StringBuilder;Lcom/google/firestore/v1/Value;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 447
    :pswitch_4
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getBytesValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/util/Util;->toDebugString(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 446
    :pswitch_5
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 445
    :pswitch_6
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getTimestampValue()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    const-string v1, "getTimestampValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/model/Values;->canonifyTimestamp(Ljava/lang/StringBuilder;Lcom/google/protobuf/Timestamp;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 444
    :pswitch_7
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 443
    :pswitch_8
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 442
    :pswitch_9
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getBooleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 441
    :pswitch_a
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final compare(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I
    .locals 5
    .param p0, "left"    # Lcom/google/firestore/v1/Value;
    .param p1, "right"    # Lcom/google/firestore/v1/Value;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 261
    invoke-static {p0}, Lcom/google/firebase/firestore/model/Values;->typeOrder(Lcom/google/firestore/v1/Value;)I

    move-result v0

    .line 262
    .local v0, "leftType":I
    invoke-static {p1}, Lcom/google/firebase/firestore/model/Values;->typeOrder(Lcom/google/firestore/v1/Value;)I

    move-result v1

    .line 264
    .local v1, "rightType":I
    if-eq v0, v1, :cond_0

    .line 265
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v2

    return v2

    .line 268
    :cond_0
    sget-object v2, Lcom/google/firebase/firestore/model/Values;->INSTANCE:Lcom/google/firebase/firestore/model/Values;

    if-nez p0, :cond_1

    sget-object v3, Lcom/google/firebase/firestore/model/Values;->NULL_VALUE:Lcom/google/firestore/v1/Value;

    goto :goto_0

    :cond_1
    move-object v3, p0

    :goto_0
    if-nez p1, :cond_2

    sget-object v4, Lcom/google/firebase/firestore/model/Values;->NULL_VALUE:Lcom/google/firestore/v1/Value;

    goto :goto_1

    :cond_2
    move-object v4, p1

    :goto_1
    invoke-direct {v2, v0, v3, v4}, Lcom/google/firebase/firestore/model/Values;->compareInternal(ILcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I

    move-result v2

    return v2
.end method

.method private final compareArrays(Lcom/google/firestore/v1/ArrayValue;Lcom/google/firestore/v1/ArrayValue;)I
    .locals 4
    .param p1, "left"    # Lcom/google/firestore/v1/ArrayValue;
    .param p2, "right"    # Lcom/google/firestore/v1/ArrayValue;

    .line 385
    invoke-virtual {p1}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p2}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 386
    .local v0, "minLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 387
    invoke-virtual {p1, v1}, Lcom/google/firestore/v1/ArrayValue;->getValues(I)Lcom/google/firestore/v1/Value;

    move-result-object v2

    invoke-virtual {p2, v1}, Lcom/google/firestore/v1/ArrayValue;->getValues(I)Lcom/google/firestore/v1/Value;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/firestore/model/Values;->compare(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I

    move-result v2

    .line 388
    .local v2, "cmp":I
    if-eqz v2, :cond_0

    .line 389
    return v2

    .line 386
    .end local v2    # "cmp":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    return v1
.end method

.method private final compareGeoPoints(Lcom/google/type/LatLng;Lcom/google/type/LatLng;)I
    .locals 5
    .param p1, "left"    # Lcom/google/type/LatLng;
    .param p2, "right"    # Lcom/google/type/LatLng;

    .line 377
    invoke-virtual {p1}, Lcom/google/type/LatLng;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/type/LatLng;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/cloud/datastore/core/number/NumberComparisonHelper;->firestoreCompareDoubles(DD)I

    move-result v0

    .line 378
    .local v0, "comparison":I
    if-nez v0, :cond_0

    .line 379
    invoke-virtual {p1}, Lcom/google/type/LatLng;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p2}, Lcom/google/type/LatLng;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/google/cloud/datastore/core/number/NumberComparisonHelper;->firestoreCompareDoubles(DD)I

    move-result v1

    return v1

    .line 381
    :cond_0
    return v0
.end method

.method private final compareInternal(ILcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I
    .locals 3
    .param p1, "leftType"    # I
    .param p2, "left"    # Lcom/google/firestore/v1/Value;
    .param p3, "right"    # Lcom/google/firestore/v1/Value;

    .line 272
    const/4 v0, 0x0

    const-string v1, "getMapValue(...)"

    sparse-switch p1, :sswitch_data_0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 289
    :sswitch_0
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/google/firebase/firestore/model/Values;->compareMaps(Lcom/google/firestore/v1/MapValue;Lcom/google/firestore/v1/MapValue;)I

    move-result v0

    goto/16 :goto_0

    .line 290
    :sswitch_1
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/google/firebase/firestore/model/Values;->compareVectors(Lcom/google/firestore/v1/MapValue;Lcom/google/firestore/v1/MapValue;)I

    move-result v0

    goto/16 :goto_0

    .line 288
    :sswitch_2
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v0

    const-string v1, "getArrayValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/google/firebase/firestore/model/Values;->compareArrays(Lcom/google/firestore/v1/ArrayValue;Lcom/google/firestore/v1/ArrayValue;)I

    move-result v0

    goto/16 :goto_0

    .line 287
    :sswitch_3
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getGeoPointValue()Lcom/google/type/LatLng;

    move-result-object v0

    const-string v1, "getGeoPointValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/google/firestore/v1/Value;->getGeoPointValue()Lcom/google/type/LatLng;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/google/firebase/firestore/model/Values;->compareGeoPoints(Lcom/google/type/LatLng;Lcom/google/type/LatLng;)I

    move-result v0

    goto :goto_0

    .line 286
    :sswitch_4
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getReferenceValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getReferenceValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/google/firestore/v1/Value;->getReferenceValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/google/firebase/firestore/model/Values;->compareReferences(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 285
    :sswitch_5
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getBytesValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/firestore/v1/Value;->getBytesValue()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Util;->compareByteStrings(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)I

    move-result v0

    goto :goto_0

    .line 284
    :sswitch_6
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Util;->compareUtf8Strings(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 280
    :sswitch_7
    nop

    .line 281
    invoke-static {p2}, Lcom/google/firebase/firestore/model/ServerTimestamps;->getLocalWriteTime(Lcom/google/firestore/v1/Value;)Lcom/google/protobuf/Timestamp;

    move-result-object v0

    const-string v1, "getLocalWriteTime(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-static {p3}, Lcom/google/firebase/firestore/model/ServerTimestamps;->getLocalWriteTime(Lcom/google/firestore/v1/Value;)Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0, v0, v2}, Lcom/google/firebase/firestore/model/Values;->compareTimestamps(Lcom/google/protobuf/Timestamp;Lcom/google/protobuf/Timestamp;)I

    move-result v0

    goto :goto_0

    .line 278
    :sswitch_8
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getTimestampValue()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    const-string v1, "getTimestampValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/google/firestore/v1/Value;->getTimestampValue()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/google/firebase/firestore/model/Values;->compareTimestamps(Lcom/google/protobuf/Timestamp;Lcom/google/protobuf/Timestamp;)I

    move-result v0

    goto :goto_0

    .line 277
    :sswitch_9
    invoke-direct {p0, p2, p3}, Lcom/google/firebase/firestore/model/Values;->compareNumbers(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I

    move-result v0

    goto :goto_0

    .line 276
    :sswitch_a
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getBooleanValue()Z

    move-result v0

    invoke-virtual {p3}, Lcom/google/firestore/v1/Value;->getBooleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    goto :goto_0

    .line 275
    :sswitch_b
    nop

    .line 292
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x2 -> :sswitch_a
        0x3 -> :sswitch_b
        0x4 -> :sswitch_9
        0x5 -> :sswitch_8
        0x6 -> :sswitch_7
        0x7 -> :sswitch_6
        0x8 -> :sswitch_5
        0xa -> :sswitch_4
        0xd -> :sswitch_3
        0xf -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
        0x7fffffff -> :sswitch_b
    .end sparse-switch
.end method

.method private final compareMaps(Lcom/google/firestore/v1/MapValue;Lcom/google/firestore/v1/MapValue;)I
    .locals 7
    .param p1, "left"    # Lcom/google/firestore/v1/MapValue;
    .param p2, "right"    # Lcom/google/firestore/v1/MapValue;

    .line 396
    new-instance v0, Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 397
    .local v0, "iterator1":Ljava/util/Iterator;
    new-instance v1, Ljava/util/TreeMap;

    invoke-virtual {p2}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 398
    .local v1, "iterator2":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 400
    .local v2, "entry1":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 401
    .local v3, "entry2":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/firebase/firestore/util/Util;->compareUtf8Strings(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 402
    .local v4, "keyCompare":I
    if-eqz v4, :cond_1

    .line 403
    return v4

    .line 405
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firestore/v1/Value;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firestore/v1/Value;

    invoke-static {v5, v6}, Lcom/google/firebase/firestore/model/Values;->compare(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I

    move-result v5

    .line 406
    .local v5, "valueCompare":I
    if-eqz v5, :cond_0

    .line 407
    return v5

    .line 412
    .end local v2    # "entry1":Ljava/util/Map$Entry;
    .end local v3    # "entry2":Ljava/util/Map$Entry;
    .end local v4    # "keyCompare":I
    .end local v5    # "valueCompare":I
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v2

    return v2
.end method

.method private final compareNumbers(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I
    .locals 4
    .param p1, "left"    # Lcom/google/firestore/v1/Value;
    .param p2, "right"    # Lcom/google/firestore/v1/Value;

    .line 337
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->hasDoubleValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->hasDoubleValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/cloud/datastore/core/number/NumberComparisonHelper;->firestoreCompareDoubles(DD)I

    move-result v0

    return v0

    .line 340
    :cond_0
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->hasIntegerValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/cloud/datastore/core/number/NumberComparisonHelper;->firestoreCompareDoubleWithLong(DJ)I

    move-result v0

    return v0

    .line 343
    :cond_1
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->hasIntegerValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->hasIntegerValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0

    .line 346
    :cond_2
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->hasDoubleValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/cloud/datastore/core/number/NumberComparisonHelper;->firestoreCompareDoubleWithLong(DJ)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0

    .line 351
    :cond_3
    const-string v0, "Unexpected values: %s vs %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method private final compareReferences(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "leftPath"    # Ljava/lang/String;
    .param p2, "rightPath"    # Ljava/lang/String;

    .line 363
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "/"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 776
    .local v1, "$i$f$toTypedArray":I
    move-object v4, v0

    .line 777
    .local v4, "thisCollection$iv":Ljava/util/Collection;
    new-array v5, v3, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 363
    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v4    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v0, [Ljava/lang/String;

    .line 364
    .local v0, "leftSegments":[Ljava/lang/String;
    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v4, Lkotlin/text/Regex;

    invoke-direct {v4, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .local v1, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 778
    .local v2, "$i$f$toTypedArray":I
    move-object v4, v1

    .line 779
    .restart local v4    # "thisCollection$iv":Ljava/util/Collection;
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 364
    .end local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v2    # "$i$f$toTypedArray":I
    .end local v4    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v1, [Ljava/lang/String;

    .line 366
    .local v1, "rightSegments":[Ljava/lang/String;
    array-length v2, v0

    int-to-double v2, v2

    array-length v4, v1

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    .line 367
    .local v2, "minLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 368
    aget-object v4, v0, v3

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 369
    .local v4, "cmp":I
    if-eqz v4, :cond_0

    .line 370
    return v4

    .line 367
    .end local v4    # "cmp":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 373
    .end local v3    # "i":I
    :cond_1
    array-length v3, v0

    array-length v4, v1

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    return v3
.end method

.method private final compareTimestamps(Lcom/google/protobuf/Timestamp;Lcom/google/protobuf/Timestamp;)I
    .locals 4
    .param p1, "left"    # Lcom/google/protobuf/Timestamp;
    .param p2, "right"    # Lcom/google/protobuf/Timestamp;

    .line 355
    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result v0

    .line 356
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    .line 357
    return v0

    .line 359
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    return v1
.end method

.method private final compareVectors(Lcom/google/firestore/v1/MapValue;Lcom/google/firestore/v1/MapValue;)I
    .locals 6
    .param p1, "left"    # Lcom/google/firestore/v1/MapValue;
    .param p2, "right"    # Lcom/google/firestore/v1/MapValue;

    .line 416
    invoke-virtual {p1}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    .line 417
    .local v0, "leftMap":Ljava/util/Map;
    invoke-virtual {p2}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    .line 420
    .local v1, "rightMap":Ljava/util/Map;
    const-string v2, "value"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/google/firestore/v1/Value;

    invoke-virtual {v3}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v3

    .line 421
    .local v3, "leftArrayValue":Lcom/google/firestore/v1/ArrayValue;
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/google/firestore/v1/Value;

    invoke-virtual {v2}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v2

    .line 423
    .local v2, "rightArrayValue":Lcom/google/firestore/v1/ArrayValue;
    invoke-virtual {v3}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    .line 424
    .local v4, "lengthCompare":I
    if-eqz v4, :cond_0

    .line 425
    return v4

    .line 428
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v3, v2}, Lcom/google/firebase/firestore/model/Values;->compareArrays(Lcom/google/firestore/v1/ArrayValue;Lcom/google/firestore/v1/ArrayValue;)I

    move-result v5

    return v5
.end method

.method public static final contains(Lcom/google/firestore/v1/ArrayValueOrBuilder;Lcom/google/firestore/v1/Value;)Z
    .locals 3
    .param p0, "haystack"    # Lcom/google/firestore/v1/ArrayValueOrBuilder;
    .param p1, "needle"    # Lcom/google/firestore/v1/Value;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "haystack"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-interface {p0}, Lcom/google/firestore/v1/ArrayValueOrBuilder;->getValuesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    .line 252
    .local v1, "haystackElement":Lcom/google/firestore/v1/Value;
    invoke-static {v1, p1}, Lcom/google/firebase/firestore/model/Values;->equals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    const/4 v0, 0x1

    return v0

    .line 256
    .end local v1    # "haystackElement":Lcom/google/firestore/v1/Value;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static final encodeAnyValue(Ljava/lang/Object;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 718
    nop

    .line 719
    if-nez p0, :cond_0

    sget-object v0, Lcom/google/firebase/firestore/model/Values;->NULL_VALUE:Lcom/google/firestore/v1/Value;

    goto :goto_0

    .line 720
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    goto :goto_0

    .line 721
    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Ljava/lang/Number;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    goto :goto_0

    .line 722
    :cond_2
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Ljava/util/Date;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Ljava/util/Date;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    goto :goto_0

    .line 723
    :cond_3
    instance-of v0, p0, Lcom/google/firebase/Timestamp;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/Timestamp;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Lcom/google/firebase/Timestamp;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    goto :goto_0

    .line 724
    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Z)Lcom/google/firestore/v1/Value;

    move-result-object v0

    goto :goto_0

    .line 725
    :cond_5
    instance-of v0, p0, Lcom/google/firebase/firestore/GeoPoint;

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/GeoPoint;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Lcom/google/firebase/firestore/GeoPoint;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    goto :goto_0

    .line 726
    :cond_6
    instance-of v0, p0, Lcom/google/firebase/firestore/Blob;

    if-eqz v0, :cond_7

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/Blob;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Lcom/google/firebase/firestore/Blob;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    goto :goto_0

    .line 727
    :cond_7
    instance-of v0, p0, Lcom/google/firebase/firestore/VectorValue;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/VectorValue;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    .line 729
    :goto_0
    return-object v0

    .line 728
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final encodeValue(D)Lcom/google/firestore/v1/Value;
    .locals 2
    .param p0, "value"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 634
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/firestore/v1/Value$Builder;->setDoubleValue(D)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static final encodeValue(F)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p0, "value"    # F
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 637
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setDoubleValue(D)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static final encodeValue(I)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p0, "value"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 631
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setIntegerValue(J)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static final encodeValue(J)Lcom/google/firestore/v1/Value;
    .locals 2
    .param p0, "value"    # J
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 628
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/firestore/v1/Value$Builder;->setIntegerValue(J)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static final encodeValue(Lcom/google/firebase/Timestamp;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p0, "timestamp"    # Lcom/google/firebase/Timestamp;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "timestamp"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/model/Values;->timestamp(JI)Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeValue(Lcom/google/firebase/firestore/Blob;)Lcom/google/firestore/v1/Value;
    .locals 2
    .param p0, "value"    # Lcom/google/firebase/firestore/Blob;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/Blob;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setBytesValue(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static final encodeValue(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firestore/v1/Value;
    .locals 2
    .param p0, "docRef"    # Lcom/google/firebase/firestore/DocumentReference;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "docRef"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/DocumentReference;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setReferenceValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static final encodeValue(Lcom/google/firebase/firestore/GeoPoint;)Lcom/google/firestore/v1/Value;
    .locals 4
    .param p0, "geoPoint"    # Lcom/google/firebase/firestore/GeoPoint;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "geoPoint"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 673
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    .line 675
    invoke-static {}, Lcom/google/type/LatLng;->newBuilder()Lcom/google/type/LatLng$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/firestore/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/type/LatLng$Builder;->setLatitude(D)Lcom/google/type/LatLng$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/firestore/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/type/LatLng$Builder;->setLongitude(D)Lcom/google/type/LatLng$Builder;

    move-result-object v1

    .line 674
    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setGeoPointValue(Lcom/google/type/LatLng$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    .line 677
    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static final encodeValue(Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firestore/v1/Value;
    .locals 2
    .param p0, "vector"    # Lcom/google/firebase/firestore/VectorValue;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "vector"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0}, Lcom/google/firebase/firestore/VectorValue;->toArray()[D

    move-result-object v0

    const-string v1, "toArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->encodeVectorValue([D)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeValue(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p0, "value"    # Lcom/google/firebase/firestore/model/ResourcePath;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/ResourcePath;->canonicalString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setReferenceValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static final encodeValue(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Value;
    .locals 2
    .param p0, "value"    # Lcom/google/protobuf/Timestamp;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/Value$Builder;->setTimestampValue(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static final encodeValue(Ljava/lang/Iterable;)Lcom/google/firestore/v1/Value;
    .locals 2
    .param p0, "values"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/Value;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 714
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->newBuilder()Lcom/google/firestore/v1/ArrayValue$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/firestore/v1/ArrayValue$Builder;->addAllValues(Ljava/lang/Iterable;)Lcom/google/firestore/v1/ArrayValue$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setArrayValue(Lcom/google/firestore/v1/ArrayValue$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static final encodeValue(Ljava/lang/Number;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p0, "value"    # Ljava/lang/Number;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    nop

    .line 642
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/model/Values;->encodeValue(J)Lcom/google/firestore/v1/Value;

    move-result-object v0

    goto :goto_0

    .line 643
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->encodeValue(I)Lcom/google/firestore/v1/Value;

    move-result-object v0

    goto :goto_0

    .line 644
    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/model/Values;->encodeValue(D)Lcom/google/firestore/v1/Value;

    move-result-object v0

    goto :goto_0

    .line 645
    :cond_2
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->encodeValue(F)Lcom/google/firestore/v1/Value;

    move-result-object v0

    .line 647
    :goto_0
    return-object v0

    .line 646
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected number type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final encodeValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static final encodeValue(Ljava/util/Date;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "date"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 656
    new-instance v0, Lcom/google/firebase/Timestamp;

    invoke-direct {v0, p0}, Lcom/google/firebase/Timestamp;-><init>(Ljava/util/Date;)V

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Lcom/google/firebase/Timestamp;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeValue(Ljava/util/Map;)Lcom/google/firestore/v1/Value;
    .locals 2
    .param p0, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/Value;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "map"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/firestore/v1/MapValue;->newBuilder()Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/firestore/v1/MapValue$Builder;->putAllFields(Ljava/util/Map;)Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setMapValue(Lcom/google/firestore/v1/MapValue$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static final encodeValue(Z)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p0, "value"    # Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 669
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/firebase/firestore/model/Values;->TRUE_VALUE:Lcom/google/firestore/v1/Value;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->FALSE_VALUE:Lcom/google/firestore/v1/Value;

    :goto_0
    return-object v0
.end method

.method public static final encodeValue([B)Lcom/google/firestore/v1/Value;
    .locals 2
    .param p0, "value"    # [B
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setBytesValue(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static final encodeVectorValue([D)Lcom/google/firestore/v1/Value;
    .locals 6
    .param p0, "vector"    # [D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "vector"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->newBuilder()Lcom/google/firestore/v1/ArrayValue$Builder;

    move-result-object v0

    .line 696
    .local v0, "listBuilder":Lcom/google/firestore/v1/ArrayValue$Builder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p0, v2

    .line 697
    .local v3, "value":D
    invoke-static {v3, v4}, Lcom/google/firebase/firestore/model/Values;->encodeValue(D)Lcom/google/firestore/v1/Value;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/firestore/v1/ArrayValue$Builder;->addValues(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/ArrayValue$Builder;

    .line 696
    .end local v3    # "value":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 699
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    .line 701
    invoke-static {}, Lcom/google/firestore/v1/MapValue;->newBuilder()Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v2

    .line 702
    const-string v3, "__type__"

    sget-object v4, Lcom/google/firebase/firestore/model/Values;->VECTOR_VALUE_TYPE:Lcom/google/firestore/v1/Value;

    invoke-virtual {v2, v3, v4}, Lcom/google/firestore/v1/MapValue$Builder;->putFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v2

    .line 703
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/firestore/v1/Value$Builder;->setArrayValue(Lcom/google/firestore/v1/ArrayValue$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/firestore/v1/Value;

    const-string v4, "value"

    invoke-virtual {v2, v4, v3}, Lcom/google/firestore/v1/MapValue$Builder;->putFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v2

    .line 700
    invoke-virtual {v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setMapValue(Lcom/google/firestore/v1/MapValue$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    .line 705
    invoke-virtual {v1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/firestore/v1/Value;

    .line 699
    return-object v1
.end method

.method public static final equals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z
    .locals 4
    .param p0, "left"    # Lcom/google/firestore/v1/Value;
    .param p1, "right"    # Lcom/google/firestore/v1/Value;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 123
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 124
    return v0

    .line 127
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 131
    :cond_1
    invoke-static {p0}, Lcom/google/firebase/firestore/model/Values;->typeOrder(Lcom/google/firestore/v1/Value;)I

    move-result v2

    .line 132
    .local v2, "leftType":I
    invoke-static {p1}, Lcom/google/firebase/firestore/model/Values;->typeOrder(Lcom/google/firestore/v1/Value;)I

    move-result v3

    .line 133
    .local v3, "rightType":I
    if-eq v2, v3, :cond_2

    .line 134
    return v1

    .line 137
    :cond_2
    sparse-switch v2, :sswitch_data_0

    .line 146
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 145
    :sswitch_0
    goto :goto_0

    .line 142
    :sswitch_1
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->INSTANCE:Lcom/google/firebase/firestore/model/Values;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/model/Values;->objectEquals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z

    move-result v0

    goto :goto_0

    .line 140
    :sswitch_2
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->INSTANCE:Lcom/google/firebase/firestore/model/Values;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/model/Values;->arrayEquals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z

    move-result v0

    goto :goto_0

    .line 144
    :sswitch_3
    invoke-static {p0}, Lcom/google/firebase/firestore/model/ServerTimestamps;->getLocalWriteTime(Lcom/google/firestore/v1/Value;)Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-static {p1}, Lcom/google/firebase/firestore/model/ServerTimestamps;->getLocalWriteTime(Lcom/google/firestore/v1/Value;)Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 139
    :sswitch_4
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->INSTANCE:Lcom/google/firebase/firestore/model/Values;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/model/Values;->numberEquals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z

    move-result v0

    .line 137
    :goto_0
    return v0

    .line 128
    .end local v2    # "leftType":I
    .end local v3    # "rightType":I
    :cond_3
    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x6 -> :sswitch_3
        0xf -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
        0x7fffffff -> :sswitch_0
    .end sparse-switch
.end method

.method public static final getLowerBound(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p0, "value"    # Lcom/google/firestore/v1/Value;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/firebase/firestore/model/Values$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown value type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :pswitch_0
    invoke-static {p0}, Lcom/google/firebase/firestore/model/Values;->isVectorValue(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_VECTOR_VALUE:Lcom/google/firestore/v1/Value;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_MAP:Lcom/google/firestore/v1/Value;

    goto :goto_1

    .line 589
    :pswitch_1
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_ARRAY:Lcom/google/firestore/v1/Value;

    goto :goto_1

    .line 588
    :pswitch_2
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_GEO_POINT:Lcom/google/firestore/v1/Value;

    goto :goto_1

    .line 587
    :pswitch_3
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_REFERENCE:Lcom/google/firestore/v1/Value;

    goto :goto_1

    .line 586
    :pswitch_4
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_BYTES:Lcom/google/firestore/v1/Value;

    goto :goto_1

    .line 585
    :pswitch_5
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_STRING:Lcom/google/firestore/v1/Value;

    goto :goto_1

    .line 584
    :pswitch_6
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_TIMESTAMP:Lcom/google/firestore/v1/Value;

    goto :goto_1

    .line 583
    :pswitch_7
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_NUMBER:Lcom/google/firestore/v1/Value;

    goto :goto_1

    .line 581
    :pswitch_8
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_BOOLEAN:Lcom/google/firestore/v1/Value;

    goto :goto_1

    .line 580
    :pswitch_9
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->NULL_VALUE:Lcom/google/firestore/v1/Value;

    .line 579
    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getUpperBound(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p0, "value"    # Lcom/google/firestore/v1/Value;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/firebase/firestore/model/Values$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 612
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown value type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :pswitch_0
    invoke-static {p0}, Lcom/google/firebase/firestore/model/Values;->isVectorValue(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_MAP:Lcom/google/firestore/v1/Value;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MAX_VALUE:Lcom/google/firestore/v1/Value;

    goto :goto_1

    .line 609
    :pswitch_1
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_VECTOR_VALUE:Lcom/google/firestore/v1/Value;

    goto :goto_1

    .line 608
    :pswitch_2
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_ARRAY:Lcom/google/firestore/v1/Value;

    goto :goto_1

    .line 607
    :pswitch_3
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_GEO_POINT:Lcom/google/firestore/v1/Value;

    goto :goto_1

    .line 606
    :pswitch_4
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_REFERENCE:Lcom/google/firestore/v1/Value;

    goto :goto_1

    .line 605
    :pswitch_5
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_BYTES:Lcom/google/firestore/v1/Value;

    goto :goto_1

    .line 604
    :pswitch_6
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_STRING:Lcom/google/firestore/v1/Value;

    goto :goto_1

    .line 603
    :pswitch_7
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_TIMESTAMP:Lcom/google/firestore/v1/Value;

    goto :goto_1

    .line 601
    :pswitch_8
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_NUMBER:Lcom/google/firestore/v1/Value;

    goto :goto_1

    .line 600
    :pswitch_9
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_BOOLEAN:Lcom/google/firestore/v1/Value;

    .line 599
    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getVectorValue(Lcom/google/firestore/v1/Value;)[D
    .locals 9
    .param p0, "value"    # Lcom/google/firestore/v1/Value;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 744
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    sget-object v2, Lcom/google/firestore/v1/Value$ValueTypeCase;->MAP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v1, v2, :cond_4

    invoke-static {p0}, Lcom/google/firebase/firestore/model/Values;->isVectorValue(Lcom/google/firestore/v1/Value;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    .line 749
    :cond_1
    nop

    .line 752
    nop

    .line 751
    nop

    .line 750
    nop

    .line 748
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "value"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    .line 749
    if-eqz v1, :cond_3

    .line 748
    nop

    .line 749
    invoke-virtual {v1}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v1

    .line 750
    if-eqz v1, :cond_3

    .line 748
    nop

    .line 750
    invoke-virtual {v1}, Lcom/google/firestore/v1/ArrayValue;->getValuesList()Ljava/util/List;

    move-result-object v1

    .line 751
    if-eqz v1, :cond_3

    .line 748
    check-cast v1, Ljava/lang/Iterable;

    .line 751
    nop

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v0, 0x0

    .line 780
    .local v0, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v1

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 781
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 782
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/google/firestore/v1/Value;

    .local v7, "it":Lcom/google/firestore/v1/Value;
    const/4 v8, 0x0

    .line 751
    .local v8, "$i$a$-map-Values$getVectorValue$1":I
    invoke-virtual {v7}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v7

    .end local v7    # "it":Lcom/google/firestore/v1/Value;
    .end local v8    # "$i$a$-map-Values$getVectorValue$1":I
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 782
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 783
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 780
    nop

    .line 751
    .end local v0    # "$i$f$map":I
    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    nop

    .line 752
    nop

    .line 748
    check-cast v2, Ljava/util/Collection;

    .line 752
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toDoubleArray(Ljava/util/Collection;)[D

    move-result-object v0

    goto :goto_2

    .line 749
    :cond_3
    nop

    .line 748
    :goto_2
    return-object v0

    .line 745
    :cond_4
    :goto_3
    return-object v0
.end method

.method public static final isArray(Lcom/google/firestore/v1/Value;)Z
    .locals 1
    .param p0, "value"    # Lcom/google/firestore/v1/Value;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 522
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->hasArrayValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isDouble(Lcom/google/firestore/v1/Value;)Z
    .locals 1
    .param p0, "value"    # Lcom/google/firestore/v1/Value;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 510
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->hasDoubleValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isInteger(Lcom/google/firestore/v1/Value;)Z
    .locals 1
    .param p0, "value"    # Lcom/google/firestore/v1/Value;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 504
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->hasIntegerValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isMapValue(Lcom/google/firestore/v1/Value;)Z
    .locals 1
    .param p0, "value"    # Lcom/google/firestore/v1/Value;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 542
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->hasMapValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isMaxValue(Lcom/google/firestore/v1/Value;)Z
    .locals 3
    .param p0, "value"    # Lcom/google/firestore/v1/Value;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MAX_VALUE_TYPE:Lcom/google/firestore/v1/Value;

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "__type__"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final isNanValue(Lcom/google/firestore/v1/Value;)Z
    .locals 2
    .param p0, "value"    # Lcom/google/firestore/v1/Value;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 537
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isNullValue(Lcom/google/firestore/v1/Value;)Z
    .locals 1
    .param p0, "value"    # Lcom/google/firestore/v1/Value;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 532
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->hasNullValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isNumber(Lcom/google/firestore/v1/Value;)Z
    .locals 1
    .param p0, "value"    # Lcom/google/firestore/v1/Value;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 516
    invoke-static {p0}, Lcom/google/firebase/firestore/model/Values;->isInteger(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/firebase/firestore/model/Values;->isDouble(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final isReferenceValue(Lcom/google/firestore/v1/Value;)Z
    .locals 1
    .param p0, "value"    # Lcom/google/firestore/v1/Value;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 527
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->hasReferenceValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isVectorValue(Lcom/google/firestore/v1/Value;)Z
    .locals 3
    .param p0, "value"    # Lcom/google/firestore/v1/Value;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->VECTOR_VALUE_TYPE:Lcom/google/firestore/v1/Value;

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "__type__"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final lowerBoundCompare(Lcom/google/firestore/v1/Value;ZLcom/google/firestore/v1/Value;Z)I
    .locals 2
    .param p0, "left"    # Lcom/google/firestore/v1/Value;
    .param p1, "leftInclusive"    # Z
    .param p2, "right"    # Lcom/google/firestore/v1/Value;
    .param p3, "rightInclusive"    # Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "left"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "right"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-static {p0, p2}, Lcom/google/firebase/firestore/model/Values;->compare(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I

    move-result v0

    .line 302
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    .line 303
    return v0

    .line 306
    :cond_0
    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    .line 307
    const/4 v1, -0x1

    return v1

    .line 308
    :cond_1
    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    .line 309
    const/4 v1, 0x1

    return v1

    .line 312
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private final numberEquals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z
    .locals 6
    .param p1, "left"    # Lcom/google/firestore/v1/Value;
    .param p2, "right"    # Lcom/google/firestore/v1/Value;

    .line 151
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/firebase/firestore/model/Values$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 167
    move v2, v3

    goto/16 :goto_3

    .line 160
    :pswitch_0
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/google/firebase/firestore/model/Values$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v0

    aget v1, v1, v0

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 165
    move v2, v3

    goto :goto_3

    .line 164
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/google/cloud/datastore/core/number/NumberComparisonHelper;->firestoreCompareDoubles(DD)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    move v2, v3

    goto :goto_3

    .line 162
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/google/cloud/datastore/core/number/NumberComparisonHelper;->firestoreCompareDoubleWithLong(DJ)I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    goto :goto_3

    .line 153
    :pswitch_3
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/google/firebase/firestore/model/Values$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v0

    aget v1, v1, v0

    :goto_2
    packed-switch v1, :pswitch_data_2

    .line 157
    move v2, v3

    goto :goto_3

    .line 156
    :pswitch_4
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/google/cloud/datastore/core/number/NumberComparisonHelper;->firestoreCompareDoubleWithLong(DJ)I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    goto :goto_3

    .line 154
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    .line 168
    :goto_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private final objectEquals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z
    .locals 8
    .param p1, "left"    # Lcom/google/firestore/v1/Value;
    .param p2, "right"    # Lcom/google/firestore/v1/Value;

    .line 188
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    .line 189
    .local v0, "leftMap":Lcom/google/firestore/v1/MapValue;
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v1

    .line 191
    .local v1, "rightMap":Lcom/google/firestore/v1/MapValue;
    invoke-virtual {v0}, Lcom/google/firestore/v1/MapValue;->getFieldsCount()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/firestore/v1/MapValue;->getFieldsCount()I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 192
    return v4

    .line 195
    :cond_0
    invoke-virtual {v0}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "getFieldsMap(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firestore/v1/Value;

    .line 196
    .local v3, "value":Lcom/google/firestore/v1/Value;
    invoke-virtual {v1}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firestore/v1/Value;

    if-nez v6, :cond_2

    return v4

    .line 197
    .local v6, "otherEntry":Lcom/google/firestore/v1/Value;
    :cond_2
    invoke-static {v3, v6}, Lcom/google/firebase/firestore/model/Values;->equals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 198
    return v4

    .line 202
    .end local v3    # "value":Lcom/google/firestore/v1/Value;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "otherEntry":Lcom/google/firestore/v1/Value;
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method public static final refValue(Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firestore/v1/Value;
    .locals 4
    .param p0, "databaseId"    # Lcom/google/firebase/firestore/model/DatabaseId;
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "databaseId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    .line 550
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 551
    nop

    .line 552
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/DatabaseId;->getProjectId()Ljava/lang/String;

    move-result-object v1

    .line 553
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/DatabaseId;->getDatabaseId()Ljava/lang/String;

    move-result-object v2

    .line 552
    nop

    .line 554
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentKey;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 552
    nop

    .line 550
    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "projects/%s/databases/%s/documents/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setReferenceValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    .line 547
    nop

    .line 558
    .local v0, "value":Lcom/google/firestore/v1/Value;
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final timestamp(JI)Lcom/google/protobuf/Timestamp;
    .locals 3
    .param p0, "seconds"    # J
    .param p2, "nanos"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 733
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->INSTANCE:Lcom/google/firebase/firestore/model/Values;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/firestore/model/Values;->validateRange(JI)V

    .line 738
    div-int/lit16 v0, p2, 0x3e8

    mul-int/lit16 v0, v0, 0x3e8

    .line 739
    .local v0, "truncatedNanoseconds":I
    invoke-static {}, Lcom/google/protobuf/Timestamp;->newBuilder()Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/google/protobuf/Timestamp$Builder;->setSeconds(J)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/protobuf/Timestamp$Builder;->setNanos(I)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/protobuf/Timestamp;

    return-object v1
.end method

.method public static final typeOrder(Lcom/google/firestore/v1/Value;)I
    .locals 4
    .param p0, "value"    # Lcom/google/firestore/v1/Value;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 89
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/google/firebase/firestore/model/Values$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_1
    const/4 v1, 0x4

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 117
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 108
    :pswitch_1
    invoke-static {p0}, Lcom/google/firebase/firestore/model/ServerTimestamps;->isServerTimestamp(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    const/4 v1, 0x6

    goto :goto_2

    .line 110
    :cond_2
    invoke-static {p0}, Lcom/google/firebase/firestore/model/Values;->isMaxValue(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    const v1, 0x7fffffff

    goto :goto_2

    .line 112
    :cond_3
    invoke-static {p0}, Lcom/google/firebase/firestore/model/Values;->isVectorValue(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    const/16 v1, 0x10

    goto :goto_2

    .line 115
    :cond_4
    const/16 v1, 0x11

    goto :goto_2

    .line 106
    :pswitch_2
    const/16 v1, 0xf

    goto :goto_2

    .line 105
    :pswitch_3
    const/16 v1, 0xd

    goto :goto_2

    .line 104
    :pswitch_4
    const/16 v1, 0xa

    goto :goto_2

    .line 103
    :pswitch_5
    const/16 v1, 0x8

    goto :goto_2

    .line 102
    :pswitch_6
    const/4 v1, 0x7

    goto :goto_2

    .line 101
    :pswitch_7
    const/4 v1, 0x5

    goto :goto_2

    .line 95
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 96
    const/4 v1, 0x3

    goto :goto_2

    .line 98
    :cond_5
    goto :goto_2

    .line 93
    :pswitch_9
    goto :goto_2

    .line 92
    :pswitch_a
    const/4 v1, 0x2

    goto :goto_2

    .line 91
    :pswitch_b
    move v1, v2

    goto :goto_2

    .line 90
    :pswitch_c
    move v1, v2

    .line 89
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final upperBoundCompare(Lcom/google/firestore/v1/Value;ZLcom/google/firestore/v1/Value;Z)I
    .locals 2
    .param p0, "left"    # Lcom/google/firestore/v1/Value;
    .param p1, "leftInclusive"    # Z
    .param p2, "right"    # Lcom/google/firestore/v1/Value;
    .param p3, "rightInclusive"    # Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "left"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "right"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-static {p0, p2}, Lcom/google/firebase/firestore/model/Values;->compare(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I

    move-result v0

    .line 323
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    .line 324
    return v0

    .line 327
    :cond_0
    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    .line 328
    const/4 v1, 0x1

    return v1

    .line 329
    :cond_1
    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    .line 330
    const/4 v1, -0x1

    return v1

    .line 333
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private final validateRange(JI)V
    .locals 4
    .param p1, "seconds"    # J
    .param p3, "nanoseconds"    # I

    .line 766
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p3, :cond_0

    const v2, 0x3b9aca00

    if-ge p3, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 770
    const-wide v2, -0xe7791f700L

    cmp-long v2, v2, p1

    if-gtz v2, :cond_1

    const-wide v2, 0x3afff44180L

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 773
    return-void

    .line 770
    :cond_2
    const/4 v0, 0x0

    .line 771
    .local v0, "$i$a$-require-Values$validateRange$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timestamp seconds out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 770
    .end local v0    # "$i$a$-require-Values$validateRange$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 766
    :cond_3
    const/4 v0, 0x0

    .line 767
    .local v0, "$i$a$-require-Values$validateRange$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timestamp nanoseconds out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 766
    .end local v0    # "$i$a$-require-Values$validateRange$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.class public final Lcom/google/type/PostalAddress;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PostalAddress.java"

# interfaces
.implements Lcom/google/type/PostalAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/type/PostalAddress$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/type/PostalAddress;",
        "Lcom/google/type/PostalAddress$Builder;",
        ">;",
        "Lcom/google/type/PostalAddressOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADDRESS_LINES_FIELD_NUMBER:I = 0x9

.field public static final ADMINISTRATIVE_AREA_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

.field public static final LANGUAGE_CODE_FIELD_NUMBER:I = 0x3

.field public static final LOCALITY_FIELD_NUMBER:I = 0x7

.field public static final ORGANIZATION_FIELD_NUMBER:I = 0xb

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/PostalAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSTAL_CODE_FIELD_NUMBER:I = 0x4

.field public static final RECIPIENTS_FIELD_NUMBER:I = 0xa

.field public static final REGION_CODE_FIELD_NUMBER:I = 0x2

.field public static final REVISION_FIELD_NUMBER:I = 0x1

.field public static final SORTING_CODE_FIELD_NUMBER:I = 0x5

.field public static final SUBLOCALITY_FIELD_NUMBER:I = 0x8


# instance fields
.field private addressLines_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private administrativeArea_:Ljava/lang/String;

.field private languageCode_:Ljava/lang/String;

.field private locality_:Ljava/lang/String;

.field private organization_:Ljava/lang/String;

.field private postalCode_:Ljava/lang/String;

.field private recipients_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private regionCode_:Ljava/lang/String;

.field private revision_:I

.field private sortingCode_:Ljava/lang/String;

.field private sublocality_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2663
    new-instance v0, Lcom/google/type/PostalAddress;

    invoke-direct {v0}, Lcom/google/type/PostalAddress;-><init>()V

    .line 2666
    .local v0, "defaultInstance":Lcom/google/type/PostalAddress;
    sput-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    .line 2667
    const-class v1, Lcom/google/type/PostalAddress;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2669
    .end local v0    # "defaultInstance":Lcom/google/type/PostalAddress;
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/google/type/PostalAddress;->regionCode_:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/google/type/PostalAddress;->languageCode_:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/google/type/PostalAddress;->postalCode_:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/google/type/PostalAddress;->sortingCode_:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/google/type/PostalAddress;->administrativeArea_:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/google/type/PostalAddress;->locality_:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/google/type/PostalAddress;->sublocality_:Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 44
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 45
    iput-object v0, p0, Lcom/google/type/PostalAddress;->organization_:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic access$000()Lcom/google/type/PostalAddress;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/type/PostalAddress;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # I

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->setRevision(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/type/PostalAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;

    .line 30
    invoke-direct {p0}, Lcom/google/type/PostalAddress;->clearPostalCode()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->setPostalCodeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/type/PostalAddress;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->setSortingCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/type/PostalAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;

    .line 30
    invoke-direct {p0}, Lcom/google/type/PostalAddress;->clearSortingCode()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->setSortingCodeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/type/PostalAddress;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->setAdministrativeArea(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/type/PostalAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;

    .line 30
    invoke-direct {p0}, Lcom/google/type/PostalAddress;->clearAdministrativeArea()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->setAdministrativeAreaBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/type/PostalAddress;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->setLocality(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/type/PostalAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;

    .line 30
    invoke-direct {p0}, Lcom/google/type/PostalAddress;->clearLocality()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/type/PostalAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;

    .line 30
    invoke-direct {p0}, Lcom/google/type/PostalAddress;->clearRevision()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->setLocalityBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/type/PostalAddress;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->setSublocality(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/type/PostalAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;

    .line 30
    invoke-direct {p0}, Lcom/google/type/PostalAddress;->clearSublocality()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->setSublocalityBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/type/PostalAddress;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/type/PostalAddress;->setAddressLines(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/type/PostalAddress;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->addAddressLines(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/type/PostalAddress;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->addAllAddressLines(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/type/PostalAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;

    .line 30
    invoke-direct {p0}, Lcom/google/type/PostalAddress;->clearAddressLines()V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->addAddressLinesBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/type/PostalAddress;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/type/PostalAddress;->setRecipients(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/type/PostalAddress;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->setRegionCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/type/PostalAddress;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->addRecipients(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/type/PostalAddress;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->addAllRecipients(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/type/PostalAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;

    .line 30
    invoke-direct {p0}, Lcom/google/type/PostalAddress;->clearRecipients()V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->addRecipientsBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/type/PostalAddress;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->setOrganization(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/type/PostalAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;

    .line 30
    invoke-direct {p0}, Lcom/google/type/PostalAddress;->clearOrganization()V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->setOrganizationBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/type/PostalAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;

    .line 30
    invoke-direct {p0}, Lcom/google/type/PostalAddress;->clearRegionCode()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->setRegionCodeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/type/PostalAddress;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->setLanguageCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/type/PostalAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;

    .line 30
    invoke-direct {p0}, Lcom/google/type/PostalAddress;->clearLanguageCode()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->setLanguageCodeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/type/PostalAddress;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/PostalAddress;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/type/PostalAddress;->setPostalCode(Ljava/lang/String;)V

    return-void
.end method

.method private addAddressLines(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 935
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 936
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/type/PostalAddress;->ensureAddressLinesIsMutable()V

    .line 937
    iget-object v1, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 938
    return-void
.end method

.method private addAddressLinesBytes(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1036
    invoke-static {p1}, Lcom/google/type/PostalAddress;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1037
    invoke-direct {p0}, Lcom/google/type/PostalAddress;->ensureAddressLinesIsMutable()V

    .line 1038
    iget-object v0, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1039
    return-void
.end method

.method private addAllAddressLines(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 970
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/type/PostalAddress;->ensureAddressLinesIsMutable()V

    .line 971
    iget-object v0, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 973
    return-void
.end method

.method private addAllRecipients(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1155
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/type/PostalAddress;->ensureRecipientsIsMutable()V

    .line 1156
    iget-object v0, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1158
    return-void
.end method

.method private addRecipients(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 1139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1140
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/type/PostalAddress;->ensureRecipientsIsMutable()V

    .line 1141
    iget-object v1, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1142
    return-void
.end method

.method private addRecipientsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1183
    invoke-static {p1}, Lcom/google/type/PostalAddress;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1184
    invoke-direct {p0}, Lcom/google/type/PostalAddress;->ensureRecipientsIsMutable()V

    .line 1185
    iget-object v0, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1186
    return-void
.end method

.method private clearAddressLines()V
    .locals 1

    .line 1003
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1004
    return-void
.end method

.method private clearAdministrativeArea()V
    .locals 1

    .line 546
    invoke-static {}, Lcom/google/type/PostalAddress;->getDefaultInstance()Lcom/google/type/PostalAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress;->administrativeArea_:Ljava/lang/String;

    .line 547
    return-void
.end method

.method private clearLanguageCode()V
    .locals 1

    .line 275
    invoke-static {}, Lcom/google/type/PostalAddress;->getDefaultInstance()Lcom/google/type/PostalAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress;->languageCode_:Ljava/lang/String;

    .line 276
    return-void
.end method

.method private clearLocality()V
    .locals 1

    .line 631
    invoke-static {}, Lcom/google/type/PostalAddress;->getDefaultInstance()Lcom/google/type/PostalAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getLocality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress;->locality_:Ljava/lang/String;

    .line 632
    return-void
.end method

.method private clearOrganization()V
    .locals 1

    .line 1238
    invoke-static {}, Lcom/google/type/PostalAddress;->getDefaultInstance()Lcom/google/type/PostalAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getOrganization()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress;->organization_:Ljava/lang/String;

    .line 1239
    return-void
.end method

.method private clearPostalCode()V
    .locals 1

    .line 365
    invoke-static {}, Lcom/google/type/PostalAddress;->getDefaultInstance()Lcom/google/type/PostalAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress;->postalCode_:Ljava/lang/String;

    .line 366
    return-void
.end method

.method private clearRecipients()V
    .locals 1

    .line 1169
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1170
    return-void
.end method

.method private clearRegionCode()V
    .locals 1

    .line 160
    invoke-static {}, Lcom/google/type/PostalAddress;->getDefaultInstance()Lcom/google/type/PostalAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getRegionCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress;->regionCode_:Ljava/lang/String;

    .line 161
    return-void
.end method

.method private clearRevision()V
    .locals 1

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/type/PostalAddress;->revision_:I

    .line 92
    return-void
.end method

.method private clearSortingCode()V
    .locals 1

    .line 451
    invoke-static {}, Lcom/google/type/PostalAddress;->getDefaultInstance()Lcom/google/type/PostalAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getSortingCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress;->sortingCode_:Ljava/lang/String;

    .line 452
    return-void
.end method

.method private clearSublocality()V
    .locals 1

    .line 705
    invoke-static {}, Lcom/google/type/PostalAddress;->getDefaultInstance()Lcom/google/type/PostalAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getSublocality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress;->sublocality_:Ljava/lang/String;

    .line 706
    return-void
.end method

.method private ensureAddressLinesIsMutable()V
    .locals 2

    .line 862
    iget-object v0, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 863
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 864
    nop

    .line 865
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 867
    :cond_0
    return-void
.end method

.method private ensureRecipientsIsMutable()V
    .locals 2

    .line 1104
    iget-object v0, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1105
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1106
    nop

    .line 1107
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1109
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/type/PostalAddress;
    .locals 1

    .line 2672
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1332
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/PostalAddress$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/type/PostalAddress;)Lcom/google/type/PostalAddress$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/type/PostalAddress;

    .line 1335
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    invoke-virtual {v0, p0}, Lcom/google/type/PostalAddress;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/PostalAddress$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/type/PostalAddress;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1308
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    invoke-static {v0, p0}, Lcom/google/type/PostalAddress;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/PostalAddress;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/PostalAddress;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1315
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    invoke-static {v0, p0, p1}, Lcom/google/type/PostalAddress;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/PostalAddress;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1271
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/PostalAddress;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/PostalAddress;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1278
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/PostalAddress;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/type/PostalAddress;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1320
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/PostalAddress;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/PostalAddress;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1327
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/PostalAddress;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/type/PostalAddress;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1295
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/PostalAddress;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/PostalAddress;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1302
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/PostalAddress;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/type/PostalAddress;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1258
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/PostalAddress;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/PostalAddress;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1265
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/PostalAddress;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/type/PostalAddress;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1283
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/PostalAddress;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/PostalAddress;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1290
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/PostalAddress;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/PostalAddress;",
            ">;"
        }
    .end annotation

    .line 2678
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAddressLines(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 900
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 901
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/type/PostalAddress;->ensureAddressLinesIsMutable()V

    .line 902
    iget-object v1, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 903
    return-void
.end method

.method private setAdministrativeArea(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 527
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 529
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/type/PostalAddress;->administrativeArea_:Ljava/lang/String;

    .line 530
    return-void
.end method

.method private setAdministrativeAreaBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 564
    invoke-static {p1}, Lcom/google/type/PostalAddress;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 565
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress;->administrativeArea_:Ljava/lang/String;

    .line 567
    return-void
.end method

.method private setLanguageCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 253
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/type/PostalAddress;->languageCode_:Ljava/lang/String;

    .line 254
    return-void
.end method

.method private setLanguageCodeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 298
    invoke-static {p1}, Lcom/google/type/PostalAddress;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 299
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress;->languageCode_:Ljava/lang/String;

    .line 301
    return-void
.end method

.method private setLocality(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 615
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 617
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/type/PostalAddress;->locality_:Ljava/lang/String;

    .line 618
    return-void
.end method

.method private setLocalityBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 646
    invoke-static {p1}, Lcom/google/type/PostalAddress;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 647
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress;->locality_:Ljava/lang/String;

    .line 649
    return-void
.end method

.method private setOrganization(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1225
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1227
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/type/PostalAddress;->organization_:Ljava/lang/String;

    .line 1228
    return-void
.end method

.method private setOrganizationBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1250
    invoke-static {p1}, Lcom/google/type/PostalAddress;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1251
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress;->organization_:Ljava/lang/String;

    .line 1253
    return-void
.end method

.method private setPostalCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 351
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/type/PostalAddress;->postalCode_:Ljava/lang/String;

    .line 352
    return-void
.end method

.method private setPostalCodeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 380
    invoke-static {p1}, Lcom/google/type/PostalAddress;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 381
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress;->postalCode_:Ljava/lang/String;

    .line 383
    return-void
.end method

.method private setRecipients(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1123
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1124
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/type/PostalAddress;->ensureRecipientsIsMutable()V

    .line 1125
    iget-object v1, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1126
    return-void
.end method

.method private setRegionCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 145
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/type/PostalAddress;->regionCode_:Ljava/lang/String;

    .line 146
    return-void
.end method

.method private setRegionCodeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 176
    invoke-static {p1}, Lcom/google/type/PostalAddress;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 177
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress;->regionCode_:Ljava/lang/String;

    .line 179
    return-void
.end method

.method private setRevision(I)V
    .locals 0
    .param p1, "value"    # I

    .line 77
    iput p1, p0, Lcom/google/type/PostalAddress;->revision_:I

    .line 78
    return-void
.end method

.method private setSortingCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 434
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 436
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/type/PostalAddress;->sortingCode_:Ljava/lang/String;

    .line 437
    return-void
.end method

.method private setSortingCodeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 467
    invoke-static {p1}, Lcom/google/type/PostalAddress;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 468
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress;->sortingCode_:Ljava/lang/String;

    .line 470
    return-void
.end method

.method private setSublocality(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 691
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 693
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/type/PostalAddress;->sublocality_:Ljava/lang/String;

    .line 694
    return-void
.end method

.method private setSublocalityBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 718
    invoke-static {p1}, Lcom/google/type/PostalAddress;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 719
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/PostalAddress;->sublocality_:Ljava/lang/String;

    .line 721
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 2603
    sget-object v0, Lcom/google/type/PostalAddress$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2656
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2653
    :pswitch_0
    return-object v1

    .line 2650
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 2635
    :pswitch_2
    sget-object v1, Lcom/google/type/PostalAddress;->PARSER:Lcom/google/protobuf/Parser;

    .line 2636
    .local v1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/type/PostalAddress;>;"
    if-nez v1, :cond_1

    .line 2637
    const-class v2, Lcom/google/type/PostalAddress;

    monitor-enter v2

    .line 2638
    :try_start_0
    sget-object v0, Lcom/google/type/PostalAddress;->PARSER:Lcom/google/protobuf/Parser;

    move-object v1, v0

    .line 2639
    if-nez v1, :cond_0

    .line 2640
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    invoke-direct {v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v1, v0

    .line 2643
    sput-object v1, Lcom/google/type/PostalAddress;->PARSER:Lcom/google/protobuf/Parser;

    .line 2645
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2647
    :cond_1
    :goto_0
    return-object v1

    .line 2632
    .end local v1    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/type/PostalAddress;>;"
    :pswitch_3
    sget-object v0, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    return-object v0

    .line 2611
    :pswitch_4
    const-string v1, "revision_"

    const-string v2, "regionCode_"

    const-string v3, "languageCode_"

    const-string v4, "postalCode_"

    const-string v5, "sortingCode_"

    const-string v6, "administrativeArea_"

    const-string v7, "locality_"

    const-string v8, "sublocality_"

    const-string v9, "addressLines_"

    const-string v10, "recipients_"

    const-string v11, "organization_"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 2624
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u000b\u0000\u0000\u0001\u000b\u000b\u0000\u0002\u0000\u0001\u0004\u0002\u0208\u0003\u0208\u0004\u0208\u0005\u0208\u0006\u0208\u0007\u0208\u0008\u0208\t\u021a\n\u021a\u000b\u0208"

    .line 2628
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/type/PostalAddress;->DEFAULT_INSTANCE:Lcom/google/type/PostalAddress;

    invoke-static {v2, v1, v0}, Lcom/google/type/PostalAddress;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 2608
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/type/PostalAddress$Builder;

    invoke-direct {v0, v1}, Lcom/google/type/PostalAddress$Builder;-><init>(Lcom/google/type/PostalAddress$1;)V

    return-object v0

    .line 2605
    :pswitch_6
    new-instance v0, Lcom/google/type/PostalAddress;

    invoke-direct {v0}, Lcom/google/type/PostalAddress;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAddressLines(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 823
    iget-object v0, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLinesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 858
    iget-object v0, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 859
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 858
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAddressLinesCount()I
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getAddressLinesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 756
    iget-object v0, p0, Lcom/google/type/PostalAddress;->addressLines_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAdministrativeArea()Ljava/lang/String;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/google/type/PostalAddress;->administrativeArea_:Ljava/lang/String;

    return-object v0
.end method

.method public getAdministrativeAreaBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/google/type/PostalAddress;->administrativeArea_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/type/PostalAddress;->languageCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/google/type/PostalAddress;->languageCode_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/google/type/PostalAddress;->locality_:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalityBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/google/type/PostalAddress;->locality_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 1

    .line 1200
    iget-object v0, p0, Lcom/google/type/PostalAddress;->organization_:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1213
    iget-object v0, p0, Lcom/google/type/PostalAddress;->organization_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/google/type/PostalAddress;->postalCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/google/type/PostalAddress;->postalCode_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipients(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 1084
    iget-object v0, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 1100
    iget-object v0, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1101
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1100
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientsCount()I
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getRecipientsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1055
    iget-object v0, p0, Lcom/google/type/PostalAddress;->recipients_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRegionCode()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/type/PostalAddress;->regionCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/type/PostalAddress;->regionCode_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRevision()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/google/type/PostalAddress;->revision_:I

    return v0
.end method

.method public getSortingCode()Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/google/type/PostalAddress;->sortingCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getSortingCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/google/type/PostalAddress;->sortingCode_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSublocality()Ljava/lang/String;
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/google/type/PostalAddress;->sublocality_:Ljava/lang/String;

    return-object v0
.end method

.method public getSublocalityBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/google/type/PostalAddress;->sublocality_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

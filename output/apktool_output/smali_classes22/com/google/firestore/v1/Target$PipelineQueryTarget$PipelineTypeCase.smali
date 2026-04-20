.class public final enum Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;
.super Ljava/lang/Enum;
.source "Target.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Target$PipelineQueryTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PipelineTypeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;

.field public static final enum PIPELINETYPE_NOT_SET:Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;

.field public static final enum STRUCTURED_PIPELINE:Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;
    .locals 2

    .line 1250
    sget-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;->STRUCTURED_PIPELINE:Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;

    sget-object v1, Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;->PIPELINETYPE_NOT_SET:Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;

    filled-new-array {v0, v1}, [Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1251
    new-instance v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;

    const-string v1, "STRUCTURED_PIPELINE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;->STRUCTURED_PIPELINE:Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;

    .line 1252
    new-instance v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;

    const-string v1, "PIPELINETYPE_NOT_SET"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;->PIPELINETYPE_NOT_SET:Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;

    .line 1250
    invoke-static {}, Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;->$values()[Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;->$VALUES:[Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1254
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1255
    iput p3, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;->value:I

    .line 1256
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;
    .locals 1
    .param p0, "value"    # I

    .line 1266
    packed-switch p0, :pswitch_data_0

    .line 1269
    const/4 v0, 0x0

    return-object v0

    .line 1267
    :pswitch_0
    sget-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;->STRUCTURED_PIPELINE:Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;

    return-object v0

    .line 1268
    :pswitch_1
    sget-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;->PIPELINETYPE_NOT_SET:Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1262
    invoke-static {p0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;->forNumber(I)Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1250
    const-class v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;
    .locals 1

    .line 1250
    sget-object v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;->$VALUES:[Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1273
    iget v0, p0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$PipelineTypeCase;->value:I

    return v0
.end method

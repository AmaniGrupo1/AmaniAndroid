.class final Lcom/google/protobuf/MessageSetSchema;
.super Ljava/lang/Object;
.source "MessageSetSchema.java"

# interfaces
.implements Lcom/google/protobuf/Schema;


# annotations
.annotation runtime Lcom/google/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final defaultInstance:Lcom/google/protobuf/MessageLite;

.field private final extensionSchema:Lcom/google/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field

.field private final hasExtensions:Z

.field private final unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MessageLite;)V
    .locals 1
    .param p3, "defaultInstance"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "unknownFieldSchema",
            "extensionSchema",
            "defaultInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/google/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/google/protobuf/MessageLite;",
            ")V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<**>;"
    .local p2, "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 27
    invoke-virtual {p2, p3}, Lcom/google/protobuf/ExtensionSchema;->hasExtensions(Lcom/google/protobuf/MessageLite;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/MessageSetSchema;->hasExtensions:Z

    .line 28
    iput-object p2, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    .line 29
    iput-object p3, p0, Lcom/google/protobuf/MessageSetSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 30
    return-void
.end method

.method private getUnknownFieldsSerializedSize(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "schema",
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 377
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "schema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p2, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 378
    .local v0, "unknowns":Ljava/lang/Object;, "TUT;"
    invoke-virtual {p1, v0}, Lcom/google/protobuf/UnknownFieldSchema;->getSerializedSizeAsMessageSet(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private mergeFromHelper(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .param p4, "reader"    # Lcom/google/protobuf/Reader;
    .param p5, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "unknownFieldSchema",
            "extensionSchema",
            "message",
            "reader",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;",
            "Lcom/google/protobuf/ExtensionSchema<",
            "TET;>;TT;",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p2, "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<TET;>;"
    .local p3, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p3}, Lcom/google/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 231
    .local v7, "unknownFields":Ljava/lang/Object;, "TUB;"
    invoke-virtual {p2, p3}, Lcom/google/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v5

    .line 234
    .local v5, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TET;>;"
    :goto_0
    :try_start_0
    invoke-interface {p4}, Lcom/google/protobuf/Reader;->getFieldNumber()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 235
    .local v0, "number":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 251
    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 236
    return-void

    .line 238
    :cond_0
    move-object v1, p0

    move-object v6, p1

    move-object v4, p2

    move-object v2, p4

    move-object v3, p5

    .end local p1    # "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .end local p2    # "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<TET;>;"
    .end local p4    # "reader":Lcom/google/protobuf/Reader;
    .end local p5    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .local v2, "reader":Lcom/google/protobuf/Reader;
    .local v3, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .local v4, "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<TET;>;"
    .local v6, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :try_start_1
    invoke-direct/range {v1 .. v7}, Lcom/google/protobuf/MessageSetSchema;->parseMessageSetItemOrUnknownField(Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 245
    move-object p4, v2

    move-object p5, v3

    move-object p2, v4

    move-object p1, v6

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v6, p3, v7}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    return-void

    .line 251
    .end local v0    # "number":I
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .end local v2    # "reader":Lcom/google/protobuf/Reader;
    .end local v3    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local v4    # "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<TET;>;"
    .end local v6    # "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local p1    # "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local p2    # "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<TET;>;"
    .restart local p4    # "reader":Lcom/google/protobuf/Reader;
    .restart local p5    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :catchall_1
    move-exception v0

    move-object v6, p1

    move-object v4, p2

    move-object v2, p4

    move-object v3, p5

    move-object p1, v0

    .end local p1    # "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .end local p2    # "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<TET;>;"
    .end local p4    # "reader":Lcom/google/protobuf/Reader;
    .end local p5    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local v2    # "reader":Lcom/google/protobuf/Reader;
    .restart local v3    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local v4    # "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<TET;>;"
    .restart local v6    # "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :goto_1
    invoke-virtual {v6, p3, v7}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    throw p1
.end method

.method static newSchema(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageSetSchema;
    .locals 1
    .param p2, "defaultInstance"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "unknownFieldSchema",
            "extensionSchema",
            "defaultInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/google/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/google/protobuf/MessageLite;",
            ")",
            "Lcom/google/protobuf/MessageSetSchema<",
            "TT;>;"
        }
    .end annotation

    .line 36
    .local p0, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<**>;"
    .local p1, "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<*>;"
    new-instance v0, Lcom/google/protobuf/MessageSetSchema;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/MessageSetSchema;-><init>(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MessageLite;)V

    return-object v0
.end method

.method private parseMessageSetItemOrUnknownField(Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "reader"    # Lcom/google/protobuf/Reader;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "reader",
            "extensionRegistry",
            "extensionSchema",
            "extensions",
            "unknownFieldSchema",
            "unknownFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/ExtensionSchema<",
            "TET;>;",
            "Lcom/google/protobuf/FieldSet<",
            "TET;>;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TUB;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p3, "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<TET;>;"
    .local p4, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TET;>;"
    .local p5, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->getTag()I

    move-result v0

    .line 271
    .local v0, "startTag":I
    sget v1, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    .line 272
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 273
    iget-object v1, p0, Lcom/google/protobuf/MessageSetSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 275
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v3

    .line 274
    invoke-virtual {p3, p2, v1, v3}, Lcom/google/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v1

    .line 276
    .local v1, "extension":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {p3, p1, v1, p2, p4}, Lcom/google/protobuf/ExtensionSchema;->parseLengthPrefixedMessageSetItem(Lcom/google/protobuf/Reader;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V

    .line 279
    return v2

    .line 281
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p5, p6, p1, v2}, Lcom/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;I)Z

    move-result v2

    return v2

    .line 284
    .end local v1    # "extension":Ljava/lang/Object;
    :cond_1
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->skipField()Z

    move-result v1

    return v1

    .line 304
    :cond_2
    const/4 v1, 0x0

    .line 305
    .local v1, "typeId":I
    const/4 v3, 0x0

    .line 306
    .local v3, "rawBytes":Lcom/google/protobuf/ByteString;
    const/4 v4, 0x0

    .line 312
    .local v4, "extension":Ljava/lang/Object;
    :goto_0
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->getFieldNumber()I

    move-result v5

    .line 313
    .local v5, "number":I
    const v6, 0x7fffffff

    if-ne v5, v6, :cond_3

    .line 314
    goto :goto_1

    .line 317
    :cond_3
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->getTag()I

    move-result v6

    .line 318
    .local v6, "tag":I
    sget v7, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    if-ne v6, v7, :cond_4

    .line 319
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readUInt32()I

    move-result v1

    .line 320
    iget-object v7, p0, Lcom/google/protobuf/MessageSetSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 321
    invoke-virtual {p3, p2, v7, v1}, Lcom/google/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v4

    .line 322
    goto :goto_0

    .line 323
    :cond_4
    sget v7, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    if-ne v6, v7, :cond_6

    .line 324
    if-eqz v4, :cond_5

    .line 325
    invoke-virtual {p3, p1, v4, p2, p4}, Lcom/google/protobuf/ExtensionSchema;->parseLengthPrefixedMessageSetItem(Lcom/google/protobuf/Reader;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V

    .line 327
    goto :goto_0

    .line 330
    :cond_5
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 331
    goto :goto_0

    .line 333
    :cond_6
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->skipField()Z

    move-result v7

    if-nez v7, :cond_a

    .line 334
    nop

    .line 339
    .end local v5    # "number":I
    .end local v6    # "tag":I
    :goto_1
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->getTag()I

    move-result v5

    sget v6, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    if-ne v5, v6, :cond_9

    .line 344
    if-eqz v3, :cond_8

    .line 345
    if-eqz v4, :cond_7

    .line 348
    invoke-virtual {p3, v3, v4, p2, p4}, Lcom/google/protobuf/ExtensionSchema;->parseMessageSetItem(Lcom/google/protobuf/ByteString;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V

    goto :goto_2

    .line 350
    :cond_7
    invoke-virtual {p5, p6, v1, v3}, Lcom/google/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    .line 353
    :cond_8
    :goto_2
    return v2

    .line 340
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 337
    :cond_a
    goto :goto_0
.end method

.method private writeUnknownFieldsHelper(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p3, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "unknownFieldSchema",
            "message",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p2, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/google/protobuf/UnknownFieldSchema;->writeAsMessageSetTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 112
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    .local v0, "messageUnknown":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v1, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    .local v1, "otherUnknown":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    const/4 v2, 0x0

    return v2

    .line 58
    :cond_0
    iget-boolean v2, p0, Lcom/google/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v2

    .line 60
    .local v2, "messageExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    iget-object v3, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v3, p2}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v3

    .line 61
    .local v3, "otherExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    invoke-virtual {v2, v3}, Lcom/google/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 63
    .end local v2    # "messageExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    .end local v3    # "otherExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public getSerializedSize(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 364
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 366
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v1, p1}, Lcom/google/protobuf/MessageSetSchema;->getUnknownFieldsSerializedSize(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 368
    iget-boolean v1, p0, Lcom/google/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 372
    :cond_0
    return v0
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 69
    .local v0, "hashCode":I
    iget-boolean v1, p0, Lcom/google/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    .line 71
    .local v1, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    mul-int/lit8 v2, v0, 0x35

    invoke-virtual {v1}, Lcom/google/protobuf/FieldSet;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 73
    .end local v1    # "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    :cond_0
    return v0
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 358
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 359
    .local v0, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->isInitialized()Z

    move-result v1

    return v1
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 257
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ExtensionSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .param p2, "reader"    # Lcom/google/protobuf/Reader;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "reader",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    iget-object v2, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "message":Ljava/lang/Object;, "TT;"
    .end local p2    # "reader":Lcom/google/protobuf/Reader;
    .end local p3    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .local v3, "message":Ljava/lang/Object;, "TT;"
    .local v4, "reader":Lcom/google/protobuf/Reader;
    .local v5, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/MessageSetSchema;->mergeFromHelper(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 217
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/SchemaUtil;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/SchemaUtil;->mergeExtensions(Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    :cond_0
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;[BIILcom/google/protobuf/ArrayDecoders$Registers;)V
    .locals 17
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "data",
            "position",
            "limit",
            "registers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v1, p1

    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v1, v1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 122
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSetLite;
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 123
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    .line 124
    move-object/from16 v3, p1

    check-cast v3, Lcom/google/protobuf/GeneratedMessageLite;

    iput-object v1, v3, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    move-object v5, v1

    goto :goto_0

    .line 122
    :cond_0
    move-object v5, v1

    .line 126
    .end local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSetLite;
    .local v5, "unknownFields":Lcom/google/protobuf/UnknownFieldSetLite;
    :goto_0
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 127
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/google/protobuf/FieldSet;

    move-result-object v7

    .line 128
    .local v7, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    const/4 v1, 0x0

    move-object v3, v1

    move/from16 v1, p3

    .line 129
    .end local p3    # "position":I
    .local v1, "position":I
    .local v3, "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    :goto_1
    if-ge v1, v4, :cond_a

    .line 130
    move-object v8, v3

    .end local v3    # "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    .local v8, "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    invoke-static {v2, v1, v6}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 131
    .end local v1    # "position":I
    .local v3, "position":I
    iget v1, v6, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 132
    .local v1, "startTag":I
    sget v9, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    const/4 v10, 0x2

    if-eq v1, v9, :cond_3

    .line 133
    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v9

    if-ne v9, v10, :cond_2

    .line 134
    iget-object v9, v0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    iget-object v10, v6, Lcom/google/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    iget-object v11, v0, Lcom/google/protobuf/MessageSetSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 137
    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v12

    .line 135
    invoke-virtual {v9, v10, v11, v12}, Lcom/google/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    check-cast v8, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 138
    if-eqz v8, :cond_1

    .line 141
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v9

    .line 142
    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 141
    invoke-virtual {v9, v10}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v9

    .line 140
    invoke-static {v9, v2, v3, v4, v6}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageField(Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 144
    iget-object v9, v8, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v10, v6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v7, v9, v10}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move v1, v3

    move-object v3, v8

    goto :goto_1

    .line 146
    :cond_1
    nop

    .line 147
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    move v1, v3

    move-object v3, v8

    goto :goto_1

    .line 151
    :cond_2
    invoke-static {v1, v2, v3, v4, v6}, Lcom/google/protobuf/ArrayDecoders;->skipField(I[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 153
    move v1, v3

    move-object v3, v8

    goto :goto_1

    .line 156
    :cond_3
    const/4 v9, 0x0

    .line 157
    .local v9, "typeId":I
    const/4 v11, 0x0

    .line 159
    .local v11, "rawBytes":Lcom/google/protobuf/ByteString;
    :goto_2
    if-ge v3, v4, :cond_8

    .line 160
    invoke-static {v2, v3, v6}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 161
    iget v12, v6, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 162
    .local v12, "tag":I
    invoke-static {v12}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v13

    .line 163
    .local v13, "number":I
    invoke-static {v12}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v14

    .line 164
    .local v14, "wireType":I
    packed-switch v13, :pswitch_data_0

    move/from16 v16, v1

    .end local v1    # "startTag":I
    .local v16, "startTag":I
    goto :goto_3

    .line 179
    .end local v16    # "startTag":I
    .restart local v1    # "startTag":I
    :pswitch_0
    if-eqz v8, :cond_4

    .line 181
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v15

    .line 182
    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 181
    invoke-virtual {v15, v10}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v10

    .line 180
    invoke-static {v10, v2, v3, v4, v6}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageField(Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 184
    iget-object v10, v8, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v15, v6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v7, v10, v15}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 185
    const/4 v10, 0x2

    goto :goto_2

    .line 187
    :cond_4
    const/4 v10, 0x2

    if-ne v14, v10, :cond_5

    .line 188
    invoke-static {v2, v3, v6}, Lcom/google/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 189
    iget-object v10, v6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    move-object v11, v10

    check-cast v11, Lcom/google/protobuf/ByteString;

    .line 190
    const/4 v10, 0x2

    goto :goto_2

    .line 187
    :cond_5
    move/from16 v16, v1

    goto :goto_3

    .line 166
    :pswitch_1
    if-nez v14, :cond_6

    .line 167
    invoke-static {v2, v3, v6}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 168
    iget v9, v6, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 171
    iget-object v10, v0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    iget-object v15, v6, Lcom/google/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    move/from16 v16, v1

    .end local v1    # "startTag":I
    .restart local v16    # "startTag":I
    iget-object v1, v0, Lcom/google/protobuf/MessageSetSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 173
    invoke-virtual {v10, v15, v1, v9}, Lcom/google/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 175
    move/from16 v1, v16

    const/4 v10, 0x2

    goto :goto_2

    .line 166
    .end local v16    # "startTag":I
    .restart local v1    # "startTag":I
    :cond_6
    move/from16 v16, v1

    .line 197
    .end local v1    # "startTag":I
    .restart local v16    # "startTag":I
    :goto_3
    sget v1, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    if-ne v12, v1, :cond_7

    .line 198
    move v1, v3

    goto :goto_4

    .line 200
    :cond_7
    invoke-static {v12, v2, v3, v4, v6}, Lcom/google/protobuf/ArrayDecoders;->skipField(I[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 201
    .end local v12    # "tag":I
    .end local v13    # "number":I
    .end local v14    # "wireType":I
    move/from16 v1, v16

    const/4 v10, 0x2

    goto :goto_2

    .line 159
    .end local v16    # "startTag":I
    .restart local v1    # "startTag":I
    :cond_8
    move/from16 v16, v1

    .end local v1    # "startTag":I
    .restart local v16    # "startTag":I
    move v1, v3

    .line 203
    .end local v3    # "position":I
    .local v1, "position":I
    :goto_4
    if-eqz v11, :cond_9

    .line 204
    nop

    .line 205
    const/4 v10, 0x2

    invoke-static {v9, v10}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v3

    .line 204
    invoke-virtual {v5, v3, v11}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 207
    .end local v9    # "typeId":I
    .end local v11    # "rawBytes":Lcom/google/protobuf/ByteString;
    .end local v16    # "startTag":I
    :cond_9
    move-object v3, v8

    goto/16 :goto_1

    .line 208
    .end local v8    # "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    .local v3, "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    :cond_a
    move-object v8, v3

    .end local v3    # "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    .restart local v8    # "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    if-ne v1, v4, :cond_b

    .line 211
    return-void

    .line 209
    :cond_b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    instance-of v0, v0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 47
    iget-object v1, p0, Lcom/google/protobuf/MessageSetSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 44
    if-eqz v0, :cond_0

    .line 45
    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->newMutableInstance()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    invoke-interface {v1}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->buildPartial()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 6
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/google/protobuf/MessageSetSchema;, "Lcom/google/protobuf/MessageSetSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 88
    .local v0, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 89
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 91
    .local v2, "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 92
    .local v3, "fd":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<*>;"
    invoke-interface {v3}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v4, v5, :cond_1

    invoke-interface {v3}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v4

    if-nez v4, :cond_1

    .line 95
    instance-of v4, v2, Lcom/google/protobuf/LazyField$LazyEntry;

    if-eqz v4, :cond_0

    .line 96
    nop

    .line 97
    invoke-interface {v3}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v4

    move-object v5, v2

    check-cast v5, Lcom/google/protobuf/LazyField$LazyEntry;

    invoke-virtual {v5}, Lcom/google/protobuf/LazyField$LazyEntry;->getField()Lcom/google/protobuf/LazyField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/LazyField;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 96
    invoke-interface {p2, v4, v5}, Lcom/google/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    goto :goto_1

    .line 99
    :cond_0
    invoke-interface {v3}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Lcom/google/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    .line 101
    .end local v2    # "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "fd":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<*>;"
    :goto_1
    goto :goto_0

    .line 93
    .restart local v2    # "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v3    # "fd":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<*>;"
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Found invalid MessageSet item."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 102
    .end local v2    # "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "fd":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<*>;"
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v2, p1, p2}, Lcom/google/protobuf/MessageSetSchema;->writeUnknownFieldsHelper(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 103
    return-void
.end method

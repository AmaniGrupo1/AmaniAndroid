.class public final Lcom/google/type/Color$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Color.java"

# interfaces
.implements Lcom/google/type/ColorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/type/Color;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/type/Color;",
        "Lcom/google/type/Color$Builder;",
        ">;",
        "Lcom/google/type/ColorOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 585
    invoke-static {}, Lcom/google/type/Color;->access$000()Lcom/google/type/Color;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 586
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/type/Color$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/type/Color$1;

    .line 578
    invoke-direct {p0}, Lcom/google/type/Color$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAlpha()Lcom/google/type/Color$Builder;
    .locals 1

    .line 835
    invoke-virtual {p0}, Lcom/google/type/Color$Builder;->copyOnWrite()V

    .line 836
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-static {v0}, Lcom/google/type/Color;->access$900(Lcom/google/type/Color;)V

    .line 837
    return-object p0
.end method

.method public clearBlue()Lcom/google/type/Color$Builder;
    .locals 1

    .line 704
    invoke-virtual {p0}, Lcom/google/type/Color$Builder;->copyOnWrite()V

    .line 705
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-static {v0}, Lcom/google/type/Color;->access$600(Lcom/google/type/Color;)V

    .line 706
    return-object p0
.end method

.method public clearGreen()Lcom/google/type/Color$Builder;
    .locals 1

    .line 664
    invoke-virtual {p0}, Lcom/google/type/Color$Builder;->copyOnWrite()V

    .line 665
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-static {v0}, Lcom/google/type/Color;->access$400(Lcom/google/type/Color;)V

    .line 666
    return-object p0
.end method

.method public clearRed()Lcom/google/type/Color$Builder;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/google/type/Color$Builder;->copyOnWrite()V

    .line 625
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-static {v0}, Lcom/google/type/Color;->access$200(Lcom/google/type/Color;)V

    .line 626
    return-object p0
.end method

.method public getAlpha()Lcom/google/protobuf/FloatValue;
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-virtual {v0}, Lcom/google/type/Color;->getAlpha()Lcom/google/protobuf/FloatValue;

    move-result-object v0

    return-object v0
.end method

.method public getBlue()F
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-virtual {v0}, Lcom/google/type/Color;->getBlue()F

    move-result v0

    return v0
.end method

.method public getGreen()F
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-virtual {v0}, Lcom/google/type/Color;->getGreen()F

    move-result v0

    return v0
.end method

.method public getRed()F
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-virtual {v0}, Lcom/google/type/Color;->getRed()F

    move-result v0

    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-virtual {v0}, Lcom/google/type/Color;->hasAlpha()Z

    move-result v0

    return v0
.end method

.method public mergeAlpha(Lcom/google/protobuf/FloatValue;)Lcom/google/type/Color$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/FloatValue;

    .line 814
    invoke-virtual {p0}, Lcom/google/type/Color$Builder;->copyOnWrite()V

    .line 815
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-static {v0, p1}, Lcom/google/type/Color;->access$800(Lcom/google/type/Color;Lcom/google/protobuf/FloatValue;)V

    .line 816
    return-object p0
.end method

.method public setAlpha(Lcom/google/protobuf/FloatValue$Builder;)Lcom/google/type/Color$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/FloatValue$Builder;

    .line 792
    invoke-virtual {p0}, Lcom/google/type/Color$Builder;->copyOnWrite()V

    .line 793
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-virtual {p1}, Lcom/google/protobuf/FloatValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/FloatValue;

    invoke-static {v0, v1}, Lcom/google/type/Color;->access$700(Lcom/google/type/Color;Lcom/google/protobuf/FloatValue;)V

    .line 794
    return-object p0
.end method

.method public setAlpha(Lcom/google/protobuf/FloatValue;)Lcom/google/type/Color$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/FloatValue;

    .line 769
    invoke-virtual {p0}, Lcom/google/type/Color$Builder;->copyOnWrite()V

    .line 770
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-static {v0, p1}, Lcom/google/type/Color;->access$700(Lcom/google/type/Color;Lcom/google/protobuf/FloatValue;)V

    .line 771
    return-object p0
.end method

.method public setBlue(F)Lcom/google/type/Color$Builder;
    .locals 1
    .param p1, "value"    # F

    .line 691
    invoke-virtual {p0}, Lcom/google/type/Color$Builder;->copyOnWrite()V

    .line 692
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-static {v0, p1}, Lcom/google/type/Color;->access$500(Lcom/google/type/Color;F)V

    .line 693
    return-object p0
.end method

.method public setGreen(F)Lcom/google/type/Color$Builder;
    .locals 1
    .param p1, "value"    # F

    .line 651
    invoke-virtual {p0}, Lcom/google/type/Color$Builder;->copyOnWrite()V

    .line 652
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-static {v0, p1}, Lcom/google/type/Color;->access$300(Lcom/google/type/Color;F)V

    .line 653
    return-object p0
.end method

.method public setRed(F)Lcom/google/type/Color$Builder;
    .locals 1
    .param p1, "value"    # F

    .line 611
    invoke-virtual {p0}, Lcom/google/type/Color$Builder;->copyOnWrite()V

    .line 612
    iget-object v0, p0, Lcom/google/type/Color$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Color;

    invoke-static {v0, p1}, Lcom/google/type/Color;->access$100(Lcom/google/type/Color;F)V

    .line 613
    return-object p0
.end method

.class public final Lcom/google/type/Fraction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Fraction.java"

# interfaces
.implements Lcom/google/type/FractionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/type/Fraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/type/Fraction;",
        "Lcom/google/type/Fraction$Builder;",
        ">;",
        "Lcom/google/type/FractionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 197
    invoke-static {}, Lcom/google/type/Fraction;->access$000()Lcom/google/type/Fraction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 198
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/type/Fraction$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/type/Fraction$1;

    .line 190
    invoke-direct {p0}, Lcom/google/type/Fraction$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDenominator()Lcom/google/type/Fraction$Builder;
    .locals 1

    .line 279
    invoke-virtual {p0}, Lcom/google/type/Fraction$Builder;->copyOnWrite()V

    .line 280
    iget-object v0, p0, Lcom/google/type/Fraction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Fraction;

    invoke-static {v0}, Lcom/google/type/Fraction;->access$400(Lcom/google/type/Fraction;)V

    .line 281
    return-object p0
.end method

.method public clearNumerator()Lcom/google/type/Fraction$Builder;
    .locals 1

    .line 236
    invoke-virtual {p0}, Lcom/google/type/Fraction$Builder;->copyOnWrite()V

    .line 237
    iget-object v0, p0, Lcom/google/type/Fraction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Fraction;

    invoke-static {v0}, Lcom/google/type/Fraction;->access$200(Lcom/google/type/Fraction;)V

    .line 238
    return-object p0
.end method

.method public getDenominator()J
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/google/type/Fraction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Fraction;

    invoke-virtual {v0}, Lcom/google/type/Fraction;->getDenominator()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumerator()J
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/google/type/Fraction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Fraction;

    invoke-virtual {v0}, Lcom/google/type/Fraction;->getNumerator()J

    move-result-wide v0

    return-wide v0
.end method

.method public setDenominator(J)Lcom/google/type/Fraction$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 265
    invoke-virtual {p0}, Lcom/google/type/Fraction$Builder;->copyOnWrite()V

    .line 266
    iget-object v0, p0, Lcom/google/type/Fraction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Fraction;

    invoke-static {v0, p1, p2}, Lcom/google/type/Fraction;->access$300(Lcom/google/type/Fraction;J)V

    .line 267
    return-object p0
.end method

.method public setNumerator(J)Lcom/google/type/Fraction$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 223
    invoke-virtual {p0}, Lcom/google/type/Fraction$Builder;->copyOnWrite()V

    .line 224
    iget-object v0, p0, Lcom/google/type/Fraction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Fraction;

    invoke-static {v0, p1, p2}, Lcom/google/type/Fraction;->access$100(Lcom/google/type/Fraction;J)V

    .line 225
    return-object p0
.end method

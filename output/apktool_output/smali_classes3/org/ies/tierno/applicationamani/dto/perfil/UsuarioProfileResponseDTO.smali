.class public final Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;
.super Ljava/lang/Object;
.source "UsuarioProfileResponseDTO.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BC\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000cJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003JJ\u0010\u0018\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0005H\u00d6\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000f\u00a8\u0006 "
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;",
        "",
        "idUsuario",
        "",
        "nombre",
        "",
        "apellido",
        "email",
        "fotoPerfilUrl",
        "<init>",
        "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getIdUsuario",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getNombre",
        "()Ljava/lang/String;",
        "getApellido",
        "getEmail",
        "getFotoPerfilUrl",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final apellido:Ljava/lang/String;

.field private final email:Ljava/lang/String;

.field private final fotoPerfilUrl:Ljava/lang/String;

.field private final idUsuario:Ljava/lang/Long;

.field private final nombre:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "idUsuario"    # Ljava/lang/Long;
    .param p2, "nombre"    # Ljava/lang/String;
    .param p3, "apellido"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "fotoPerfilUrl"    # Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->idUsuario:Ljava/lang/Long;

    .line 5
    iput-object p2, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->nombre:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->apellido:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->email:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->fotoPerfilUrl:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 3
    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 4
    move-object p1, v0

    .line 3
    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 5
    move-object p2, v0

    .line 3
    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 6
    move-object p3, v0

    .line 3
    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 7
    move-object p4, v0

    .line 3
    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 8
    move-object p6, v0

    goto :goto_0

    .line 3
    :cond_4
    move-object p6, p5

    :goto_0
    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->idUsuario:Ljava/lang/Long;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->nombre:Ljava/lang/String;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->apellido:Ljava/lang/String;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->email:Ljava/lang/String;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->fotoPerfilUrl:Ljava/lang/String;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->copy(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->idUsuario:Ljava/lang/Long;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->nombre:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->apellido:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->fotoPerfilUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;
    .locals 6

    new-instance v0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->idUsuario:Ljava/lang/Long;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->idUsuario:Ljava/lang/Long;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->nombre:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->nombre:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->apellido:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->apellido:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->email:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->email:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->fotoPerfilUrl:Ljava/lang/String;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->fotoPerfilUrl:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getApellido()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->apellido:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final getFotoPerfilUrl()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->fotoPerfilUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdUsuario()Ljava/lang/Long;
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->idUsuario:Ljava/lang/Long;

    return-object v0
.end method

.method public final getNombre()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->nombre:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->idUsuario:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->idUsuario:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->nombre:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->nombre:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->apellido:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->apellido:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->email:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->email:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->fotoPerfilUrl:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->fotoPerfilUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->idUsuario:Ljava/lang/Long;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->nombre:Ljava/lang/String;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->apellido:Ljava/lang/String;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->email:Ljava/lang/String;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/dto/perfil/UsuarioProfileResponseDTO;->fotoPerfilUrl:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsuarioProfileResponseDTO(idUsuario="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", nombre="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apellido="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fotoPerfilUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;
.super Ljava/lang/Object;
.source "PsicologoRequestDTO.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008 \n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bk\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J|\u0010\'\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010(J\u0013\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010,\u001a\u00020\tH\u00d6\u0001J\t\u0010-\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0018\u001a\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0011R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0011R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0011R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0011\u00a8\u0006."
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;",
        "",
        "nombrePsicologo",
        "",
        "apellidoPsicologo",
        "email",
        "password",
        "especialidad",
        "experiencia",
        "",
        "descripcion",
        "licencia",
        "fechaNacimiento",
        "telefono",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getNombrePsicologo",
        "()Ljava/lang/String;",
        "getApellidoPsicologo",
        "getEmail",
        "getPassword",
        "getEspecialidad",
        "getExperiencia",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getDescripcion",
        "getLicencia",
        "getFechaNacimiento",
        "getTelefono",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private final apellidoPsicologo:Ljava/lang/String;

.field private final descripcion:Ljava/lang/String;

.field private final email:Ljava/lang/String;

.field private final especialidad:Ljava/lang/String;

.field private final experiencia:Ljava/lang/Integer;

.field private final fechaNacimiento:Ljava/lang/String;

.field private final licencia:Ljava/lang/String;

.field private final nombrePsicologo:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final telefono:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "nombrePsicologo"    # Ljava/lang/String;
    .param p2, "apellidoPsicologo"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "especialidad"    # Ljava/lang/String;
    .param p6, "experiencia"    # Ljava/lang/Integer;
    .param p7, "descripcion"    # Ljava/lang/String;
    .param p8, "licencia"    # Ljava/lang/String;
    .param p9, "fechaNacimiento"    # Ljava/lang/String;
    .param p10, "telefono"    # Ljava/lang/String;

    const-string v0, "nombrePsicologo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apellidoPsicologo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "email"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "especialidad"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->nombrePsicologo:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->apellidoPsicologo:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->email:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->password:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->especialidad:Ljava/lang/String;

    .line 9
    iput-object p6, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->experiencia:Ljava/lang/Integer;

    .line 10
    iput-object p7, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->descripcion:Ljava/lang/String;

    .line 11
    iput-object p8, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->licencia:Ljava/lang/String;

    .line 12
    iput-object p9, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->fechaNacimiento:Ljava/lang/String;

    .line 13
    iput-object p10, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->telefono:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 3
    and-int/lit8 p12, p11, 0x20

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    .line 9
    move-object p6, v0

    .line 3
    :cond_0
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_1

    .line 10
    move-object p7, v0

    .line 3
    :cond_1
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_2

    .line 11
    move-object p8, v0

    .line 3
    :cond_2
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_3

    .line 12
    move-object p9, v0

    .line 3
    :cond_3
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_4

    .line 13
    move-object p11, v0

    goto :goto_0

    .line 3
    :cond_4
    move-object p11, p10

    :goto_0
    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p11}, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;
    .locals 0

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->nombrePsicologo:Ljava/lang/String;

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    iget-object p2, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->apellidoPsicologo:Ljava/lang/String;

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    iget-object p3, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->email:Ljava/lang/String;

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    iget-object p4, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->password:Ljava/lang/String;

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    iget-object p5, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->especialidad:Ljava/lang/String;

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    iget-object p6, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->experiencia:Ljava/lang/Integer;

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    iget-object p7, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->descripcion:Ljava/lang/String;

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    iget-object p8, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->licencia:Ljava/lang/String;

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    iget-object p9, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->fechaNacimiento:Ljava/lang/String;

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    iget-object p10, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->telefono:Ljava/lang/String;

    :cond_9
    move-object p11, p9

    move-object p12, p10

    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p12}, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->nombrePsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->telefono:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->apellidoPsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->especialidad:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->experiencia:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->descripcion:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->licencia:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->fechaNacimiento:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;
    .locals 12

    const-string v0, "nombrePsicologo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apellidoPsicologo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "email"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "especialidad"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->nombrePsicologo:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->nombrePsicologo:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->apellidoPsicologo:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->apellidoPsicologo:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->email:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->email:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->password:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->password:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->especialidad:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->especialidad:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->experiencia:Ljava/lang/Integer;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->experiencia:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->descripcion:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->descripcion:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->licencia:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->licencia:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->fechaNacimiento:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->fechaNacimiento:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->telefono:Ljava/lang/String;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->telefono:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getApellidoPsicologo()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->apellidoPsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescripcion()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->descripcion:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final getEspecialidad()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->especialidad:Ljava/lang/String;

    return-object v0
.end method

.method public final getExperiencia()Ljava/lang/Integer;
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->experiencia:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getFechaNacimiento()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->fechaNacimiento:Ljava/lang/String;

    return-object v0
.end method

.method public final getLicencia()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->licencia:Ljava/lang/String;

    return-object v0
.end method

.method public final getNombrePsicologo()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->nombrePsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final getTelefono()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->telefono:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->nombrePsicologo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->apellidoPsicologo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->especialidad:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->experiencia:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->experiencia:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->descripcion:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->descripcion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->licencia:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->licencia:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->fechaNacimiento:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->fechaNacimiento:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->telefono:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->telefono:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v1, v3

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->nombrePsicologo:Ljava/lang/String;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->apellidoPsicologo:Ljava/lang/String;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->email:Ljava/lang/String;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->password:Ljava/lang/String;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->especialidad:Ljava/lang/String;

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->experiencia:Ljava/lang/Integer;

    iget-object v6, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->descripcion:Ljava/lang/String;

    iget-object v7, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->licencia:Ljava/lang/String;

    iget-object v8, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->fechaNacimiento:Ljava/lang/String;

    iget-object v9, p0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;->telefono:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PsicologoRequestDTO(nombrePsicologo="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", apellidoPsicologo="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", especialidad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", experiencia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", descripcion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", licencia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fechaNacimiento="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", telefono="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

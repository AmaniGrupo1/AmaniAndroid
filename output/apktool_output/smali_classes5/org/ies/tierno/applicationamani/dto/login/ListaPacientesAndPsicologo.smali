.class public final Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;
.super Ljava/lang/Object;
.source "PsicologoConPacientesDTO.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010!\u001a\u00020\u0005H\u00c6\u0003J\u000f\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u00c6\u0003Ja\u0010#\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u00c6\u0001J\u0013\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\'\u001a\u00020(H\u00d6\u0001J\t\u0010)\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0013R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013R\u0011\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0013R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006*"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;",
        "",
        "idPsicologo",
        "",
        "nombrePsicologo",
        "",
        "apellidoPsicologo",
        "emailPsicologo",
        "especialidad",
        "licencia",
        "fechaDadoAlta",
        "pacientes",
        "",
        "Lorg/ies/tierno/applicationamani/dto/login/PacientesAsignadoDTO;",
        "<init>",
        "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V",
        "getIdPsicologo",
        "()J",
        "getNombrePsicologo",
        "()Ljava/lang/String;",
        "getApellidoPsicologo",
        "getEmailPsicologo",
        "getEspecialidad",
        "getLicencia",
        "getFechaDadoAlta",
        "getPacientes",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
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
.field private final apellidoPsicologo:Ljava/lang/String;

.field private final emailPsicologo:Ljava/lang/String;

.field private final especialidad:Ljava/lang/String;

.field private final fechaDadoAlta:Ljava/lang/String;

.field private final idPsicologo:J

.field private final licencia:Ljava/lang/String;

.field private final nombrePsicologo:Ljava/lang/String;

.field private final pacientes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/login/PacientesAsignadoDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->$stable:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "idPsicologo"    # J
    .param p3, "nombrePsicologo"    # Ljava/lang/String;
    .param p4, "apellidoPsicologo"    # Ljava/lang/String;
    .param p5, "emailPsicologo"    # Ljava/lang/String;
    .param p6, "especialidad"    # Ljava/lang/String;
    .param p7, "licencia"    # Ljava/lang/String;
    .param p8, "fechaDadoAlta"    # Ljava/lang/String;
    .param p9, "pacientes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/login/PacientesAsignadoDTO;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nombrePsicologo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apellidoPsicologo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emailPsicologo"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "especialidad"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fechaDadoAlta"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pacientes"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->idPsicologo:J

    .line 5
    iput-object p3, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->nombrePsicologo:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->apellidoPsicologo:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->emailPsicologo:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->especialidad:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->licencia:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->fechaDadoAlta:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->pacientes:Ljava/util/List;

    .line 3
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;
    .locals 10

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-wide p1, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->idPsicologo:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->nombrePsicologo:Ljava/lang/String;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, v0, 0x4

    if-eqz p1, :cond_2

    iget-object p4, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->apellidoPsicologo:Ljava/lang/String;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, v0, 0x8

    if-eqz p1, :cond_3

    iget-object p5, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->emailPsicologo:Ljava/lang/String;

    :cond_3
    move-object v5, p5

    and-int/lit8 p1, v0, 0x10

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->especialidad:Ljava/lang/String;

    move-object v6, p1

    goto :goto_0

    :cond_4
    move-object/from16 v6, p6

    :goto_0
    and-int/lit8 p1, v0, 0x20

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->licencia:Ljava/lang/String;

    move-object v7, p1

    goto :goto_1

    :cond_5
    move-object/from16 v7, p7

    :goto_1
    and-int/lit8 p1, v0, 0x40

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->fechaDadoAlta:Ljava/lang/String;

    move-object v8, p1

    goto :goto_2

    :cond_6
    move-object/from16 v8, p8

    :goto_2
    and-int/lit16 p1, v0, 0x80

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->pacientes:Ljava/util/List;

    move-object v9, p1

    goto :goto_3

    :cond_7
    move-object/from16 v9, p9

    :goto_3
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->idPsicologo:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->nombrePsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->apellidoPsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->emailPsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->especialidad:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->licencia:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->fechaDadoAlta:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/login/PacientesAsignadoDTO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->pacientes:Ljava/util/List;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/login/PacientesAsignadoDTO;",
            ">;)",
            "Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;"
        }
    .end annotation

    const-string v0, "nombrePsicologo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apellidoPsicologo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emailPsicologo"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "especialidad"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fechaDadoAlta"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pacientes"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->idPsicologo:J

    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->idPsicologo:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->nombrePsicologo:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->nombrePsicologo:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->apellidoPsicologo:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->apellidoPsicologo:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->emailPsicologo:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->emailPsicologo:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->especialidad:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->especialidad:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->licencia:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->licencia:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->fechaDadoAlta:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->fechaDadoAlta:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->pacientes:Ljava/util/List;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->pacientes:Ljava/util/List;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getApellidoPsicologo()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->apellidoPsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmailPsicologo()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->emailPsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final getEspecialidad()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->especialidad:Ljava/lang/String;

    return-object v0
.end method

.method public final getFechaDadoAlta()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->fechaDadoAlta:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdPsicologo()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->idPsicologo:J

    return-wide v0
.end method

.method public final getLicencia()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->licencia:Ljava/lang/String;

    return-object v0
.end method

.method public final getNombrePsicologo()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->nombrePsicologo:Ljava/lang/String;

    return-object v0
.end method

.method public final getPacientes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/login/PacientesAsignadoDTO;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->pacientes:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->idPsicologo:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->nombrePsicologo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->apellidoPsicologo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->emailPsicologo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->especialidad:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->licencia:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->licencia:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->fechaDadoAlta:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->pacientes:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->idPsicologo:J

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->nombrePsicologo:Ljava/lang/String;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->apellidoPsicologo:Ljava/lang/String;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->emailPsicologo:Ljava/lang/String;

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->especialidad:Ljava/lang/String;

    iget-object v6, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->licencia:Ljava/lang/String;

    iget-object v7, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->fechaDadoAlta:Ljava/lang/String;

    iget-object v8, p0, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->pacientes:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ListaPacientesAndPsicologo(idPsicologo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nombrePsicologo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apellidoPsicologo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emailPsicologo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", especialidad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", licencia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fechaDadoAlta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pacientes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

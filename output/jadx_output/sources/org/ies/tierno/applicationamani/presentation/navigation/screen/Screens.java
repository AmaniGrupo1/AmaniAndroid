package org.ies.tierno.applicationamani.presentation.navigation.screen;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.presentation.components.Routes;

/* JADX INFO: compiled from: Screens.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0016\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001dB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0016\u001e\u001f !\"#$%&'()*+,-./0123¨\u00064"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "", "route", "", "<init>", "(Ljava/lang/String;)V", "getRoute", "()Ljava/lang/String;", "login", "registro", "principal", "questionnaire", "principalCliente", "settingsCliente", "agregarPsicologo", "test", "pacientes", "agregarAdmin", "agregarPacienteAdmin", "adminHome", "cuestionario", Routes.CITAS, "psicologoAgenda", "psicologoHome", "pacienteHome", "listarPsicologo", "calendario", "perfilPsicologo", "chatList", Routes.CHAT, "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$adminHome;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarAdmin;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarPacienteAdmin;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarPsicologo;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$calendario;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chat;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chatList;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$citas;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$cuestionario;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$listarPsicologo;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$login;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$pacienteHome;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$pacientes;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$perfilPsicologo;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principal;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principalCliente;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoAgenda;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoHome;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$questionnaire;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$registro;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$settingsCliente;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$test;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class Screens {
    public static final int $stable = 0;
    private final String route;

    public /* synthetic */ Screens(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    private Screens(String route) {
        this.route = route;
    }

    public final String getRoute() {
        return this.route;
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$login;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class login extends Screens {
        public static final int $stable = 0;
        public static final login INSTANCE = new login();

        private login() {
            super("login", null);
        }
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$registro;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class registro extends Screens {
        public static final int $stable = 0;
        public static final registro INSTANCE = new registro();

        private registro() {
            super("registro", null);
        }
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principal;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class principal extends Screens {
        public static final int $stable = 0;
        public static final principal INSTANCE = new principal();

        private principal() {
            super("principal", null);
        }
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$questionnaire;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class questionnaire extends Screens {
        public static final int $stable = 0;
        public static final questionnaire INSTANCE = new questionnaire();

        private questionnaire() {
            super("questionnaire", null);
        }
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$principalCliente;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class principalCliente extends Screens {
        public static final int $stable = 0;
        public static final principalCliente INSTANCE = new principalCliente();

        private principalCliente() {
            super("principalCliente", null);
        }
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$settingsCliente;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class settingsCliente extends Screens {
        public static final int $stable = 0;
        public static final settingsCliente INSTANCE = new settingsCliente();

        private settingsCliente() {
            super("settingsCliente", null);
        }
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarPsicologo;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class agregarPsicologo extends Screens {
        public static final int $stable = 0;
        public static final agregarPsicologo INSTANCE = new agregarPsicologo();

        private agregarPsicologo() {
            super("agregarPsicologo", null);
        }
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$test;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class test extends Screens {
        public static final int $stable = 0;
        public static final test INSTANCE = new test();

        private test() {
            super("test", null);
        }
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$pacientes;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class pacientes extends Screens {
        public static final int $stable = 0;
        public static final pacientes INSTANCE = new pacientes();

        private pacientes() {
            super("pacientes", null);
        }
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarAdmin;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class agregarAdmin extends Screens {
        public static final int $stable = 0;
        public static final agregarAdmin INSTANCE = new agregarAdmin();

        private agregarAdmin() {
            super("agregarAdmin", null);
        }
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$agregarPacienteAdmin;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class agregarPacienteAdmin extends Screens {
        public static final int $stable = 0;
        public static final agregarPacienteAdmin INSTANCE = new agregarPacienteAdmin();

        private agregarPacienteAdmin() {
            super("agregarPacienteAdmin", null);
        }
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$adminHome;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class adminHome extends Screens {
        public static final int $stable = 0;
        public static final adminHome INSTANCE = new adminHome();

        private adminHome() {
            super(Routes.HOME, null);
        }
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$cuestionario;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class cuestionario extends Screens {
        public static final int $stable = 0;
        public static final cuestionario INSTANCE = new cuestionario();

        private cuestionario() {
            super("cuestionario", null);
        }
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$citas;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class citas extends Screens {
        public static final int $stable = 0;
        public static final citas INSTANCE = new citas();

        private citas() {
            super(Routes.CITAS, null);
        }
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoAgenda;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class psicologoAgenda extends Screens {
        public static final int $stable = 0;
        public static final psicologoAgenda INSTANCE = new psicologoAgenda();

        private psicologoAgenda() {
            super("psicologoAgenda", null);
        }
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoHome;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class psicologoHome extends Screens {
        public static final int $stable = 0;
        public static final psicologoHome INSTANCE = new psicologoHome();

        private psicologoHome() {
            super("psicologoHome", null);
        }
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$pacienteHome;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "createRoute", "", "idPaciente", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class pacienteHome extends Screens {
        public static final int $stable = 0;
        public static final pacienteHome INSTANCE = new pacienteHome();

        private pacienteHome() {
            super("pacienteHome/{idPaciente}", null);
        }

        public final String createRoute(long idPaciente) {
            return "pacienteHome/" + idPaciente;
        }
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$listarPsicologo;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "createRoute", "", "pacienteId", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class listarPsicologo extends Screens {
        public static final int $stable = 0;
        public static final listarPsicologo INSTANCE = new listarPsicologo();

        private listarPsicologo() {
            super("listarPsicologo/{pacienteId}", null);
        }

        public final String createRoute(long pacienteId) {
            return "listarPsicologo/" + pacienteId;
        }
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$calendario;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class calendario extends Screens {
        public static final int $stable = 0;
        public static final calendario INSTANCE = new calendario();

        private calendario() {
            super("calendario", null);
        }
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$perfilPsicologo;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "createRoute", "", "psicologoId", "", "(Ljava/lang/Long;)Ljava/lang/String;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class perfilPsicologo extends Screens {
        public static final int $stable = 0;
        public static final perfilPsicologo INSTANCE = new perfilPsicologo();

        private perfilPsicologo() {
            super("perfilPsicologo/{psicologoId}", null);
        }

        public final String createRoute(Long psicologoId) {
            return "perfilPsicologo/" + psicologoId;
        }
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chatList;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class chatList extends Screens {
        public static final int $stable = 0;
        public static final chatList INSTANCE = new chatList();

        private chatList() {
            super("chatList", null);
        }
    }

    /* JADX INFO: compiled from: Screens.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005¨\u0006\n"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$chat;", "Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens;", "<init>", "()V", "createRoute", "", "currentUserId", "", "otherUserId", "otherUserName", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class chat extends Screens {
        public static final int $stable = 0;
        public static final chat INSTANCE = new chat();

        private chat() {
            super("chat/{currentUserId}/{otherUserId}/{otherUserName}", null);
        }

        public final String createRoute(long currentUserId, long otherUserId, String otherUserName) {
            Intrinsics.checkNotNullParameter(otherUserName, "otherUserName");
            return "chat/" + currentUserId + "/" + otherUserId + "/" + otherUserName;
        }
    }
}

package org.ies.tierno.applicationamani.presentation.viewmodels;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.lifecycle.ViewModel;
import com.google.firebase.firestore.model.Values;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.domain.models.Question;

/* JADX INFO: compiled from: QuestionnaireViewModel.kt */
/* JADX INFO: loaded from: classes14.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u0015J\u0006\u0010\u001e\u001a\u00020\u001bR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR+\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n8F@BX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR&\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001f"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "questions", "", "Lorg/ies/tierno/applicationamani/domain/models/Question;", "getQuestions", "()Ljava/util/List;", "<set-?>", "", "actualQuestion", "getActualQuestion", "()I", "setActualQuestion", "(I)V", "actualQuestion$delegate", "Landroidx/compose/runtime/MutableState;", "selectedAnswers", "Landroidx/compose/runtime/snapshots/SnapshotStateList;", "", "", "getSelectedAnswers", "()Landroidx/compose/runtime/snapshots/SnapshotStateList;", "setSelectedAnswers", "(Landroidx/compose/runtime/snapshots/SnapshotStateList;)V", "changeAnswer", "", "index", Values.VECTOR_MAP_VECTORS_KEY, "nextQuestion", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class QuestionnaireViewModel extends ViewModel {
    public static final int $stable = 8;
    private final List<Question> questions = CollectionsKt.listOf((Object[]) new Question[]{new Question("Pregunta 1", CollectionsKt.listOf((Object[]) new String[]{"Respuesta 1", "Respuesta 2", "Respuesta 3", "Respuesta 4"})), new Question("Pregunta 2", CollectionsKt.listOf((Object[]) new String[]{"Respuesta 1", "Respuesta 2", "Respuesta 3", "Respuesta 4", "Respuesta 5", "Respuesta 6"})), new Question("Pregunta 3", CollectionsKt.listOf((Object[]) new String[]{"Respuesta 1", "Respuesta 2", "Respuesta 3", "Respuesta 4"})), new Question("Pregunta 4", CollectionsKt.listOf((Object[]) new String[]{"Respuesta 1", "Respuesta 2", "Respuesta 3", "Respuesta 4"}))});

    /* JADX INFO: renamed from: actualQuestion$delegate, reason: from kotlin metadata */
    private final MutableState actualQuestion = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(0, null, 2, null);
    private SnapshotStateList<List<Boolean>> selectedAnswers = SnapshotStateKt.mutableStateListOf();

    public QuestionnaireViewModel() throws Throwable {
        for (Question question : this.questions) {
            SnapshotStateList<List<Boolean>> snapshotStateList = this.selectedAnswers;
            int size = question.getAnswers().size();
            ArrayList arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                arrayList.add(false);
            }
            snapshotStateList.add(arrayList);
        }
    }

    public final List<Question> getQuestions() {
        return this.questions;
    }

    private final void setActualQuestion(int i) {
        this.actualQuestion.setValue(Integer.valueOf(i));
    }

    public final int getActualQuestion() {
        return ((Number) this.actualQuestion.getValue()).intValue();
    }

    public final SnapshotStateList<List<Boolean>> getSelectedAnswers() {
        return this.selectedAnswers;
    }

    public final void setSelectedAnswers(SnapshotStateList<List<Boolean>> snapshotStateList) {
        Intrinsics.checkNotNullParameter(snapshotStateList, "<set-?>");
        this.selectedAnswers = snapshotStateList;
    }

    public final void changeAnswer(int index, boolean value) {
        this.selectedAnswers.get(getActualQuestion()).set(index, Boolean.valueOf(value));
    }

    public final void nextQuestion() {
        if (getActualQuestion() < this.questions.size() - 1) {
            setActualQuestion(getActualQuestion() + 1);
        }
    }
}

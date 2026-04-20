package org.ies.tierno.applicationamani.domain.usecases;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository;

/* JADX INFO: compiled from: ObserveTypingUseCase.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0086\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/usecases/ObserveTypingUseCase;", "", "chatRepository", "Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;", "<init>", "(Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;)V", "invoke", "Lkotlinx/coroutines/flow/Flow;", "", "userId1", "", "userId2", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ObserveTypingUseCase {
    public static final int $stable = 8;
    private final ChatRepository chatRepository;

    public ObserveTypingUseCase(ChatRepository chatRepository) {
        Intrinsics.checkNotNullParameter(chatRepository, "chatRepository");
        this.chatRepository = chatRepository;
    }

    public final Flow<Boolean> invoke(long userId1, long userId2) {
        return this.chatRepository.observeTyping(userId1, userId2);
    }
}

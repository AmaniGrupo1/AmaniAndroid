package org.ies.tierno.applicationamani.data.remoto;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO;
import retrofit2.Response;
import retrofit2.http.GET;
import retrofit2.http.Path;

/* JADX INFO: compiled from: SituacionApi.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0003H§@¢\u0006\u0002\u0010\u0006J\u001e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u00032\b\b\u0001\u0010\b\u001a\u00020\tH§@¢\u0006\u0002\u0010\n¨\u0006\u000bÀ\u0006\u0003"}, d2 = {"Lorg/ies/tierno/applicationamani/data/remoto/SituacionApi;", "", "getSituaciones", "Lretrofit2/Response;", "", "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getSituacionById", TtmlNode.ATTR_ID, "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public interface SituacionApi {
    @GET("api/situaciones/{id}")
    Object getSituacionById(@Path(TtmlNode.ATTR_ID) long j, Continuation<? super Response<SituacionDTO>> continuation);

    @GET("api/situaciones")
    Object getSituaciones(Continuation<? super Response<List<SituacionDTO>>> continuation);
}

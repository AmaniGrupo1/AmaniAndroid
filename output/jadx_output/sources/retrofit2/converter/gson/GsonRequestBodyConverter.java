package retrofit2.converter.gson;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.StandardCharsets;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes23.dex */
final class GsonRequestBodyConverter<T> implements Converter<T, RequestBody> {
    static final MediaType MEDIA_TYPE = MediaType.get("application/json; charset=UTF-8");
    private final TypeAdapter<T> adapter;
    private final Gson gson;
    private final boolean streaming;

    GsonRequestBodyConverter(Gson gson, TypeAdapter<T> adapter, boolean streaming) {
        this.gson = gson;
        this.adapter = adapter;
        this.streaming = streaming;
    }

    @Override // retrofit2.Converter
    public RequestBody convert(T value) throws IOException {
        if (this.streaming) {
            return new GsonStreamingRequestBody(this.gson, this.adapter, value);
        }
        Buffer buffer = new Buffer();
        writeJson(buffer, this.gson, this.adapter, value);
        return RequestBody.create(MEDIA_TYPE, buffer.readByteString());
    }

    static <T> void writeJson(BufferedSink sink, Gson gson, TypeAdapter<T> adapter, T value) throws IOException {
        Writer writer = new OutputStreamWriter(sink.outputStream(), StandardCharsets.UTF_8);
        JsonWriter jsonWriter = gson.newJsonWriter(writer);
        adapter.write(jsonWriter, value);
        jsonWriter.close();
    }
}

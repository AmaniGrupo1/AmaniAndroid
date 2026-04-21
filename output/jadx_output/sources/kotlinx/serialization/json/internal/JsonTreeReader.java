package kotlinx.serialization.json.internal;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.DeepRecursiveFunction;
import kotlin.DeepRecursiveKt;
import kotlin.DeepRecursiveScope;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;

/* JADX INFO: compiled from: JsonTreeReader.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\r\u001a\u00020\u000eH\u0002J\u001e\u0010\r\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000e0\u000fH\u0082@¢\u0006\u0002\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0015H\u0082\bJ\b\u0010\u0016\u001a\u00020\u000eH\u0002J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\tH\u0002J\u0006\u0010\u001a\u001a\u00020\u000eJ\b\u0010\u001b\u001a\u00020\u000eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lkotlinx/serialization/json/internal/JsonTreeReader;", "", "configuration", "Lkotlinx/serialization/json/JsonConfiguration;", "lexer", "Lkotlinx/serialization/json/internal/AbstractJsonLexer;", "<init>", "(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/AbstractJsonLexer;)V", "isLenient", "", "trailingCommaAllowed", "stackDepth", "", "readObject", "Lkotlinx/serialization/json/JsonElement;", "Lkotlin/DeepRecursiveScope;", "", "(Lkotlin/DeepRecursiveScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "readObjectImpl", "Lkotlinx/serialization/json/JsonObject;", "reader", "Lkotlin/Function0;", "readArray", "readValue", "Lkotlinx/serialization/json/JsonPrimitive;", "isString", "read", "readDeepRecursive", "kotlinx-serialization-json"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class JsonTreeReader {
    private final boolean isLenient;
    private final JsonReader lexer;
    private int stackDepth;
    private final boolean trailingCommaAllowed;

    /* JADX INFO: renamed from: kotlinx.serialization.json.internal.JsonTreeReader$readObject$2, reason: invalid class name */
    /* JADX INFO: compiled from: JsonTreeReader.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.serialization.json.internal.JsonTreeReader", f = "JsonTreeReader.kt", i = {0, 0, 0, 0}, l = {24}, m = "readObject", n = {"$this$readObject", "this_$iv", "result$iv", "key$iv"}, s = {"L$0", "L$1", "L$2", "L$3"})
    static final class AnonymousClass2 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return JsonTreeReader.this.readObject(null, this);
        }
    }

    public JsonTreeReader(JsonConfiguration configuration, JsonReader lexer) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(lexer, "lexer");
        this.lexer = lexer;
        this.isLenient = configuration.getIsLenient();
        this.trailingCommaAllowed = configuration.getAllowTrailingComma();
    }

    private final JsonElement readObject() {
        byte lastToken$iv = this.lexer.consumeNextToken((byte) 6);
        if (this.lexer.peekNextToken() == 4) {
            JsonReader.fail$default(this.lexer, "Unexpected leading comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        LinkedHashMap result$iv = new LinkedHashMap();
        while (true) {
            if (!this.lexer.canConsumeValue()) {
                break;
            }
            boolean z = this.isLenient;
            JsonReader jsonReader = this.lexer;
            String key$iv = z ? jsonReader.consumeStringLenient() : jsonReader.consumeString();
            this.lexer.consumeNextToken((byte) 5);
            JsonElement element$iv = read();
            result$iv.put(key$iv, element$iv);
            lastToken$iv = this.lexer.consumeNextToken();
            if (lastToken$iv != 4) {
                if (lastToken$iv != 7) {
                    JsonReader.fail$default(this.lexer, "Expected end of the object or comma", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
            }
        }
        if (lastToken$iv == 6) {
            this.lexer.consumeNextToken((byte) 7);
        } else if (lastToken$iv == 4) {
            boolean z2 = this.trailingCommaAllowed;
            JsonReader jsonReader2 = this.lexer;
            if (!z2) {
                JsonExceptionsKt.invalidTrailingComma$default(jsonReader2, null, 1, null);
                throw new KotlinNothingValueException();
            }
            jsonReader2.consumeNextToken((byte) 7);
        }
        return new JsonObject(result$iv);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x00a4 -> B:26:0x00ae). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object readObject(DeepRecursiveScope<Unit, JsonElement> deepRecursiveScope, Continuation<? super JsonElement> continuation) {
        AnonymousClass2 anonymousClass2;
        byte lastToken$iv;
        String key$iv;
        Object $result;
        DeepRecursiveScope $this$readObject;
        LinkedHashMap result$iv;
        JsonTreeReader this_$iv;
        JsonTreeReader this_$iv2;
        Object obj;
        if (continuation instanceof AnonymousClass2) {
            anonymousClass2 = (AnonymousClass2) continuation;
            if ((anonymousClass2.label & Integer.MIN_VALUE) != 0) {
                anonymousClass2.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass2 = new AnonymousClass2(continuation);
            }
        }
        Object $result2 = anonymousClass2.result;
        Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass2.label) {
            case 0:
                ResultKt.throwOnFailure($result2);
                lastToken$iv = this.lexer.consumeNextToken((byte) 6);
                if (this.lexer.peekNextToken() == 4) {
                    JsonReader.fail$default(this.lexer, "Unexpected leading comma", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
                LinkedHashMap result$iv2 = new LinkedHashMap();
                DeepRecursiveScope $this$readObject2 = deepRecursiveScope;
                JsonTreeReader this_$iv3 = this;
                JsonTreeReader this_$iv4 = null;
                if (this_$iv3.lexer.canConsumeValue()) {
                    key$iv = this_$iv3.isLenient ? this_$iv3.lexer.consumeStringLenient() : this_$iv3.lexer.consumeString();
                    this_$iv3.lexer.consumeNextToken((byte) 5);
                    Unit unit = Unit.INSTANCE;
                    anonymousClass2.L$0 = $this$readObject2;
                    anonymousClass2.L$1 = this_$iv3;
                    anonymousClass2.L$2 = result$iv2;
                    anonymousClass2.L$3 = key$iv;
                    anonymousClass2.label = 1;
                    Object objCallRecursive = $this$readObject2.callRecursive(unit, anonymousClass2);
                    if (objCallRecursive == $result3) {
                        return $result3;
                    }
                    Object obj2 = $result3;
                    $result = $result2;
                    $result2 = objCallRecursive;
                    $this$readObject = $this$readObject2;
                    result$iv = result$iv2;
                    this_$iv = this_$iv3;
                    this_$iv2 = this_$iv4;
                    obj = obj2;
                    JsonElement element$iv = (JsonElement) $result2;
                    result$iv.put(key$iv, element$iv);
                    lastToken$iv = this_$iv.lexer.consumeNextToken();
                    if (lastToken$iv != 4) {
                        $result2 = $result;
                        $result3 = obj;
                        this_$iv4 = this_$iv2;
                        this_$iv3 = this_$iv;
                        result$iv2 = result$iv;
                        $this$readObject2 = $this$readObject;
                        if (this_$iv3.lexer.canConsumeValue()) {
                        }
                    } else {
                        if (lastToken$iv != 7) {
                            JsonReader.fail$default(this_$iv.lexer, "Expected end of the object or comma", 0, null, 6, null);
                            throw new KotlinNothingValueException();
                        }
                        this_$iv3 = this_$iv;
                        result$iv2 = result$iv;
                    }
                }
                if (lastToken$iv == 6) {
                    this_$iv3.lexer.consumeNextToken((byte) 7);
                } else if (lastToken$iv == 4) {
                    if (!this_$iv3.trailingCommaAllowed) {
                        JsonExceptionsKt.invalidTrailingComma$default(this_$iv3.lexer, null, 1, null);
                        throw new KotlinNothingValueException();
                    }
                    this_$iv3.lexer.consumeNextToken((byte) 7);
                }
                return new JsonObject(result$iv2);
            case 1:
                key$iv = (String) anonymousClass2.L$3;
                LinkedHashMap result$iv3 = (LinkedHashMap) anonymousClass2.L$2;
                this_$iv = (JsonTreeReader) anonymousClass2.L$1;
                DeepRecursiveScope $this$readObject3 = (DeepRecursiveScope) anonymousClass2.L$0;
                ResultKt.throwOnFailure($result2);
                $this$readObject = $this$readObject3;
                result$iv = result$iv3;
                this_$iv2 = null;
                obj = $result3;
                $result = $result2;
                JsonElement element$iv2 = (JsonElement) $result2;
                result$iv.put(key$iv, element$iv2);
                lastToken$iv = this_$iv.lexer.consumeNextToken();
                if (lastToken$iv != 4) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private final JsonObject readObjectImpl(Function0<? extends JsonElement> reader) {
        byte lastToken = this.lexer.consumeNextToken((byte) 6);
        if (this.lexer.peekNextToken() == 4) {
            JsonReader.fail$default(this.lexer, "Unexpected leading comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        LinkedHashMap result = new LinkedHashMap();
        while (true) {
            if (!this.lexer.canConsumeValue()) {
                break;
            }
            boolean z = this.isLenient;
            JsonReader jsonReader = this.lexer;
            String key = z ? jsonReader.consumeStringLenient() : jsonReader.consumeString();
            this.lexer.consumeNextToken((byte) 5);
            JsonElement element = reader.invoke();
            result.put(key, element);
            lastToken = this.lexer.consumeNextToken();
            if (lastToken != 4) {
                if (lastToken != 7) {
                    JsonReader.fail$default(this.lexer, "Expected end of the object or comma", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
            }
        }
        if (lastToken == 6) {
            this.lexer.consumeNextToken((byte) 7);
        } else if (lastToken == 4) {
            boolean z2 = this.trailingCommaAllowed;
            JsonReader jsonReader2 = this.lexer;
            if (!z2) {
                JsonExceptionsKt.invalidTrailingComma$default(jsonReader2, null, 1, null);
                throw new KotlinNothingValueException();
            }
            jsonReader2.consumeNextToken((byte) 7);
        }
        return new JsonObject(result);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final JsonElement readArray() {
        byte lastToken = this.lexer.consumeNextToken();
        if (this.lexer.peekNextToken() == 4) {
            JsonReader.fail$default(this.lexer, "Unexpected leading comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        ArrayList result = new ArrayList();
        while (this.lexer.canConsumeValue()) {
            JsonElement element = read();
            result.add(element);
            lastToken = this.lexer.consumeNextToken();
            if (lastToken != 4) {
                JsonReader $this$iv = this.lexer;
                boolean condition$iv = lastToken == 9;
                int position$iv = $this$iv.currentPosition;
                if (!condition$iv) {
                    JsonReader.fail$default($this$iv, "Expected end of the array or comma", position$iv, null, 4, null);
                    throw new KotlinNothingValueException();
                }
            }
        }
        if (lastToken == 8) {
            this.lexer.consumeNextToken((byte) 9);
        } else if (lastToken == 4) {
            boolean z = this.trailingCommaAllowed;
            JsonReader jsonReader = this.lexer;
            if (!z) {
                JsonExceptionsKt.invalidTrailingComma(jsonReader, "array");
                throw new KotlinNothingValueException();
            }
            jsonReader.consumeNextToken((byte) 9);
        }
        return new JsonArray(result);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final JsonPrimitive readValue(boolean isString) {
        String strConsumeStringLenient;
        if (this.isLenient || !isString) {
            strConsumeStringLenient = this.lexer.consumeStringLenient();
        } else {
            strConsumeStringLenient = this.lexer.consumeString();
        }
        String string = strConsumeStringLenient;
        return (isString || !Intrinsics.areEqual(string, AbstractJsonLexerKt.NULL)) ? new JsonLiteral(string, isString, null, 4, null) : JsonNull.INSTANCE;
    }

    public final JsonElement read() {
        JsonElement object;
        byte token = this.lexer.peekNextToken();
        if (token == 1) {
            return readValue(true);
        }
        if (token == 0) {
            return readValue(false);
        }
        if (token == 6) {
            this.stackDepth++;
            if (this.stackDepth == 200) {
                object = readDeepRecursive();
            } else {
                object = readObject();
            }
            this.stackDepth--;
            return object;
        }
        if (token == 8) {
            return readArray();
        }
        JsonReader.fail$default(this.lexer, "Cannot read Json element because of unexpected " + AbstractJsonLexerKt.tokenDescription(token), 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    /* JADX INFO: renamed from: kotlinx.serialization.json.internal.JsonTreeReader$readDeepRecursive$1, reason: invalid class name */
    /* JADX INFO: compiled from: JsonTreeReader.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlinx/serialization/json/JsonElement;", "Lkotlin/DeepRecursiveScope;", "", "it"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.serialization.json.internal.JsonTreeReader$readDeepRecursive$1", f = "JsonTreeReader.kt", i = {}, l = {115}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function3<DeepRecursiveScope<Unit, JsonElement>, Unit, Continuation<? super JsonElement>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(DeepRecursiveScope<Unit, JsonElement> deepRecursiveScope, Unit unit, Continuation<? super JsonElement> continuation) {
            AnonymousClass1 anonymousClass1 = JsonTreeReader.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = deepRecursiveScope;
            return anonymousClass1.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object $result2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    DeepRecursiveScope $this$DeepRecursiveFunction = (DeepRecursiveScope) this.L$0;
                    byte bPeekNextToken = JsonTreeReader.this.lexer.peekNextToken();
                    if (bPeekNextToken == 1) {
                        return JsonTreeReader.this.readValue(true);
                    }
                    if (bPeekNextToken == 0) {
                        return JsonTreeReader.this.readValue(false);
                    }
                    if (bPeekNextToken == 6) {
                        this.label = 1;
                        Object object = JsonTreeReader.this.readObject($this$DeepRecursiveFunction, this);
                        if (object == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        $result2 = $result;
                        $result = object;
                    } else {
                        JsonTreeReader jsonTreeReader = JsonTreeReader.this;
                        if (bPeekNextToken == 8) {
                            return jsonTreeReader.readArray();
                        }
                        JsonReader.fail$default(jsonTreeReader.lexer, "Can't begin reading element, unexpected token", 0, null, 6, null);
                        throw new KotlinNothingValueException();
                    }
                    break;
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    $result2 = $result;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return (JsonElement) $result;
        }
    }

    private final JsonElement readDeepRecursive() {
        return (JsonElement) DeepRecursiveKt.invoke(new DeepRecursiveFunction(new AnonymousClass1(null)), Unit.INSTANCE);
    }
}

package kotlin.jvm.internal;

import androidx.exifinterface.media.ExifInterface;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.io.IOException;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.reflect.KDeclarationContainer;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: KotlinGenericDeclaration.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\u0080\u0004\u001a\u000e\u0010\u0005\u001a\u00020\u0004*\u00020\u0006H\u0082\u0080\u0004\u001a\u001e\u0010\u0007\u001a\u00020\b*\u00060\tj\u0002`\n2\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH\u0082\u0080\u0004¨\u0006\r"}, d2 = {"findMethodBySignature", "Ljava/lang/reflect/GenericDeclaration;", "Lkotlin/reflect/KDeclarationContainer;", "signature", "", "computeMethodSignature", "Ljava/lang/reflect/Method;", "appendClass", "", "Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", TtmlNode.START, "Ljava/lang/Class;", "kotlin-stdlib"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class KotlinGenericDeclarationKt {
    /* JADX WARN: Removed duplicated region for block: B:14:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final GenericDeclaration findMethodBySignature(KDeclarationContainer $this$findMethodBySignature, String signature) {
        Intrinsics.checkNotNullParameter(signature, "signature");
        Method method = null;
        if (!($this$findMethodBySignature instanceof ClassBasedDeclarationContainer)) {
            return null;
        }
        String jvmName = StringsKt.substringBefore$default(signature, '(', (String) null, 2, (Object) null);
        if (Intrinsics.areEqual(jvmName, "<init>")) {
            throw new UnsupportedOperationException("Generic Java constructors are not supported: " + $this$findMethodBySignature + '/' + signature);
        }
        Method[] declaredMethods = ((ClassBasedDeclarationContainer) $this$findMethodBySignature).getJClass().getDeclaredMethods();
        Intrinsics.checkNotNullExpressionValue(declaredMethods, "getDeclaredMethods(...)");
        Method[] methodArr = declaredMethods;
        int length = methodArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Method method2 = methodArr[i];
            Method it = method2;
            if (Intrinsics.areEqual(it.getName(), jvmName)) {
                Intrinsics.checkNotNull(it);
                boolean z = Intrinsics.areEqual(computeMethodSignature(it), signature);
                if (z) {
                    method = method2;
                    break;
                }
                i++;
            }
        }
        return method;
    }

    private static final String computeMethodSignature(Method $this$computeMethodSignature) throws IOException {
        StringBuilder $this$computeMethodSignature_u24lambda_u240 = new StringBuilder();
        $this$computeMethodSignature_u24lambda_u240.append($this$computeMethodSignature.getName());
        $this$computeMethodSignature_u24lambda_u240.append("(");
        Class<?>[] parameterTypes = $this$computeMethodSignature.getParameterTypes();
        Intrinsics.checkNotNullExpressionValue(parameterTypes, "getParameterTypes(...)");
        for (Class<?> cls : parameterTypes) {
            Intrinsics.checkNotNull(cls);
            appendClass($this$computeMethodSignature_u24lambda_u240, cls);
        }
        $this$computeMethodSignature_u24lambda_u240.append(")");
        Class<?> returnType = $this$computeMethodSignature.getReturnType();
        Intrinsics.checkNotNullExpressionValue(returnType, "getReturnType(...)");
        appendClass($this$computeMethodSignature_u24lambda_u240, returnType);
        return $this$computeMethodSignature_u24lambda_u240.toString();
    }

    private static final void appendClass(Appendable $this$appendClass, Class<?> cls) throws IOException {
        Class<?> cls2 = cls;
        while (cls2.isArray()) {
            $this$appendClass.append("[");
            Class<?> componentType = cls2.getComponentType();
            Intrinsics.checkNotNullExpressionValue(componentType, "getComponentType(...)");
            cls2 = componentType;
        }
        if (!Intrinsics.areEqual(cls2, Void.TYPE)) {
            if (!Intrinsics.areEqual(cls2, Integer.TYPE)) {
                if (!Intrinsics.areEqual(cls2, Long.TYPE)) {
                    if (!Intrinsics.areEqual(cls2, Short.TYPE)) {
                        if (!Intrinsics.areEqual(cls2, Byte.TYPE)) {
                            if (!Intrinsics.areEqual(cls2, Boolean.TYPE)) {
                                if (!Intrinsics.areEqual(cls2, Character.TYPE)) {
                                    if (!Intrinsics.areEqual(cls2, Float.TYPE)) {
                                        if (!Intrinsics.areEqual(cls2, Double.TYPE)) {
                                            $this$appendClass.append("L");
                                            String name = cls2.getName();
                                            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                                            $this$appendClass.append(StringsKt.replace$default(name, '.', '/', false, 4, (Object) null));
                                            $this$appendClass.append(";");
                                            return;
                                        }
                                        $this$appendClass.append("D");
                                        return;
                                    }
                                    $this$appendClass.append("F");
                                    return;
                                }
                                $this$appendClass.append("C");
                                return;
                            }
                            $this$appendClass.append("Z");
                            return;
                        }
                        $this$appendClass.append("B");
                        return;
                    }
                    $this$appendClass.append(ExifInterface.LATITUDE_SOUTH);
                    return;
                }
                $this$appendClass.append("J");
                return;
            }
            $this$appendClass.append("I");
            return;
        }
        $this$appendClass.append(ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
    }
}

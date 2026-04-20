package org.koin.compose.viewmodel.dsl;

import androidx.lifecycle.ViewModel;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function10;
import kotlin.jvm.functions.Function11;
import kotlin.jvm.functions.Function12;
import kotlin.jvm.functions.Function13;
import kotlin.jvm.functions.Function14;
import kotlin.jvm.functions.Function15;
import kotlin.jvm.functions.Function16;
import kotlin.jvm.functions.Function17;
import kotlin.jvm.functions.Function18;
import kotlin.jvm.functions.Function19;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function20;
import kotlin.jvm.functions.Function21;
import kotlin.jvm.functions.Function22;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.functions.Function8;
import kotlin.jvm.functions.Function9;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.definition.KoinDefinition;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.module.dsl.OptionDSLKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: ViewModelOf.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000®\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001aa\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00062-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001ao\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001*\u00020\u00042\u0014\b\u0004\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u00020\b2-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001a}\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001\"\u0006\b\u0002\u0010\u000e\u0018\u0001*\u00020\u00042\u001a\b\u0004\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u00020\u000f2-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001a\u008b\u0001\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001\"\u0006\b\u0002\u0010\u000e\u0018\u0001\"\u0006\b\u0003\u0010\u0010\u0018\u0001*\u00020\u00042 \b\u0004\u0010\u0005\u001a\u001a\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00020\u00112-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001a\u0099\u0001\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001\"\u0006\b\u0002\u0010\u000e\u0018\u0001\"\u0006\b\u0003\u0010\u0010\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001*\u00020\u00042&\b\u0004\u0010\u0005\u001a \u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u00020\u00132-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001a§\u0001\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001\"\u0006\b\u0002\u0010\u000e\u0018\u0001\"\u0006\b\u0003\u0010\u0010\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0014\u0018\u0001*\u00020\u00042,\b\u0004\u0010\u0005\u001a&\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00020\u00152-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001aµ\u0001\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001\"\u0006\b\u0002\u0010\u000e\u0018\u0001\"\u0006\b\u0003\u0010\u0010\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0014\u0018\u0001\"\u0006\b\u0006\u0010\u0016\u0018\u0001*\u00020\u000422\b\u0004\u0010\u0005\u001a,\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u00020\u00172-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001aÃ\u0001\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001\"\u0006\b\u0002\u0010\u000e\u0018\u0001\"\u0006\b\u0003\u0010\u0010\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0014\u0018\u0001\"\u0006\b\u0006\u0010\u0016\u0018\u0001\"\u0006\b\u0007\u0010\u0018\u0018\u0001*\u00020\u000428\b\u0004\u0010\u0005\u001a2\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u0002H\u00020\u00192-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001aÑ\u0001\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001\"\u0006\b\u0002\u0010\u000e\u0018\u0001\"\u0006\b\u0003\u0010\u0010\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0014\u0018\u0001\"\u0006\b\u0006\u0010\u0016\u0018\u0001\"\u0006\b\u0007\u0010\u0018\u0018\u0001\"\u0006\b\b\u0010\u001a\u0018\u0001*\u00020\u00042>\b\u0004\u0010\u0005\u001a8\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u00020\u001b2-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001aß\u0001\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001\"\u0006\b\u0002\u0010\u000e\u0018\u0001\"\u0006\b\u0003\u0010\u0010\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0014\u0018\u0001\"\u0006\b\u0006\u0010\u0016\u0018\u0001\"\u0006\b\u0007\u0010\u0018\u0018\u0001\"\u0006\b\b\u0010\u001a\u0018\u0001\"\u0006\b\t\u0010\u001c\u0018\u0001*\u00020\u00042D\b\u0004\u0010\u0005\u001a>\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u00020\u001d2-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001aí\u0001\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001\"\u0006\b\u0002\u0010\u000e\u0018\u0001\"\u0006\b\u0003\u0010\u0010\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0014\u0018\u0001\"\u0006\b\u0006\u0010\u0016\u0018\u0001\"\u0006\b\u0007\u0010\u0018\u0018\u0001\"\u0006\b\b\u0010\u001a\u0018\u0001\"\u0006\b\t\u0010\u001c\u0018\u0001\"\u0006\b\n\u0010\u001e\u0018\u0001*\u00020\u00042J\b\u0004\u0010\u0005\u001aD\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u001e\u0012\u0004\u0012\u0002H\u00020\u001f2-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001aû\u0001\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001\"\u0006\b\u0002\u0010\u000e\u0018\u0001\"\u0006\b\u0003\u0010\u0010\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0014\u0018\u0001\"\u0006\b\u0006\u0010\u0016\u0018\u0001\"\u0006\b\u0007\u0010\u0018\u0018\u0001\"\u0006\b\b\u0010\u001a\u0018\u0001\"\u0006\b\t\u0010\u001c\u0018\u0001\"\u0006\b\n\u0010\u001e\u0018\u0001\"\u0006\b\u000b\u0010 \u0018\u0001*\u00020\u00042P\b\u0004\u0010\u0005\u001aJ\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u001e\u0012\u0004\u0012\u0002H \u0012\u0004\u0012\u0002H\u00020!2-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001a\u0089\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001\"\u0006\b\u0002\u0010\u000e\u0018\u0001\"\u0006\b\u0003\u0010\u0010\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0014\u0018\u0001\"\u0006\b\u0006\u0010\u0016\u0018\u0001\"\u0006\b\u0007\u0010\u0018\u0018\u0001\"\u0006\b\b\u0010\u001a\u0018\u0001\"\u0006\b\t\u0010\u001c\u0018\u0001\"\u0006\b\n\u0010\u001e\u0018\u0001\"\u0006\b\u000b\u0010 \u0018\u0001\"\u0006\b\f\u0010\"\u0018\u0001*\u00020\u00042V\b\u0004\u0010\u0005\u001aP\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u001e\u0012\u0004\u0012\u0002H \u0012\u0004\u0012\u0002H\"\u0012\u0004\u0012\u0002H\u00020#2-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001a\u0097\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001\"\u0006\b\u0002\u0010\u000e\u0018\u0001\"\u0006\b\u0003\u0010\u0010\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0014\u0018\u0001\"\u0006\b\u0006\u0010\u0016\u0018\u0001\"\u0006\b\u0007\u0010\u0018\u0018\u0001\"\u0006\b\b\u0010\u001a\u0018\u0001\"\u0006\b\t\u0010\u001c\u0018\u0001\"\u0006\b\n\u0010\u001e\u0018\u0001\"\u0006\b\u000b\u0010 \u0018\u0001\"\u0006\b\f\u0010\"\u0018\u0001\"\u0006\b\r\u0010$\u0018\u0001*\u00020\u00042\\\b\u0004\u0010\u0005\u001aV\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u001e\u0012\u0004\u0012\u0002H \u0012\u0004\u0012\u0002H\"\u0012\u0004\u0012\u0002H$\u0012\u0004\u0012\u0002H\u00020%2-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001a¥\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001\"\u0006\b\u0002\u0010\u000e\u0018\u0001\"\u0006\b\u0003\u0010\u0010\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0014\u0018\u0001\"\u0006\b\u0006\u0010\u0016\u0018\u0001\"\u0006\b\u0007\u0010\u0018\u0018\u0001\"\u0006\b\b\u0010\u001a\u0018\u0001\"\u0006\b\t\u0010\u001c\u0018\u0001\"\u0006\b\n\u0010\u001e\u0018\u0001\"\u0006\b\u000b\u0010 \u0018\u0001\"\u0006\b\f\u0010\"\u0018\u0001\"\u0006\b\r\u0010$\u0018\u0001\"\u0006\b\u000e\u0010&\u0018\u0001*\u00020\u00042b\b\u0004\u0010\u0005\u001a\\\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u001e\u0012\u0004\u0012\u0002H \u0012\u0004\u0012\u0002H\"\u0012\u0004\u0012\u0002H$\u0012\u0004\u0012\u0002H&\u0012\u0004\u0012\u0002H\u00020'2-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001a³\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001\"\u0006\b\u0002\u0010\u000e\u0018\u0001\"\u0006\b\u0003\u0010\u0010\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0014\u0018\u0001\"\u0006\b\u0006\u0010\u0016\u0018\u0001\"\u0006\b\u0007\u0010\u0018\u0018\u0001\"\u0006\b\b\u0010\u001a\u0018\u0001\"\u0006\b\t\u0010\u001c\u0018\u0001\"\u0006\b\n\u0010\u001e\u0018\u0001\"\u0006\b\u000b\u0010 \u0018\u0001\"\u0006\b\f\u0010\"\u0018\u0001\"\u0006\b\r\u0010$\u0018\u0001\"\u0006\b\u000e\u0010&\u0018\u0001\"\u0006\b\u000f\u0010(\u0018\u0001*\u00020\u00042h\b\u0004\u0010\u0005\u001ab\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u001e\u0012\u0004\u0012\u0002H \u0012\u0004\u0012\u0002H\"\u0012\u0004\u0012\u0002H$\u0012\u0004\u0012\u0002H&\u0012\u0004\u0012\u0002H(\u0012\u0004\u0012\u0002H\u00020)2-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001aÁ\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001\"\u0006\b\u0002\u0010\u000e\u0018\u0001\"\u0006\b\u0003\u0010\u0010\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0014\u0018\u0001\"\u0006\b\u0006\u0010\u0016\u0018\u0001\"\u0006\b\u0007\u0010\u0018\u0018\u0001\"\u0006\b\b\u0010\u001a\u0018\u0001\"\u0006\b\t\u0010\u001c\u0018\u0001\"\u0006\b\n\u0010\u001e\u0018\u0001\"\u0006\b\u000b\u0010 \u0018\u0001\"\u0006\b\f\u0010\"\u0018\u0001\"\u0006\b\r\u0010$\u0018\u0001\"\u0006\b\u000e\u0010&\u0018\u0001\"\u0006\b\u000f\u0010(\u0018\u0001\"\u0006\b\u0010\u0010*\u0018\u0001*\u00020\u00042n\b\u0004\u0010\u0005\u001ah\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u001e\u0012\u0004\u0012\u0002H \u0012\u0004\u0012\u0002H\"\u0012\u0004\u0012\u0002H$\u0012\u0004\u0012\u0002H&\u0012\u0004\u0012\u0002H(\u0012\u0004\u0012\u0002H*\u0012\u0004\u0012\u0002H\u00020+2-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001aÏ\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001\"\u0006\b\u0002\u0010\u000e\u0018\u0001\"\u0006\b\u0003\u0010\u0010\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0014\u0018\u0001\"\u0006\b\u0006\u0010\u0016\u0018\u0001\"\u0006\b\u0007\u0010\u0018\u0018\u0001\"\u0006\b\b\u0010\u001a\u0018\u0001\"\u0006\b\t\u0010\u001c\u0018\u0001\"\u0006\b\n\u0010\u001e\u0018\u0001\"\u0006\b\u000b\u0010 \u0018\u0001\"\u0006\b\f\u0010\"\u0018\u0001\"\u0006\b\r\u0010$\u0018\u0001\"\u0006\b\u000e\u0010&\u0018\u0001\"\u0006\b\u000f\u0010(\u0018\u0001\"\u0006\b\u0010\u0010*\u0018\u0001\"\u0006\b\u0011\u0010,\u0018\u0001*\u00020\u00042t\b\u0004\u0010\u0005\u001an\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u001e\u0012\u0004\u0012\u0002H \u0012\u0004\u0012\u0002H\"\u0012\u0004\u0012\u0002H$\u0012\u0004\u0012\u0002H&\u0012\u0004\u0012\u0002H(\u0012\u0004\u0012\u0002H*\u0012\u0004\u0012\u0002H,\u0012\u0004\u0012\u0002H\u00020-2-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001aÝ\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001\"\u0006\b\u0002\u0010\u000e\u0018\u0001\"\u0006\b\u0003\u0010\u0010\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0014\u0018\u0001\"\u0006\b\u0006\u0010\u0016\u0018\u0001\"\u0006\b\u0007\u0010\u0018\u0018\u0001\"\u0006\b\b\u0010\u001a\u0018\u0001\"\u0006\b\t\u0010\u001c\u0018\u0001\"\u0006\b\n\u0010\u001e\u0018\u0001\"\u0006\b\u000b\u0010 \u0018\u0001\"\u0006\b\f\u0010\"\u0018\u0001\"\u0006\b\r\u0010$\u0018\u0001\"\u0006\b\u000e\u0010&\u0018\u0001\"\u0006\b\u000f\u0010(\u0018\u0001\"\u0006\b\u0010\u0010*\u0018\u0001\"\u0006\b\u0011\u0010,\u0018\u0001\"\u0006\b\u0012\u0010.\u0018\u0001*\u00020\u00042z\b\u0004\u0010\u0005\u001at\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u001e\u0012\u0004\u0012\u0002H \u0012\u0004\u0012\u0002H\"\u0012\u0004\u0012\u0002H$\u0012\u0004\u0012\u0002H&\u0012\u0004\u0012\u0002H(\u0012\u0004\u0012\u0002H*\u0012\u0004\u0012\u0002H,\u0012\u0004\u0012\u0002H.\u0012\u0004\u0012\u0002H\u00020/2-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001aì\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001\"\u0006\b\u0002\u0010\u000e\u0018\u0001\"\u0006\b\u0003\u0010\u0010\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0014\u0018\u0001\"\u0006\b\u0006\u0010\u0016\u0018\u0001\"\u0006\b\u0007\u0010\u0018\u0018\u0001\"\u0006\b\b\u0010\u001a\u0018\u0001\"\u0006\b\t\u0010\u001c\u0018\u0001\"\u0006\b\n\u0010\u001e\u0018\u0001\"\u0006\b\u000b\u0010 \u0018\u0001\"\u0006\b\f\u0010\"\u0018\u0001\"\u0006\b\r\u0010$\u0018\u0001\"\u0006\b\u000e\u0010&\u0018\u0001\"\u0006\b\u000f\u0010(\u0018\u0001\"\u0006\b\u0010\u0010*\u0018\u0001\"\u0006\b\u0011\u0010,\u0018\u0001\"\u0006\b\u0012\u0010.\u0018\u0001\"\u0006\b\u0013\u00100\u0018\u0001*\u00020\u00042\u0080\u0001\b\u0004\u0010\u0005\u001az\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u001e\u0012\u0004\u0012\u0002H \u0012\u0004\u0012\u0002H\"\u0012\u0004\u0012\u0002H$\u0012\u0004\u0012\u0002H&\u0012\u0004\u0012\u0002H(\u0012\u0004\u0012\u0002H*\u0012\u0004\u0012\u0002H,\u0012\u0004\u0012\u0002H.\u0012\u0004\u0012\u0002H0\u0012\u0004\u0012\u0002H\u0002012-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001aû\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001\"\u0006\b\u0002\u0010\u000e\u0018\u0001\"\u0006\b\u0003\u0010\u0010\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0014\u0018\u0001\"\u0006\b\u0006\u0010\u0016\u0018\u0001\"\u0006\b\u0007\u0010\u0018\u0018\u0001\"\u0006\b\b\u0010\u001a\u0018\u0001\"\u0006\b\t\u0010\u001c\u0018\u0001\"\u0006\b\n\u0010\u001e\u0018\u0001\"\u0006\b\u000b\u0010 \u0018\u0001\"\u0006\b\f\u0010\"\u0018\u0001\"\u0006\b\r\u0010$\u0018\u0001\"\u0006\b\u000e\u0010&\u0018\u0001\"\u0006\b\u000f\u0010(\u0018\u0001\"\u0006\b\u0010\u0010*\u0018\u0001\"\u0006\b\u0011\u0010,\u0018\u0001\"\u0006\b\u0012\u0010.\u0018\u0001\"\u0006\b\u0013\u00100\u0018\u0001\"\u0006\b\u0014\u00102\u0018\u0001*\u00020\u00042\u0087\u0001\b\u0004\u0010\u0005\u001a\u0080\u0001\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u001e\u0012\u0004\u0012\u0002H \u0012\u0004\u0012\u0002H\"\u0012\u0004\u0012\u0002H$\u0012\u0004\u0012\u0002H&\u0012\u0004\u0012\u0002H(\u0012\u0004\u0012\u0002H*\u0012\u0004\u0012\u0002H,\u0012\u0004\u0012\u0002H.\u0012\u0004\u0012\u0002H0\u0012\u0004\u0012\u0002H2\u0012\u0004\u0012\u0002H\u0002032-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001a\u0089\u0003\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001\"\u0006\b\u0002\u0010\u000e\u0018\u0001\"\u0006\b\u0003\u0010\u0010\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0014\u0018\u0001\"\u0006\b\u0006\u0010\u0016\u0018\u0001\"\u0006\b\u0007\u0010\u0018\u0018\u0001\"\u0006\b\b\u0010\u001a\u0018\u0001\"\u0006\b\t\u0010\u001c\u0018\u0001\"\u0006\b\n\u0010\u001e\u0018\u0001\"\u0006\b\u000b\u0010 \u0018\u0001\"\u0006\b\f\u0010\"\u0018\u0001\"\u0006\b\r\u0010$\u0018\u0001\"\u0006\b\u000e\u0010&\u0018\u0001\"\u0006\b\u000f\u0010(\u0018\u0001\"\u0006\b\u0010\u0010*\u0018\u0001\"\u0006\b\u0011\u0010,\u0018\u0001\"\u0006\b\u0012\u0010.\u0018\u0001\"\u0006\b\u0013\u00100\u0018\u0001\"\u0006\b\u0014\u00102\u0018\u0001\"\u0006\b\u0015\u00104\u0018\u0001*\u00020\u00042\u008d\u0001\b\u0004\u0010\u0005\u001a\u0086\u0001\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u001e\u0012\u0004\u0012\u0002H \u0012\u0004\u0012\u0002H\"\u0012\u0004\u0012\u0002H$\u0012\u0004\u0012\u0002H&\u0012\u0004\u0012\u0002H(\u0012\u0004\u0012\u0002H*\u0012\u0004\u0012\u0002H,\u0012\u0004\u0012\u0002H.\u0012\u0004\u0012\u0002H0\u0012\u0004\u0012\u0002H2\u0012\u0004\u0012\u0002H4\u0012\u0004\u0012\u0002H\u0002052-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001a\u0097\u0003\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0006\b\u0001\u0010\r\u0018\u0001\"\u0006\b\u0002\u0010\u000e\u0018\u0001\"\u0006\b\u0003\u0010\u0010\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0014\u0018\u0001\"\u0006\b\u0006\u0010\u0016\u0018\u0001\"\u0006\b\u0007\u0010\u0018\u0018\u0001\"\u0006\b\b\u0010\u001a\u0018\u0001\"\u0006\b\t\u0010\u001c\u0018\u0001\"\u0006\b\n\u0010\u001e\u0018\u0001\"\u0006\b\u000b\u0010 \u0018\u0001\"\u0006\b\f\u0010\"\u0018\u0001\"\u0006\b\r\u0010$\u0018\u0001\"\u0006\b\u000e\u0010&\u0018\u0001\"\u0006\b\u000f\u0010(\u0018\u0001\"\u0006\b\u0010\u0010*\u0018\u0001\"\u0006\b\u0011\u0010,\u0018\u0001\"\u0006\b\u0012\u0010.\u0018\u0001\"\u0006\b\u0013\u00100\u0018\u0001\"\u0006\b\u0014\u00102\u0018\u0001\"\u0006\b\u0015\u00104\u0018\u0001\"\u0006\b\u0016\u00106\u0018\u0001*\u00020\u00042\u0093\u0001\b\u0004\u0010\u0005\u001a\u008c\u0001\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u001e\u0012\u0004\u0012\u0002H \u0012\u0004\u0012\u0002H\"\u0012\u0004\u0012\u0002H$\u0012\u0004\u0012\u0002H&\u0012\u0004\u0012\u0002H(\u0012\u0004\u0012\u0002H*\u0012\u0004\u0012\u0002H,\u0012\u0004\u0012\u0002H.\u0012\u0004\u0012\u0002H0\u0012\u0004\u0012\u0002H2\u0012\u0004\u0012\u0002H4\u0012\u0004\u0012\u0002H6\u0012\u0004\u0012\u0002H\u0002072-\b\n\u0010\u0007\u001a'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bj\n\u0012\u0004\u0012\u0002H\u0002\u0018\u0001`\f¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00068"}, d2 = {"viewModelOf", "Lorg/koin/core/definition/KoinDefinition;", "R", "Landroidx/lifecycle/ViewModel;", "Lorg/koin/core/module/Module;", "constructor", "Lkotlin/Function0;", "options", "Lkotlin/Function1;", "Lorg/koin/core/definition/BeanDefinition;", "", "Lkotlin/ExtensionFunctionType;", "Lorg/koin/core/module/dsl/DefinitionOptions;", "T1", "T2", "Lkotlin/Function2;", "T3", "Lkotlin/Function3;", "T4", "Lkotlin/Function4;", "T5", "Lkotlin/Function5;", "T6", "Lkotlin/Function6;", "T7", "Lkotlin/Function7;", "T8", "Lkotlin/Function8;", "T9", "Lkotlin/Function9;", "T10", "Lkotlin/Function10;", "T11", "Lkotlin/Function11;", "T12", "Lkotlin/Function12;", "T13", "Lkotlin/Function13;", "T14", "Lkotlin/Function14;", "T15", "Lkotlin/Function15;", "T16", "Lkotlin/Function16;", "T17", "Lkotlin/Function17;", "T18", "Lkotlin/Function18;", "T19", "Lkotlin/Function19;", "T20", "Lkotlin/Function20;", "T21", "Lkotlin/Function21;", "T22", "Lkotlin/Function22;", "koin-compose-viewmodel_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ViewModelOfKt {
    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function0 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass1(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$1, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass1<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function0<R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(Function0<? extends R> function0) {
            this.$constructor = function0;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            return (ViewModel) this.$constructor.invoke();
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function0<? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass1(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function1 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass2(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$2, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass2<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function1<T1, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Function1<? super T1, ? extends R> function1) {
            this.$constructor = function1;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function1 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            return (ViewModel) constructor$iv.invoke(viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function1<? super T1, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass2(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function2 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass3(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$3, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass3<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function2<T1, T2, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass3(Function2<? super T1, ? super T2, ? extends R> function2) {
            this.$constructor = function2;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function2 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            Object obj = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T2");
            return (ViewModel) constructor$iv.invoke(obj, viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1, T2> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function2<? super T1, ? super T2, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass3(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function3 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass4(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$4, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass4<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function3<T1, T2, T3, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass4(Function3<? super T1, ? super T2, ? super T3, ? extends R> function3) {
            this.$constructor = function3;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function3 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            Object obj = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T2");
            Object obj2 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T3");
            return (ViewModel) constructor$iv.invoke(obj, obj2, viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1, T2, T3> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function3<? super T1, ? super T2, ? super T3, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass4(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function4 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass5(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$5, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass5<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function4<T1, T2, T3, T4, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass5(Function4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> function4) {
            this.$constructor = function4;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function4 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            Object obj = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T2");
            Object obj2 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T3");
            Object obj3 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T4");
            return (ViewModel) constructor$iv.invoke(obj, obj2, obj3, viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1, T2, T3, T4> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass5(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function5 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass6(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$6, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass6<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function5<T1, T2, T3, T4, T5, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass6(Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> function5) {
            this.$constructor = function5;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function5 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            Object obj = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T2");
            Object obj2 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T3");
            Object obj3 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T4");
            Object obj4 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T5");
            return (ViewModel) constructor$iv.invoke(obj, obj2, obj3, obj4, viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1, T2, T3, T4, T5> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass6(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function6 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass7(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$7, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass7<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function6<T1, T2, T3, T4, T5, T6, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass7(Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> function6) {
            this.$constructor = function6;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function6 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            Object obj = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T2");
            Object obj2 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T3");
            Object obj3 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T4");
            Object obj4 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T5");
            Object obj5 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T6");
            return (ViewModel) constructor$iv.invoke(obj, obj2, obj3, obj4, obj5, viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1, T2, T3, T4, T5, T6> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass7(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function7 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass8(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$8, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass8<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function7<T1, T2, T3, T4, T5, T6, T7, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass8(Function7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> function7) {
            this.$constructor = function7;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function7 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            Object obj = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T2");
            Object obj2 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T3");
            Object obj3 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T4");
            Object obj4 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T5");
            Object obj5 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T6");
            Object obj6 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T7");
            return (ViewModel) constructor$iv.invoke(obj, obj2, obj3, obj4, obj5, obj6, viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1, T2, T3, T4, T5, T6, T7> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass8(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function8 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass9(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$9, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass9<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function8<T1, T2, T3, T4, T5, T6, T7, T8, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass9(Function8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> function8) {
            this.$constructor = function8;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function8 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            Object obj = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T2");
            Object obj2 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T3");
            Object obj3 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T4");
            Object obj4 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T5");
            Object obj5 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T6");
            Object obj6 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T7");
            Object obj7 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T8");
            return (ViewModel) constructor$iv.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1, T2, T3, T4, T5, T6, T7, T8> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass9(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function9 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass10(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$10, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass10<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass10(Function9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> function9) {
            this.$constructor = function9;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function9 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            Object obj = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T2");
            Object obj2 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T3");
            Object obj3 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T4");
            Object obj4 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T5");
            Object obj5 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T6");
            Object obj6 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T7");
            Object obj7 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T8");
            Object obj8 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T9");
            return (ViewModel) constructor$iv.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1, T2, T3, T4, T5, T6, T7, T8, T9> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass10(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function10 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass11(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$11, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass11<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass11(Function10<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? extends R> function10) {
            this.$constructor = function10;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function10 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            Object obj = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T2");
            Object obj2 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T3");
            Object obj3 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T4");
            Object obj4 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T5");
            Object obj5 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T6");
            Object obj6 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T7");
            Object obj7 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T8");
            Object obj8 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T9");
            Object obj9 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T10");
            return (ViewModel) constructor$iv.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function10<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass11(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function11 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass12(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$12, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass12<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass12(Function11<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? extends R> function11) {
            this.$constructor = function11;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function11 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            Object obj = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T2");
            Object obj2 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T3");
            Object obj3 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T4");
            Object obj4 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T5");
            Object obj5 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T6");
            Object obj6 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T7");
            Object obj7 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T8");
            Object obj8 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T9");
            Object obj9 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T10");
            Object obj10 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T11");
            return (ViewModel) constructor$iv.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function11<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass12(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function12 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass13(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$13, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass13<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass13(Function12<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? extends R> function12) {
            this.$constructor = function12;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function12 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            Object obj = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T2");
            Object obj2 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T3");
            Object obj3 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T4");
            Object obj4 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T5");
            Object obj5 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T6");
            Object obj6 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T7");
            Object obj7 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T8");
            Object obj8 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T9");
            Object obj9 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T10");
            Object obj10 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T11");
            Object obj11 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T12");
            return (ViewModel) constructor$iv.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function12<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass13(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function13 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass14(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$14, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass14<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function13<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass14(Function13<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? super T13, ? extends R> function13) {
            this.$constructor = function13;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function13 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            Object obj = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T2");
            Object obj2 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T3");
            Object obj3 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T4");
            Object obj4 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T5");
            Object obj5 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T6");
            Object obj6 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T7");
            Object obj7 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T8");
            Object obj8 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T9");
            Object obj9 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T10");
            Object obj10 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T11");
            Object obj11 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T12");
            Object obj12 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T13");
            return (ViewModel) constructor$iv.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function13<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? super T13, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass14(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function14 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass15(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$15, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass15<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function14<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass15(Function14<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? super T13, ? super T14, ? extends R> function14) {
            this.$constructor = function14;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function14 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            Object obj = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T2");
            Object obj2 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T3");
            Object obj3 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T4");
            Object obj4 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T5");
            Object obj5 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T6");
            Object obj6 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T7");
            Object obj7 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T8");
            Object obj8 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T9");
            Object obj9 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T10");
            Object obj10 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T11");
            Object obj11 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T12");
            Object obj12 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T13");
            Object obj13 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T14");
            return (ViewModel) constructor$iv.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function14<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? super T13, ? super T14, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass15(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function15 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass16(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$16, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass16<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function15<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass16(Function15<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? super T13, ? super T14, ? super T15, ? extends R> function15) {
            this.$constructor = function15;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function15 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            Object obj = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T2");
            Object obj2 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T3");
            Object obj3 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T4");
            Object obj4 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T5");
            Object obj5 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T6");
            Object obj6 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T7");
            Object obj7 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T8");
            Object obj8 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T9");
            Object obj9 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T10");
            Object obj10 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T11");
            Object obj11 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T12");
            Object obj12 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T13");
            Object obj13 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T14");
            Object obj14 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T15");
            return (ViewModel) constructor$iv.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function15<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? super T13, ? super T14, ? super T15, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass16(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function16 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass17(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$17, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass17<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function16<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass17(Function16<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? super T13, ? super T14, ? super T15, ? super T16, ? extends R> function16) {
            this.$constructor = function16;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function16 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            Object obj = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T2");
            Object obj2 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T3");
            Object obj3 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T4");
            Object obj4 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T5");
            Object obj5 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T6");
            Object obj6 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T7");
            Object obj7 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T8");
            Object obj8 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T9");
            Object obj9 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T10");
            Object obj10 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T11");
            Object obj11 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T12");
            Object obj12 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T13");
            Object obj13 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T14");
            Object obj14 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T15");
            Object obj15 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T16");
            return (ViewModel) constructor$iv.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function16<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? super T13, ? super T14, ? super T15, ? super T16, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass17(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function17 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass18(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$18, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass18<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function17<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass18(Function17<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? super T13, ? super T14, ? super T15, ? super T16, ? super T17, ? extends R> function17) {
            this.$constructor = function17;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function17 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            Object obj = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T2");
            Object obj2 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T3");
            Object obj3 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T4");
            Object obj4 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T5");
            Object obj5 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T6");
            Object obj6 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T7");
            Object obj7 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T8");
            Object obj8 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T9");
            Object obj9 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T10");
            Object obj10 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T11");
            Object obj11 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T12");
            Object obj12 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T13");
            Object obj13 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T14");
            Object obj14 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T15");
            Object obj15 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T16");
            Object obj16 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T17");
            return (ViewModel) constructor$iv.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function17<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? super T13, ? super T14, ? super T15, ? super T16, ? super T17, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass18(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function18 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass19(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$19, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass19<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function18<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass19(Function18<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? super T13, ? super T14, ? super T15, ? super T16, ? super T17, ? super T18, ? extends R> function18) {
            this.$constructor = function18;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function18 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            Object obj = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T2");
            Object obj2 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T3");
            Object obj3 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T4");
            Object obj4 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T5");
            Object obj5 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T6");
            Object obj6 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T7");
            Object obj7 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T8");
            Object obj8 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T9");
            Object obj9 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T10");
            Object obj10 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T11");
            Object obj11 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T12");
            Object obj12 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T13");
            Object obj13 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T14");
            Object obj14 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T15");
            Object obj15 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T16");
            Object obj16 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T17");
            Object obj17 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T18");
            return (ViewModel) constructor$iv.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function18<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? super T13, ? super T14, ? super T15, ? super T16, ? super T17, ? super T18, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass19(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function19 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass20(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$20, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass20<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function19<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass20(Function19<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? super T13, ? super T14, ? super T15, ? super T16, ? super T17, ? super T18, ? super T19, ? extends R> function19) {
            this.$constructor = function19;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function19 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            Object obj = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T2");
            Object obj2 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T3");
            Object obj3 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T4");
            Object obj4 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T5");
            Object obj5 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T6");
            Object obj6 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T7");
            Object obj7 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T8");
            Object obj8 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T9");
            Object obj9 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T10");
            Object obj10 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T11");
            Object obj11 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T12");
            Object obj12 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T13");
            Object obj13 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T14");
            Object obj14 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T15");
            Object obj15 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T16");
            Object obj16 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T17");
            Object obj17 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T18");
            Object obj18 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T19");
            return (ViewModel) constructor$iv.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, obj18, viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function19<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? super T13, ? super T14, ? super T15, ? super T16, ? super T17, ? super T18, ? super T19, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass20(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function20 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass21(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$21, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass21<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function20<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass21(Function20<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? super T13, ? super T14, ? super T15, ? super T16, ? super T17, ? super T18, ? super T19, ? super T20, ? extends R> function20) {
            this.$constructor = function20;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function20 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            Object obj = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T2");
            Object obj2 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T3");
            Object obj3 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T4");
            Object obj4 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T5");
            Object obj5 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T6");
            Object obj6 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T7");
            Object obj7 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T8");
            Object obj8 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T9");
            Object obj9 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T10");
            Object obj10 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T11");
            Object obj11 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T12");
            Object obj12 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T13");
            Object obj13 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T14");
            Object obj14 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T15");
            Object obj15 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T16");
            Object obj16 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T17");
            Object obj17 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T18");
            Object obj18 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T19");
            Object obj19 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T20");
            return (ViewModel) constructor$iv.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, obj18, obj19, viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function20<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? super T13, ? super T14, ? super T15, ? super T16, ? super T17, ? super T18, ? super T19, ? super T20, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass21(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function21 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass22(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$22, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass22<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function21<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass22(Function21<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? super T13, ? super T14, ? super T15, ? super T16, ? super T17, ? super T18, ? super T19, ? super T20, ? super T21, ? extends R> function21) {
            this.$constructor = function21;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function21 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            Object obj = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T2");
            Object obj2 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T3");
            Object obj3 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T4");
            Object obj4 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T5");
            Object obj5 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T6");
            Object obj6 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T7");
            Object obj7 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T8");
            Object obj8 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T9");
            Object obj9 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T10");
            Object obj10 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T11");
            Object obj11 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T12");
            Object obj12 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T13");
            Object obj13 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T14");
            Object obj14 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T15");
            Object obj15 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T16");
            Object obj16 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T17");
            Object obj17 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T18");
            Object obj18 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T19");
            Object obj19 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T20");
            Object obj20 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T21");
            return (ViewModel) constructor$iv.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, obj18, obj19, obj20, viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function21<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? super T13, ? super T14, ? super T15, ? super T16, ? super T17, ? super T18, ? super T19, ? super T20, ? super T21, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass22(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }

    public static /* synthetic */ KoinDefinition viewModelOf$default(Module $this$viewModelOf_u24default, Function22 constructor, Function1 options, int i, Object obj) {
        Function1 options2;
        if ((i & 2) == 0) {
            options2 = options;
        } else {
            options2 = null;
        }
        Intrinsics.checkNotNullParameter($this$viewModelOf_u24default, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass23(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf_u24default.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf_u24default, factory$iv$iv$iv), options2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: org.koin.compose.viewmodel.dsl.ViewModelOfKt$viewModelOf$23, reason: invalid class name */
    /* JADX INFO: compiled from: ViewModelOf.kt */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class AnonymousClass23<R> implements Function2<Scope, ParametersHolder, R> {
        final /* synthetic */ Function22<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, T22, R> $constructor;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass23(Function22<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? super T13, ? super T14, ? super T15, ? super T16, ? super T17, ? super T18, ? super T19, ? super T20, ? super T21, ? super T22, ? extends R> function22) {
            this.$constructor = function22;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)TR; */
        @Override // kotlin.jvm.functions.Function2
        public final ViewModel invoke(Scope viewModel, ParametersHolder it) {
            Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
            Intrinsics.checkNotNullParameter(it, "it");
            Function22 constructor$iv = this.$constructor;
            Intrinsics.reifiedOperationMarker(4, "T1");
            Object obj = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T2");
            Object obj2 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T3");
            Object obj3 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T4");
            Object obj4 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T5");
            Object obj5 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T6");
            Object obj6 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T7");
            Object obj7 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T8");
            Object obj8 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T9");
            Object obj9 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T10");
            Object obj10 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T11");
            Object obj11 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T12");
            Object obj12 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T13");
            Object obj13 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T14");
            Object obj14 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T15");
            Object obj15 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T16");
            Object obj16 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T17");
            Object obj17 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T18");
            Object obj18 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T19");
            Object obj19 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T20");
            Object obj20 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T21");
            Object obj21 = viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null);
            Intrinsics.reifiedOperationMarker(4, "T22");
            return (ViewModel) constructor$iv.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, obj18, obj19, obj20, obj21, viewModel.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
        }
    }

    @Deprecated(message = "Moved ViewModel DSL package. Remove old imports and use org.koin.core.module.dsl.*")
    public static final /* synthetic */ <R extends ViewModel, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, T22> KoinDefinition<R> viewModelOf(Module $this$viewModelOf, Function22<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? super T12, ? super T13, ? super T14, ? super T15, ? super T16, ? super T17, ? super T18, ? super T19, ? super T20, ? super T21, ? super T22, ? extends R> constructor, Function1<? super BeanDefinition<R>, Unit> function1) {
        Intrinsics.checkNotNullParameter($this$viewModelOf, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        Function2 definition$iv = new AnonymousClass23(constructor);
        Qualifier scopeQualifier$iv$iv$iv = ScopeRegistry.INSTANCE.getRootScopeQualifier();
        Kind kind$iv$iv$iv$iv$iv = Kind.Factory;
        List secondaryTypes$iv$iv$iv$iv$iv = CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        BeanDefinition def$iv$iv$iv$iv = new BeanDefinition(scopeQualifier$iv$iv$iv, Reflection.getOrCreateKotlinClass(Object.class), null, definition$iv, kind$iv$iv$iv$iv$iv, secondaryTypes$iv$iv$iv$iv$iv, null, 64, null);
        FactoryInstanceFactory factory$iv$iv$iv = new FactoryInstanceFactory(def$iv$iv$iv$iv);
        $this$viewModelOf.indexPrimaryType(factory$iv$iv$iv);
        return OptionDSLKt.onOptions(new KoinDefinition($this$viewModelOf, factory$iv$iv$iv), function1);
    }
}

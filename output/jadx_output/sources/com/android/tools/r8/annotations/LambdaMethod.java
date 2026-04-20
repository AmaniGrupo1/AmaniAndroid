package com.android.tools.r8.annotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes18.dex */
@SynthesizedClassV2(apiLevel = -2, kind = 5, versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0")
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
public /* synthetic */ @interface LambdaMethod {
    String holder();

    String method();

    String proto();
}

package com.google.gson;

import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes22.dex */
public interface JsonSerializer<T> {
    JsonElement serialize(T t, Type type, JsonSerializationContext jsonSerializationContext);
}

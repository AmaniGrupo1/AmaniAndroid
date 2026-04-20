package com.google.re2j;

/* JADX INFO: loaded from: classes22.dex */
public class PatternSyntaxException extends RuntimeException {
    private final String error;
    private final String input;

    public PatternSyntaxException(String error, String input) {
        super("error parsing regexp: " + error + ": `" + input + "`");
        this.error = error;
        this.input = input;
    }

    public PatternSyntaxException(String error) {
        super("error parsing regexp: " + error);
        this.error = error;
        this.input = "";
    }

    public int getIndex() {
        return -1;
    }

    public String getDescription() {
        return this.error;
    }

    public String getPattern() {
        return this.input;
    }
}

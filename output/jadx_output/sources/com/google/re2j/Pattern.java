package com.google.re2j;

import java.io.Serializable;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes22.dex */
public final class Pattern implements Serializable {
    public static final int CASE_INSENSITIVE = 1;
    public static final int DISABLE_UNICODE_GROUPS = 8;
    public static final int DOTALL = 2;
    public static final int LONGEST_MATCH = 16;
    public static final int MULTILINE = 4;
    private static final long serialVersionUID = 0;
    private final int flags;
    private final String pattern;
    private final transient RE2 re2;

    Pattern(String pattern, int flags, RE2 re2) {
        if (pattern == null) {
            throw new NullPointerException("pattern is null");
        }
        if (re2 == null) {
            throw new NullPointerException("re2 is null");
        }
        this.pattern = pattern;
        this.flags = flags;
        this.re2 = re2;
    }

    public void reset() {
        this.re2.reset();
    }

    public int flags() {
        return this.flags;
    }

    public String pattern() {
        return this.pattern;
    }

    RE2 re2() {
        return this.re2;
    }

    public static Pattern compile(String regex) {
        return compile(regex, regex, 0);
    }

    public static Pattern compile(String regex, int flags) {
        String flregex = regex;
        if ((flags & 1) != 0) {
            flregex = "(?i)" + flregex;
        }
        if ((flags & 2) != 0) {
            flregex = "(?s)" + flregex;
        }
        if ((flags & 4) != 0) {
            flregex = "(?m)" + flregex;
        }
        if ((flags & (-32)) != 0) {
            throw new IllegalArgumentException("Flags should only be a combination of MULTILINE, DOTALL, CASE_INSENSITIVE, DISABLE_UNICODE_GROUPS, LONGEST_MATCH");
        }
        return compile(flregex, regex, flags);
    }

    private static Pattern compile(String flregex, String regex, int flags) {
        int re2Flags = 212;
        if ((flags & 8) != 0) {
            re2Flags = 212 & (-129);
        }
        return new Pattern(regex, flags, RE2.compileImpl(flregex, re2Flags, (flags & 16) != 0));
    }

    public static boolean matches(String regex, CharSequence input) {
        return compile(regex).matcher(input).matches();
    }

    public static boolean matches(String regex, byte[] input) {
        return compile(regex).matcher(input).matches();
    }

    public boolean matches(String input) {
        return matcher(input).matches();
    }

    public boolean matches(byte[] input) {
        return matcher(input).matches();
    }

    public Matcher matcher(CharSequence input) {
        return new Matcher(this, input);
    }

    public Matcher matcher(byte[] input) {
        return new Matcher(this, MatcherInput.utf8(input));
    }

    Matcher matcher(MatcherInput input) {
        return new Matcher(this, input);
    }

    public String[] split(String input) {
        return split(input, 0);
    }

    public String[] split(String input, int limit) {
        return split(new Matcher(this, input), limit);
    }

    private String[] split(Matcher m, int limit) {
        int matchCount = 0;
        int arraySize = 0;
        int last = 0;
        while (m.find()) {
            matchCount++;
            if (limit != 0 || last < m.start()) {
                arraySize = matchCount;
            }
            last = m.end();
        }
        if (last < m.inputLength() || limit != 0) {
            arraySize = matchCount + 1;
        }
        int trunc = 0;
        if (limit > 0 && arraySize > limit) {
            arraySize = limit;
            trunc = 1;
        }
        String[] array = new String[arraySize];
        int i = 0;
        int last2 = 0;
        m.reset();
        while (m.find() && i < arraySize - trunc) {
            array[i] = m.substring(last2, m.start());
            last2 = m.end();
            i++;
        }
        if (i < arraySize) {
            array[i] = m.substring(last2, m.inputLength());
        }
        return array;
    }

    public static String quote(String s) {
        return RE2.quoteMeta(s);
    }

    public String toString() {
        return this.pattern;
    }

    public int groupCount() {
        return this.re2.numberOfCapturingGroups();
    }

    public Map<String, Integer> namedGroups() {
        return Collections.unmodifiableMap(this.re2.namedGroups);
    }

    Object readResolve() {
        return compile(this.pattern, this.flags);
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Pattern other = (Pattern) o;
        if (this.flags == other.flags && this.pattern.equals(other.pattern)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int result = this.pattern.hashCode();
        return (result * 31) + this.flags;
    }
}

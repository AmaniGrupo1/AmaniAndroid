package com.google.re2j;

import com.google.re2j.MatcherInput;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes22.dex */
public final class Matcher {
    private int anchorFlag;
    private int appendPos;
    private final int groupCount;
    private final int[] groups;
    private boolean hasGroups;
    private boolean hasMatch;
    private int inputLength;
    private MatcherInput matcherInput;
    private final Map<String, Integer> namedGroups;
    private final Pattern pattern;

    private Matcher(Pattern pattern) {
        if (pattern == null) {
            throw new NullPointerException("pattern is null");
        }
        this.pattern = pattern;
        RE2 re2 = pattern.re2();
        this.groupCount = re2.numberOfCapturingGroups();
        this.groups = new int[(this.groupCount * 2) + 2];
        this.namedGroups = re2.namedGroups;
    }

    Matcher(Pattern pattern, CharSequence input) {
        this(pattern);
        reset(input);
    }

    Matcher(Pattern pattern, MatcherInput input) {
        this(pattern);
        reset(input);
    }

    public Pattern pattern() {
        return this.pattern;
    }

    public Matcher reset() {
        this.inputLength = this.matcherInput.length();
        this.appendPos = 0;
        this.hasMatch = false;
        this.hasGroups = false;
        return this;
    }

    public Matcher reset(CharSequence input) {
        return reset(MatcherInput.utf16(input));
    }

    public Matcher reset(byte[] bytes) {
        return reset(MatcherInput.utf8(bytes));
    }

    private Matcher reset(MatcherInput input) {
        if (input == null) {
            throw new NullPointerException("input is null");
        }
        this.matcherInput = input;
        reset();
        return this;
    }

    public int start() {
        return start(0);
    }

    public int end() {
        return end(0);
    }

    public int start(int group) {
        loadGroup(group);
        return this.groups[group * 2];
    }

    public int start(String group) {
        Integer g = this.namedGroups.get(group);
        if (g == null) {
            throw new IllegalArgumentException("group '" + group + "' not found");
        }
        return start(g.intValue());
    }

    public int end(int group) {
        loadGroup(group);
        return this.groups[(group * 2) + 1];
    }

    public int end(String group) {
        Integer g = this.namedGroups.get(group);
        if (g == null) {
            throw new IllegalArgumentException("group '" + group + "' not found");
        }
        return end(g.intValue());
    }

    public String group() {
        return group(0);
    }

    public String group(int group) {
        int start = start(group);
        int end = end(group);
        if (start < 0 && end < 0) {
            return null;
        }
        return substring(start, end);
    }

    public String group(String group) {
        Integer g = this.namedGroups.get(group);
        if (g == null) {
            throw new IllegalArgumentException("group '" + group + "' not found");
        }
        return group(g.intValue());
    }

    public int groupCount() {
        return this.groupCount;
    }

    private void loadGroup(int group) {
        int end;
        if (group < 0 || group > this.groupCount) {
            throw new IndexOutOfBoundsException("Group index out of bounds: " + group);
        }
        if (!this.hasMatch) {
            throw new IllegalStateException("perhaps no match attempted");
        }
        if (group == 0 || this.hasGroups) {
            return;
        }
        int end2 = this.groups[1] + 1;
        if (end2 <= this.inputLength) {
            end = end2;
        } else {
            end = this.inputLength;
        }
        boolean ok = this.pattern.re2().match(this.matcherInput, this.groups[0], end, this.anchorFlag, this.groups, this.groupCount + 1);
        if (!ok) {
            throw new IllegalStateException("inconsistency in matching group data");
        }
        this.hasGroups = true;
    }

    public boolean matches() {
        return genMatch(0, 2);
    }

    public boolean lookingAt() {
        return genMatch(0, 1);
    }

    public boolean find() {
        int start = 0;
        if (this.hasMatch) {
            start = this.groups[1];
            if (this.groups[0] == this.groups[1]) {
                start++;
            }
        }
        return genMatch(start, 0);
    }

    public boolean find(int start) {
        if (start < 0 || start > this.inputLength) {
            throw new IndexOutOfBoundsException("start index out of bounds: " + start);
        }
        reset();
        return genMatch(start, 0);
    }

    private boolean genMatch(int startByte, int anchor) {
        boolean ok = this.pattern.re2().match(this.matcherInput, startByte, this.inputLength, anchor, this.groups, 1);
        if (!ok) {
            return false;
        }
        this.hasMatch = true;
        this.hasGroups = false;
        this.anchorFlag = anchor;
        return true;
    }

    String substring(int start, int end) {
        MatcherInput.Encoding encoding = this.matcherInput.getEncoding();
        MatcherInput.Encoding encoding2 = MatcherInput.Encoding.UTF_8;
        MatcherInput matcherInput = this.matcherInput;
        if (encoding == encoding2) {
            return new String(matcherInput.asBytes(), start, end - start);
        }
        return matcherInput.asCharSequence().subSequence(start, end).toString();
    }

    int inputLength() {
        return this.inputLength;
    }

    public static String quoteReplacement(String s) {
        if (s.indexOf(92) < 0 && s.indexOf(36) < 0) {
            return s;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == '\\' || c == '$') {
                sb.append(AbstractJsonLexerKt.STRING_ESC);
            }
            sb.append(c);
        }
        return sb.toString();
    }

    public Matcher appendReplacement(StringBuffer sb, String replacement) {
        StringBuilder result = new StringBuilder();
        appendReplacement(result, replacement);
        sb.append((CharSequence) result);
        return this;
    }

    public Matcher appendReplacement(StringBuilder sb, String replacement) {
        int s = start();
        int e = end();
        if (this.appendPos < s) {
            sb.append(substring(this.appendPos, s));
        }
        this.appendPos = e;
        appendReplacementInternal(sb, replacement);
        return this;
    }

    private void appendReplacementInternal(StringBuilder sb, String replacement) {
        int last = 0;
        int i = 0;
        int m = replacement.length();
        while (i < m - 1) {
            if (replacement.charAt(i) == '\\') {
                if (last < i) {
                    sb.append(replacement.substring(last, i));
                }
                i++;
                last = i;
            } else if (replacement.charAt(i) != '$') {
                continue;
            } else {
                int c = replacement.charAt(i + 1);
                if (48 <= c && c <= 57) {
                    int n = c - 48;
                    if (last < i) {
                        sb.append(replacement.substring(last, i));
                    }
                    int i2 = i + 2;
                    while (i2 < m) {
                        int c2 = replacement.charAt(i2);
                        if (c2 < 48 || c2 > 57 || ((n * 10) + c2) - 48 > this.groupCount) {
                            break;
                        }
                        n = ((n * 10) + c2) - 48;
                        i2++;
                    }
                    if (n > this.groupCount) {
                        throw new IndexOutOfBoundsException("n > number of groups: " + n);
                    }
                    String group = group(n);
                    if (group != null) {
                        sb.append(group);
                    }
                    last = i2;
                    i = i2 - 1;
                } else if (c != 123) {
                    continue;
                } else {
                    if (last < i) {
                        sb.append(replacement.substring(last, i));
                    }
                    i++;
                    int j = i + 1;
                    while (j < replacement.length() && replacement.charAt(j) != '}' && replacement.charAt(j) != ' ') {
                        j++;
                    }
                    if (j == replacement.length() || replacement.charAt(j) != '}') {
                        throw new IllegalArgumentException("named capture group is missing trailing '}'");
                    }
                    String groupName = replacement.substring(i + 1, j);
                    sb.append(group(groupName));
                    last = j + 1;
                }
            }
            i++;
        }
        if (last < m) {
            sb.append((CharSequence) replacement, last, m);
        }
    }

    public StringBuffer appendTail(StringBuffer sb) {
        sb.append(substring(this.appendPos, this.inputLength));
        return sb;
    }

    public StringBuilder appendTail(StringBuilder sb) {
        sb.append(substring(this.appendPos, this.inputLength));
        return sb;
    }

    public String replaceAll(String replacement) {
        return replace(replacement, true);
    }

    public String replaceFirst(String replacement) {
        return replace(replacement, false);
    }

    private String replace(String replacement, boolean all) {
        reset();
        StringBuffer sb = new StringBuffer();
        while (find()) {
            appendReplacement(sb, replacement);
            if (!all) {
                break;
            }
        }
        appendTail(sb);
        return sb.toString();
    }
}

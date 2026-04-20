package com.google.re2j;

import com.google.re2j.MatcherInput;
import java.io.UnsupportedEncodingException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes22.dex */
class RE2 {
    static final int ANCHOR_BOTH = 2;
    static final int ANCHOR_START = 1;
    static final int CLASS_NL = 4;
    static final int DOT_NL = 8;
    static final int FOLD_CASE = 1;
    static final int LITERAL = 2;
    static final int MATCH_NL = 12;
    static final int NON_GREEDY = 32;
    static final int ONE_LINE = 16;
    static final int PERL = 212;
    static final int PERL_X = 64;
    static final int POSIX = 0;
    static final int UNANCHORED = 0;
    static final int UNICODE_GROUPS = 128;
    static final int WAS_DOLLAR = 256;
    final int cond;
    final String expr;
    boolean longest;
    private final Queue<Machine> machine = new ArrayDeque();
    public Map<String, Integer> namedGroups;
    final int numSubexp;
    String prefix;
    boolean prefixComplete;
    int prefixRune;
    byte[] prefixUTF8;
    final Prog prog;

    private interface DeliverFunc {
        void deliver(int[] iArr);
    }

    interface ReplaceFunc {
        String replace(String str);
    }

    RE2(String expr) {
        RE2 re2 = compile(expr);
        this.expr = re2.expr;
        this.prog = re2.prog;
        this.cond = re2.cond;
        this.numSubexp = re2.numSubexp;
        this.longest = re2.longest;
        this.prefix = re2.prefix;
        this.prefixUTF8 = re2.prefixUTF8;
        this.prefixComplete = re2.prefixComplete;
        this.prefixRune = re2.prefixRune;
    }

    private RE2(String expr, Prog prog, int numSubexp, boolean longest) {
        this.expr = expr;
        this.prog = prog;
        this.numSubexp = numSubexp;
        this.cond = prog.startCond();
        this.longest = longest;
    }

    static RE2 compile(String expr) throws PatternSyntaxException {
        return compileImpl(expr, PERL, false);
    }

    static RE2 compilePOSIX(String expr) throws PatternSyntaxException {
        return compileImpl(expr, 0, true);
    }

    static RE2 compileImpl(String expr, int mode, boolean longest) throws PatternSyntaxException {
        Regexp re = Parser.parse(expr, mode);
        int maxCap = re.maxCap();
        Regexp re2 = Simplify.simplify(re);
        Prog prog = Compiler.compileRegexp(re2);
        RE2 re22 = new RE2(expr, prog, maxCap, longest);
        StringBuilder prefixBuilder = new StringBuilder();
        re22.prefixComplete = prog.prefix(prefixBuilder);
        re22.prefix = prefixBuilder.toString();
        try {
            re22.prefixUTF8 = re22.prefix.getBytes("UTF-8");
            if (!re22.prefix.isEmpty()) {
                re22.prefixRune = re22.prefix.codePointAt(0);
            }
            re22.namedGroups = re2.namedGroups;
            return re22;
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException("can't happen");
        }
    }

    int numberOfCapturingGroups() {
        return this.numSubexp;
    }

    Machine get() {
        synchronized (this) {
            if (!this.machine.isEmpty()) {
                return this.machine.remove();
            }
            return new Machine(this);
        }
    }

    synchronized void reset() {
        this.machine.clear();
    }

    synchronized void put(Machine m) {
        this.machine.add(m);
    }

    public String toString() {
        return this.expr;
    }

    private int[] doExecute(MachineInput in, int pos, int anchor, int ncap) {
        Machine m = get();
        m.init(ncap);
        int[] cap = m.match(in, pos, anchor) ? m.submatches() : null;
        put(m);
        return cap;
    }

    boolean match(CharSequence s) {
        return doExecute(MachineInput.fromUTF16(s), 0, 0, 0) != null;
    }

    boolean match(CharSequence input, int start, int end, int anchor, int[] group, int ngroup) {
        return match(MatcherInput.utf16(input), start, end, anchor, group, ngroup);
    }

    boolean match(MatcherInput input, int start, int end, int anchor, int[] group, int ngroup) {
        if (start > end) {
            return false;
        }
        MachineInput machineInput = input.getEncoding() == MatcherInput.Encoding.UTF_16 ? MachineInput.fromUTF16(input.asCharSequence(), 0, end) : MachineInput.fromUTF8(input.asBytes(), 0, end);
        int[] groupMatch = doExecute(machineInput, start, anchor, ngroup * 2);
        if (groupMatch == null) {
            return false;
        }
        if (group != null) {
            System.arraycopy(groupMatch, 0, group, 0, groupMatch.length);
            return true;
        }
        return true;
    }

    boolean matchUTF8(byte[] b) {
        return doExecute(MachineInput.fromUTF8(b), 0, 0, 0) != null;
    }

    static boolean match(String pattern, CharSequence s) throws PatternSyntaxException {
        return compile(pattern).match(s);
    }

    String replaceAll(String src, final String repl) {
        return replaceAllFunc(src, new ReplaceFunc() { // from class: com.google.re2j.RE2.1
            @Override // com.google.re2j.RE2.ReplaceFunc
            public String replace(String orig) {
                return repl;
            }
        }, (src.length() * 2) + 1);
    }

    String replaceFirst(String src, final String repl) {
        return replaceAllFunc(src, new ReplaceFunc() { // from class: com.google.re2j.RE2.2
            @Override // com.google.re2j.RE2.ReplaceFunc
            public String replace(String orig) {
                return repl;
            }
        }, 1);
    }

    String replaceAllFunc(String src, ReplaceFunc repl, int maxReplaces) {
        int[] a;
        int lastMatchEnd = 0;
        int searchPos = 0;
        StringBuilder buf = new StringBuilder();
        MachineInput input = MachineInput.fromUTF16(src);
        int numReplaces = 0;
        while (searchPos <= src.length() && (a = doExecute(input, searchPos, 0, 2)) != null && a.length != 0) {
            buf.append(src.substring(lastMatchEnd, a[0]));
            if (a[1] > lastMatchEnd || a[0] == 0) {
                buf.append(repl.replace(src.substring(a[0], a[1])));
                numReplaces++;
            }
            lastMatchEnd = a[1];
            int width = input.step(searchPos) & 7;
            if (searchPos + width <= a[1]) {
                if (searchPos + 1 > a[1]) {
                    searchPos++;
                } else {
                    searchPos = a[1];
                }
            } else {
                searchPos += width;
            }
            if (numReplaces >= maxReplaces) {
                break;
            }
        }
        buf.append(src.substring(lastMatchEnd));
        return buf.toString();
    }

    static String quoteMeta(String s) {
        StringBuilder b = new StringBuilder(s.length() * 2);
        int len = s.length();
        for (int i = 0; i < len; i++) {
            char c = s.charAt(i);
            if ("\\.+*?()|[]{}^$".indexOf(c) >= 0) {
                b.append(AbstractJsonLexerKt.STRING_ESC);
            }
            b.append(c);
        }
        return b.toString();
    }

    private int[] pad(int[] a) {
        if (a == null) {
            return null;
        }
        int n = (this.numSubexp + 1) * 2;
        if (a.length < n) {
            int[] a2 = new int[n];
            System.arraycopy(a, 0, a2, 0, a.length);
            Arrays.fill(a2, a.length, n, -1);
            return a2;
        }
        return a;
    }

    private void allMatches(MachineInput input, int n, DeliverFunc deliver) {
        int end = input.endPos();
        if (n < 0) {
            n = end + 1;
        }
        int pos = 0;
        int i = 0;
        int prevMatchEnd = -1;
        while (i < n && pos <= end) {
            int[] matches = doExecute(input, pos, 0, this.prog.numCap);
            if (matches != null && matches.length != 0) {
                boolean accept = true;
                if (matches[1] == pos) {
                    if (matches[0] == prevMatchEnd) {
                        accept = false;
                    }
                    int r = input.step(pos);
                    if (r < 0) {
                        pos = end + 1;
                    } else {
                        pos += r & 7;
                    }
                } else {
                    pos = matches[1];
                }
                prevMatchEnd = matches[1];
                if (accept) {
                    deliver.deliver(pad(matches));
                    i++;
                }
            } else {
                return;
            }
        }
    }

    byte[] findUTF8(byte[] b) {
        int[] a = doExecute(MachineInput.fromUTF8(b), 0, 0, 2);
        if (a == null) {
            return null;
        }
        return Utils.subarray(b, a[0], a[1]);
    }

    int[] findUTF8Index(byte[] b) {
        int[] a = doExecute(MachineInput.fromUTF8(b), 0, 0, 2);
        if (a == null) {
            return null;
        }
        return Utils.subarray(a, 0, 2);
    }

    String find(String s) {
        int[] a = doExecute(MachineInput.fromUTF16(s), 0, 0, 2);
        if (a == null) {
            return "";
        }
        return s.substring(a[0], a[1]);
    }

    int[] findIndex(String s) {
        return doExecute(MachineInput.fromUTF16(s), 0, 0, 2);
    }

    byte[][] findUTF8Submatch(byte[] b) {
        int[] a = doExecute(MachineInput.fromUTF8(b), 0, 0, this.prog.numCap);
        if (a == null) {
            return null;
        }
        byte[][] ret = new byte[this.numSubexp + 1][];
        for (int i = 0; i < ret.length; i++) {
            if (i * 2 < a.length && a[i * 2] >= 0) {
                ret[i] = Utils.subarray(b, a[i * 2], a[(i * 2) + 1]);
            }
        }
        return ret;
    }

    int[] findUTF8SubmatchIndex(byte[] b) {
        return pad(doExecute(MachineInput.fromUTF8(b), 0, 0, this.prog.numCap));
    }

    String[] findSubmatch(String s) {
        int[] a = doExecute(MachineInput.fromUTF16(s), 0, 0, this.prog.numCap);
        if (a == null) {
            return null;
        }
        String[] ret = new String[this.numSubexp + 1];
        for (int i = 0; i < ret.length; i++) {
            if (i * 2 < a.length && a[i * 2] >= 0) {
                ret[i] = s.substring(a[i * 2], a[(i * 2) + 1]);
            }
        }
        return ret;
    }

    int[] findSubmatchIndex(String s) {
        return pad(doExecute(MachineInput.fromUTF16(s), 0, 0, this.prog.numCap));
    }

    List<byte[]> findAllUTF8(final byte[] b, int n) {
        final List<byte[]> result = new ArrayList<>();
        allMatches(MachineInput.fromUTF8(b), n, new DeliverFunc() { // from class: com.google.re2j.RE2.3
            @Override // com.google.re2j.RE2.DeliverFunc
            public void deliver(int[] match) {
                result.add(Utils.subarray(b, match[0], match[1]));
            }
        });
        if (result.isEmpty()) {
            return null;
        }
        return result;
    }

    List<int[]> findAllUTF8Index(byte[] b, int n) {
        final List<int[]> result = new ArrayList<>();
        allMatches(MachineInput.fromUTF8(b), n, new DeliverFunc() { // from class: com.google.re2j.RE2.4
            @Override // com.google.re2j.RE2.DeliverFunc
            public void deliver(int[] match) {
                result.add(Utils.subarray(match, 0, 2));
            }
        });
        if (result.isEmpty()) {
            return null;
        }
        return result;
    }

    List<String> findAll(final String s, int n) {
        final List<String> result = new ArrayList<>();
        allMatches(MachineInput.fromUTF16(s), n, new DeliverFunc() { // from class: com.google.re2j.RE2.5
            @Override // com.google.re2j.RE2.DeliverFunc
            public void deliver(int[] match) {
                result.add(s.substring(match[0], match[1]));
            }
        });
        if (result.isEmpty()) {
            return null;
        }
        return result;
    }

    List<int[]> findAllIndex(String s, int n) {
        final List<int[]> result = new ArrayList<>();
        allMatches(MachineInput.fromUTF16(s), n, new DeliverFunc() { // from class: com.google.re2j.RE2.6
            @Override // com.google.re2j.RE2.DeliverFunc
            public void deliver(int[] match) {
                result.add(Utils.subarray(match, 0, 2));
            }
        });
        if (result.isEmpty()) {
            return null;
        }
        return result;
    }

    List<byte[][]> findAllUTF8Submatch(final byte[] b, int n) {
        final List<byte[][]> result = new ArrayList<>();
        allMatches(MachineInput.fromUTF8(b), n, new DeliverFunc() { // from class: com.google.re2j.RE2.7
            @Override // com.google.re2j.RE2.DeliverFunc
            public void deliver(int[] match) {
                byte[][] slice = new byte[match.length / 2][];
                for (int j = 0; j < slice.length; j++) {
                    if (match[j * 2] >= 0) {
                        slice[j] = Utils.subarray(b, match[j * 2], match[(j * 2) + 1]);
                    }
                }
                result.add(slice);
            }
        });
        if (result.isEmpty()) {
            return null;
        }
        return result;
    }

    List<int[]> findAllUTF8SubmatchIndex(byte[] b, int n) {
        final List<int[]> result = new ArrayList<>();
        allMatches(MachineInput.fromUTF8(b), n, new DeliverFunc() { // from class: com.google.re2j.RE2.8
            @Override // com.google.re2j.RE2.DeliverFunc
            public void deliver(int[] match) {
                result.add(match);
            }
        });
        if (result.isEmpty()) {
            return null;
        }
        return result;
    }

    List<String[]> findAllSubmatch(final String s, int n) {
        final List<String[]> result = new ArrayList<>();
        allMatches(MachineInput.fromUTF16(s), n, new DeliverFunc() { // from class: com.google.re2j.RE2.9
            @Override // com.google.re2j.RE2.DeliverFunc
            public void deliver(int[] match) {
                String[] slice = new String[match.length / 2];
                for (int j = 0; j < slice.length; j++) {
                    if (match[j * 2] >= 0) {
                        slice[j] = s.substring(match[j * 2], match[(j * 2) + 1]);
                    }
                }
                result.add(slice);
            }
        });
        if (result.isEmpty()) {
            return null;
        }
        return result;
    }

    List<int[]> findAllSubmatchIndex(String s, int n) {
        final List<int[]> result = new ArrayList<>();
        allMatches(MachineInput.fromUTF16(s), n, new DeliverFunc() { // from class: com.google.re2j.RE2.10
            @Override // com.google.re2j.RE2.DeliverFunc
            public void deliver(int[] match) {
                result.add(match);
            }
        });
        if (result.isEmpty()) {
            return null;
        }
        return result;
    }
}

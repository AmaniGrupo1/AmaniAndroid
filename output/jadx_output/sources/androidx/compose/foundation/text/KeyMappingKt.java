package androidx.compose.foundation.text;

import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* JADX INFO: compiled from: KeyMapping.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u001a\u001c\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0000\"\u0014\u0010\u0006\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"commonKeyMapping", "Landroidx/compose/foundation/text/KeyMapping;", "shortcutModifier", "Lkotlin/Function1;", "Landroidx/compose/ui/input/key/KeyEvent;", "", "defaultKeyMapping", "getDefaultKeyMapping", "()Landroidx/compose/foundation/text/KeyMapping;", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class KeyMappingKt {
    private static final KeyMapping defaultKeyMapping;

    public static final KeyMapping commonKeyMapping(final Function1<? super KeyEvent, Boolean> function1) {
        return new KeyMapping() { // from class: androidx.compose.foundation.text.KeyMappingKt.commonKeyMapping.1
            @Override // androidx.compose.foundation.text.KeyMapping
            /* JADX INFO: renamed from: map-ZmokQxo */
            public KeyCommand mo1200mapZmokQxo(android.view.KeyEvent event) {
                if (function1.invoke(KeyEvent.m5836boximpl(event)).booleanValue() && KeyEvent_androidKt.m5859isShiftPressedZmokQxo(event)) {
                    if (Key.m5545equalsimpl0(KeyEvent_androidKt.m5853getKeyZmokQxo(event), Key.INSTANCE.m5831getZEK5gGoQ())) {
                        return KeyCommand.REDO;
                    }
                    return null;
                }
                if (function1.invoke(KeyEvent.m5836boximpl(event)).booleanValue()) {
                    long jM5853getKeyZmokQxo = KeyEvent_androidKt.m5853getKeyZmokQxo(event);
                    if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo, Key.INSTANCE.m5599getCEK5gGoQ()) || Key.m5545equalsimpl0(jM5853getKeyZmokQxo, Key.INSTANCE.m5663getInsertEK5gGoQ())) {
                        return KeyCommand.COPY;
                    }
                    if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo, Key.INSTANCE.m5820getVEK5gGoQ())) {
                        return KeyCommand.PASTE;
                    }
                    if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo, Key.INSTANCE.m5828getXEK5gGoQ())) {
                        return KeyCommand.CUT;
                    }
                    if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo, Key.INSTANCE.m5549getAEK5gGoQ())) {
                        return KeyCommand.SELECT_ALL;
                    }
                    if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo, Key.INSTANCE.m5829getYEK5gGoQ())) {
                        return KeyCommand.REDO;
                    }
                    if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo, Key.INSTANCE.m5831getZEK5gGoQ())) {
                        return KeyCommand.UNDO;
                    }
                    return null;
                }
                if (KeyEvent_androidKt.m5857isCtrlPressedZmokQxo(event)) {
                    return null;
                }
                if (KeyEvent_androidKt.m5859isShiftPressedZmokQxo(event)) {
                    long jM5853getKeyZmokQxo2 = KeyEvent_androidKt.m5853getKeyZmokQxo(event);
                    if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo2, Key.INSTANCE.m5621getDirectionLeftEK5gGoQ())) {
                        return KeyCommand.SELECT_LEFT_CHAR;
                    }
                    if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo2, Key.INSTANCE.m5622getDirectionRightEK5gGoQ())) {
                        return KeyCommand.SELECT_RIGHT_CHAR;
                    }
                    if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo2, Key.INSTANCE.m5623getDirectionUpEK5gGoQ())) {
                        return KeyCommand.SELECT_UP;
                    }
                    if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo2, Key.INSTANCE.m5618getDirectionDownEK5gGoQ())) {
                        return KeyCommand.SELECT_DOWN;
                    }
                    if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo2, Key.INSTANCE.m5734getPageUpEK5gGoQ())) {
                        return KeyCommand.SELECT_PAGE_UP;
                    }
                    if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo2, Key.INSTANCE.m5733getPageDownEK5gGoQ())) {
                        return KeyCommand.SELECT_PAGE_DOWN;
                    }
                    if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo2, Key.INSTANCE.m5697getMoveHomeEK5gGoQ())) {
                        return KeyCommand.SELECT_LINE_START;
                    }
                    if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo2, Key.INSTANCE.m5696getMoveEndEK5gGoQ())) {
                        return KeyCommand.SELECT_LINE_END;
                    }
                    if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo2, Key.INSTANCE.m5663getInsertEK5gGoQ())) {
                        return KeyCommand.PASTE;
                    }
                    return null;
                }
                long jM5853getKeyZmokQxo3 = KeyEvent_androidKt.m5853getKeyZmokQxo(event);
                if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo3, Key.INSTANCE.m5621getDirectionLeftEK5gGoQ())) {
                    return KeyCommand.LEFT_CHAR;
                }
                if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo3, Key.INSTANCE.m5622getDirectionRightEK5gGoQ())) {
                    return KeyCommand.RIGHT_CHAR;
                }
                if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo3, Key.INSTANCE.m5623getDirectionUpEK5gGoQ())) {
                    return KeyCommand.UP;
                }
                if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo3, Key.INSTANCE.m5618getDirectionDownEK5gGoQ())) {
                    return KeyCommand.DOWN;
                }
                if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo3, Key.INSTANCE.m5617getDirectionCenterEK5gGoQ())) {
                    return KeyCommand.CENTER;
                }
                if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo3, Key.INSTANCE.m5734getPageUpEK5gGoQ())) {
                    return KeyCommand.PAGE_UP;
                }
                if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo3, Key.INSTANCE.m5733getPageDownEK5gGoQ())) {
                    return KeyCommand.PAGE_DOWN;
                }
                if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo3, Key.INSTANCE.m5697getMoveHomeEK5gGoQ())) {
                    return KeyCommand.LINE_START;
                }
                if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo3, Key.INSTANCE.m5696getMoveEndEK5gGoQ())) {
                    return KeyCommand.LINE_END;
                }
                if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo3, Key.INSTANCE.m5631getEnterEK5gGoQ()) || Key.m5545equalsimpl0(jM5853getKeyZmokQxo3, Key.INSTANCE.m5723getNumPadEnterEK5gGoQ())) {
                    return KeyCommand.NEW_LINE;
                }
                if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo3, Key.INSTANCE.m5562getBackspaceEK5gGoQ())) {
                    return KeyCommand.DELETE_PREV_CHAR;
                }
                if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo3, Key.INSTANCE.m5616getDeleteEK5gGoQ())) {
                    return KeyCommand.DELETE_NEXT_CHAR;
                }
                if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo3, Key.INSTANCE.m5736getPasteEK5gGoQ())) {
                    return KeyCommand.PASTE;
                }
                if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo3, Key.INSTANCE.m5614getCutEK5gGoQ())) {
                    return KeyCommand.CUT;
                }
                if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo3, Key.INSTANCE.m5611getCopyEK5gGoQ())) {
                    return KeyCommand.COPY;
                }
                if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo3, Key.INSTANCE.m5781getTabEK5gGoQ())) {
                    return KeyCommand.TAB;
                }
                return null;
            }
        };
    }

    public static final KeyMapping getDefaultKeyMapping() {
        return defaultKeyMapping;
    }

    static {
        final KeyMapping common = commonKeyMapping(new PropertyReference1Impl() { // from class: androidx.compose.foundation.text.KeyMappingKt$defaultKeyMapping$1
            @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
            public Object get(Object receiver0) {
                return Boolean.valueOf(KeyEvent_androidKt.m5857isCtrlPressedZmokQxo(((KeyEvent) receiver0).m5842unboximpl()));
            }
        });
        defaultKeyMapping = new KeyMapping() { // from class: androidx.compose.foundation.text.KeyMappingKt$defaultKeyMapping$2$1
            @Override // androidx.compose.foundation.text.KeyMapping
            /* JADX INFO: renamed from: map-ZmokQxo */
            public KeyCommand mo1200mapZmokQxo(android.view.KeyEvent event) {
                KeyCommand keyCommand = null;
                if (KeyEvent_androidKt.m5859isShiftPressedZmokQxo(event) && KeyEvent_androidKt.m5857isCtrlPressedZmokQxo(event)) {
                    long jM5853getKeyZmokQxo = KeyEvent_androidKt.m5853getKeyZmokQxo(event);
                    if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo, Key.INSTANCE.m5621getDirectionLeftEK5gGoQ())) {
                        keyCommand = KeyCommand.SELECT_LEFT_WORD;
                    } else if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo, Key.INSTANCE.m5622getDirectionRightEK5gGoQ())) {
                        keyCommand = KeyCommand.SELECT_RIGHT_WORD;
                    } else if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo, Key.INSTANCE.m5623getDirectionUpEK5gGoQ())) {
                        keyCommand = KeyCommand.SELECT_PREV_PARAGRAPH;
                    } else if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo, Key.INSTANCE.m5618getDirectionDownEK5gGoQ())) {
                        keyCommand = KeyCommand.SELECT_NEXT_PARAGRAPH;
                    }
                } else if (KeyEvent_androidKt.m5857isCtrlPressedZmokQxo(event)) {
                    long jM5853getKeyZmokQxo2 = KeyEvent_androidKt.m5853getKeyZmokQxo(event);
                    if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo2, Key.INSTANCE.m5621getDirectionLeftEK5gGoQ())) {
                        keyCommand = KeyCommand.LEFT_WORD;
                    } else if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo2, Key.INSTANCE.m5622getDirectionRightEK5gGoQ())) {
                        keyCommand = KeyCommand.RIGHT_WORD;
                    } else if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo2, Key.INSTANCE.m5623getDirectionUpEK5gGoQ())) {
                        keyCommand = KeyCommand.PREV_PARAGRAPH;
                    } else if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo2, Key.INSTANCE.m5618getDirectionDownEK5gGoQ())) {
                        keyCommand = KeyCommand.NEXT_PARAGRAPH;
                    } else if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo2, Key.INSTANCE.m5656getHEK5gGoQ())) {
                        keyCommand = KeyCommand.DELETE_PREV_CHAR;
                    } else if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo2, Key.INSTANCE.m5616getDeleteEK5gGoQ())) {
                        keyCommand = KeyCommand.DELETE_NEXT_WORD;
                    } else if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo2, Key.INSTANCE.m5562getBackspaceEK5gGoQ())) {
                        keyCommand = KeyCommand.DELETE_PREV_WORD;
                    } else if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo2, Key.INSTANCE.m5561getBackslashEK5gGoQ())) {
                        keyCommand = KeyCommand.DESELECT;
                    }
                } else if (KeyEvent_androidKt.m5859isShiftPressedZmokQxo(event)) {
                    long jM5853getKeyZmokQxo3 = KeyEvent_androidKt.m5853getKeyZmokQxo(event);
                    if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo3, Key.INSTANCE.m5697getMoveHomeEK5gGoQ())) {
                        keyCommand = KeyCommand.SELECT_LINE_START;
                    } else if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo3, Key.INSTANCE.m5696getMoveEndEK5gGoQ())) {
                        keyCommand = KeyCommand.SELECT_LINE_END;
                    }
                } else if (KeyEvent_androidKt.m5856isAltPressedZmokQxo(event)) {
                    long jM5853getKeyZmokQxo4 = KeyEvent_androidKt.m5853getKeyZmokQxo(event);
                    if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo4, Key.INSTANCE.m5562getBackspaceEK5gGoQ())) {
                        keyCommand = KeyCommand.DELETE_FROM_LINE_START;
                    } else if (Key.m5545equalsimpl0(jM5853getKeyZmokQxo4, Key.INSTANCE.m5616getDeleteEK5gGoQ())) {
                        keyCommand = KeyCommand.DELETE_TO_LINE_END;
                    }
                }
                if (keyCommand != null) {
                    return keyCommand;
                }
                return common.mo1200mapZmokQxo(event);
            }
        };
    }
}

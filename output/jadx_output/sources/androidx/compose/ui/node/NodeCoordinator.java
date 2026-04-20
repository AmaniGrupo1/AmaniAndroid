package androidx.compose.ui.node;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.ComposeUiFlags;
import androidx.compose.ui.FrameRateCategory;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.MutableRectKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.MatrixKt;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.input.pointer.MatrixPositionCalculator;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.LookaheadLayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.spatial.RectManager;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.firestore.model.Values;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: NodeCoordinator.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000À\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0010\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\u001c\b!\u0018\u0000 Ç\u00022\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0004Æ\u0002Ç\u0002B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u00103\u001a\u0004\u0018\u00010\u00152\u0006\u00104\u001a\u00020\fH\u0002J-\u00105\u001a\u0002062\u0006\u00107\u001a\u0002082\u0006\u00104\u001a\u00020\f2\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u0002060:H\u0086\bJ:\u00105\u001a\u000206\"\u0006\b\u0000\u0010;\u0018\u00012\f\u0010<\u001a\b\u0012\u0004\u0012\u0002H;0=2\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u0002H;\u0012\u0004\u0012\u0002060:H\u0086\b¢\u0006\u0004\b>\u0010?J\u001b\u0010@\u001a\u00020\f2\n\u0010<\u001a\u0006\u0012\u0002\b\u00030=H\u0002¢\u0006\u0004\bA\u0010BJ\u001b\u0010C\u001a\u0004\u0018\u00010\u00152\n\u0010<\u001a\u0006\u0012\u0002\b\u00030=¢\u0006\u0004\bD\u0010EJ\u0006\u0010U\u001a\u00020\fJ\r\u0010\\\u001a\u000206H\u0010¢\u0006\u0002\b]J\b\u0010q\u001a\u000206H&J\u0018\u0010v\u001a\u0002062\u0006\u0010w\u001a\u0002082\u0006\u0010x\u001a\u000208H\u0014J\u000f\u0010\u0087\u0001\u001a\u000206H\u0000¢\u0006\u0003\b\u0088\u0001J0\u0010§\u0001\u001a\u00030¨\u00012\b\u0010©\u0001\u001a\u00030\u0099\u00012\u0010\b\u0004\u00109\u001a\n\u0012\u0005\u0012\u00030¨\u00010ª\u0001H\u0084\b¢\u0006\u0006\b«\u0001\u0010¬\u0001J\u0007\u0010\u00ad\u0001\u001a\u000206J\u0007\u0010®\u0001\u001a\u000206J=\u0010¯\u0001\u001a\u0002062\u0006\u0010z\u001a\u00020y2\u0006\u0010\u007f\u001a\u00020%2\u0019\u0010N\u001a\u0015\u0012\u0004\u0012\u00020L\u0012\u0004\u0012\u000206\u0018\u00010:¢\u0006\u0002\bMH\u0014¢\u0006\u0006\b°\u0001\u0010±\u0001J,\u0010¯\u0001\u001a\u0002062\u0006\u0010z\u001a\u00020y2\u0006\u0010\u007f\u001a\u00020%2\b\u0010²\u0001\u001a\u00030³\u0001H\u0014¢\u0006\u0006\b°\u0001\u0010´\u0001JI\u0010µ\u0001\u001a\u0002062\u0006\u0010z\u001a\u00020y2\u0006\u0010\u007f\u001a\u00020%2\u0019\u0010N\u001a\u0015\u0012\u0004\u0012\u00020L\u0012\u0004\u0012\u000206\u0018\u00010:¢\u0006\u0002\bM2\n\u0010¶\u0001\u001a\u0005\u0018\u00010³\u0001H\u0002¢\u0006\u0006\b·\u0001\u0010¸\u0001J\u0007\u0010¹\u0001\u001a\u000206JG\u0010º\u0001\u001a\u0002062\u0006\u0010z\u001a\u00020y2\u0006\u0010\u007f\u001a\u00020%2\u0019\u0010N\u001a\u0015\u0012\u0004\u0012\u00020L\u0012\u0004\u0012\u000206\u0018\u00010:¢\u0006\u0002\bM2\n\u0010²\u0001\u001a\u0005\u0018\u00010³\u0001¢\u0006\u0006\b»\u0001\u0010¸\u0001J\u001d\u0010¼\u0001\u001a\u0002062\b\u0010½\u0001\u001a\u00030¾\u00012\n\u0010¿\u0001\u001a\u0005\u0018\u00010³\u0001J\u001f\u0010À\u0001\u001a\u0002062\b\u0010½\u0001\u001a\u00030¾\u00012\n\u0010¿\u0001\u001a\u0005\u0018\u00010³\u0001H\u0002J\u001f\u0010Á\u0001\u001a\u0002062\b\u0010½\u0001\u001a\u00030¾\u00012\n\u0010¿\u0001\u001a\u0005\u0018\u00010³\u0001H\u0016J\u0007\u0010Â\u0001\u001a\u000206J-\u0010Ê\u0001\u001a\u0002062\u0019\u0010N\u001a\u0015\u0012\u0004\u0012\u00020L\u0012\u0004\u0012\u000206\u0018\u00010:¢\u0006\u0002\bM2\t\b\u0002\u0010Ë\u0001\u001a\u00020\fJ\u0014\u0010Ì\u0001\u001a\u0002062\t\b\u0002\u0010Í\u0001\u001a\u00020\fH\u0002JA\u0010Ø\u0001\u001a\u0002062\b\u0010Ù\u0001\u001a\u00030Ú\u00012\b\u0010Û\u0001\u001a\u00030Ü\u00012\b\u0010Ý\u0001\u001a\u00030Þ\u00012\b\u0010ß\u0001\u001a\u00030à\u00012\u0007\u0010á\u0001\u001a\u00020\f¢\u0006\u0006\bâ\u0001\u0010ã\u0001JI\u0010ä\u0001\u001a\u000206*\u0004\u0018\u00010\u00152\b\u0010Ù\u0001\u001a\u00030Ú\u00012\b\u0010Û\u0001\u001a\u00030Ü\u00012\b\u0010Ý\u0001\u001a\u00030Þ\u00012\b\u0010ß\u0001\u001a\u00030à\u00012\u0007\u0010á\u0001\u001a\u00020\fH\u0002¢\u0006\u0006\bå\u0001\u0010æ\u0001J[\u0010ç\u0001\u001a\u000206*\u0004\u0018\u00010\u00152\b\u0010Ù\u0001\u001a\u00030Ú\u00012\b\u0010Û\u0001\u001a\u00030Ü\u00012\b\u0010Ý\u0001\u001a\u00030Þ\u00012\b\u0010ß\u0001\u001a\u00030à\u00012\u0007\u0010á\u0001\u001a\u00020\f2\u0007\u0010è\u0001\u001a\u00020%2\u0007\u0010é\u0001\u001a\u00020\fH\u0002¢\u0006\u0006\bê\u0001\u0010ë\u0001JR\u0010ì\u0001\u001a\u000206*\u0004\u0018\u00010\u00152\b\u0010Ù\u0001\u001a\u00030Ú\u00012\b\u0010Û\u0001\u001a\u00030Ü\u00012\b\u0010Ý\u0001\u001a\u00030Þ\u00012\b\u0010ß\u0001\u001a\u00030à\u00012\u0007\u0010á\u0001\u001a\u00020\f2\u0007\u0010è\u0001\u001a\u00020%H\u0002¢\u0006\u0006\bí\u0001\u0010î\u0001JR\u0010ï\u0001\u001a\u000206*\u0004\u0018\u00010\u00152\b\u0010Ù\u0001\u001a\u00030Ú\u00012\b\u0010Û\u0001\u001a\u00030Ü\u00012\b\u0010Ý\u0001\u001a\u00030Þ\u00012\b\u0010ß\u0001\u001a\u00030à\u00012\u0007\u0010á\u0001\u001a\u00020\f2\u0007\u0010è\u0001\u001a\u00020%H\u0002¢\u0006\u0006\bð\u0001\u0010î\u0001J,\u0010ñ\u0001\u001a\u00020\f*\u0004\u0018\u00010\u00152\b\u0010Û\u0001\u001a\u00030Ü\u00012\b\u0010ß\u0001\u001a\u00030à\u0001H\u0002¢\u0006\u0006\bò\u0001\u0010ó\u0001JC\u0010ô\u0001\u001a\u0002062\b\u0010Ù\u0001\u001a\u00030Ú\u00012\b\u0010Û\u0001\u001a\u00030Ü\u00012\b\u0010Ý\u0001\u001a\u00030Þ\u00012\b\u0010ß\u0001\u001a\u00030à\u00012\u0007\u0010á\u0001\u001a\u00020\fH\u0016¢\u0006\u0006\bõ\u0001\u0010ã\u0001J\b\u0010ö\u0001\u001a\u00030÷\u0001J\u001d\u0010ø\u0001\u001a\u00030Ü\u00012\b\u0010ù\u0001\u001a\u00030Ü\u0001H\u0016¢\u0006\u0006\bú\u0001\u0010û\u0001J\u001d\u0010ü\u0001\u001a\u00030Ü\u00012\b\u0010ý\u0001\u001a\u00030Ü\u0001H\u0016¢\u0006\u0006\bþ\u0001\u0010û\u0001J\u001d\u0010ÿ\u0001\u001a\u00030Ü\u00012\b\u0010\u0080\u0002\u001a\u00030Ü\u0001H\u0016¢\u0006\u0006\b\u0081\u0002\u0010û\u0001J\u001d\u0010\u0082\u0002\u001a\u00030Ü\u00012\b\u0010ý\u0001\u001a\u00030Ü\u0001H\u0016¢\u0006\u0006\b\u0083\u0002\u0010û\u0001J\r\u0010\u0084\u0002\u001a\u00020\u0000*\u00020\u0003H\u0002J&\u0010\u0085\u0002\u001a\u00030Ü\u00012\u0007\u0010\u0086\u0002\u001a\u00020\u00032\b\u0010\u0087\u0002\u001a\u00030Ü\u0001H\u0016¢\u0006\u0006\b\u0088\u0002\u0010\u0089\u0002J/\u0010\u0085\u0002\u001a\u00030Ü\u00012\u0007\u0010\u0086\u0002\u001a\u00020\u00032\b\u0010\u0087\u0002\u001a\u00030Ü\u00012\u0007\u0010\u008a\u0002\u001a\u00020\fH\u0016¢\u0006\u0006\b\u008b\u0002\u0010\u008c\u0002J%\u0010\u008d\u0002\u001a\u0002062\u0007\u0010\u0086\u0002\u001a\u00020\u00032\b\u0010\u008e\u0002\u001a\u00030\u008f\u0002H\u0016¢\u0006\u0006\b\u0090\u0002\u0010\u0091\u0002J\u001c\u0010\u0092\u0002\u001a\u0002062\b\u0010\u008e\u0002\u001a\u00030\u008f\u0002H\u0016¢\u0006\u0006\b\u0093\u0002\u0010\u0094\u0002J%\u0010\u0095\u0002\u001a\u0002062\u0007\u0010\u0096\u0002\u001a\u00020\u00002\b\u0010\u008e\u0002\u001a\u00030\u008f\u0002H\u0002¢\u0006\u0006\b\u0097\u0002\u0010\u0098\u0002J%\u0010\u0099\u0002\u001a\u0002062\u0007\u0010\u0096\u0002\u001a\u00020\u00002\b\u0010\u008e\u0002\u001a\u00030\u008f\u0002H\u0002¢\u0006\u0006\b\u009a\u0002\u0010\u0098\u0002J\u001c\u0010\u009b\u0002\u001a\u00030÷\u00012\u0007\u0010\u0086\u0002\u001a\u00020\u00032\u0007\u0010\u009c\u0002\u001a\u00020\fH\u0016J/\u0010\u009d\u0002\u001a\u00030Ü\u00012\u0007\u0010\u0096\u0002\u001a\u00020\u00002\b\u0010\u009e\u0002\u001a\u00030Ü\u00012\u0007\u0010\u008a\u0002\u001a\u00020\fH\u0002¢\u0006\u0006\b\u009f\u0002\u0010 \u0002J%\u0010\u009d\u0002\u001a\u0002062\u0007\u0010\u0096\u0002\u001a\u00020\u00002\b\u0010¡\u0002\u001a\u00030\u008e\u00012\u0007\u0010\u009c\u0002\u001a\u00020\fH\u0002J\u001d\u0010¢\u0002\u001a\u00030Ü\u00012\b\u0010ý\u0001\u001a\u00030Ü\u0001H\u0016¢\u0006\u0006\b£\u0002\u0010û\u0001J)\u0010¤\u0002\u001a\u0002062\b\u0010½\u0001\u001a\u00030¾\u00012\u0013\u00109\u001a\u000f\u0012\u0005\u0012\u00030¾\u0001\u0012\u0004\u0012\u0002060:H\u0084\bJ'\u0010¥\u0002\u001a\u00030Ü\u00012\u0007\u0010z\u001a\u00030Ü\u00012\t\b\u0002\u0010\u008a\u0002\u001a\u00020\fH\u0016¢\u0006\u0006\b¦\u0002\u0010§\u0002J'\u0010¨\u0002\u001a\u00030Ü\u00012\u0007\u0010z\u001a\u00030Ü\u00012\t\b\u0002\u0010\u008a\u0002\u001a\u00020\fH\u0016¢\u0006\u0006\b©\u0002\u0010§\u0002J\u001d\u0010ª\u0002\u001a\u0002062\b\u0010½\u0001\u001a\u00030¾\u00012\b\u0010«\u0002\u001a\u00030¬\u0002H\u0004J\u0007\u0010\u00ad\u0002\u001a\u000206J\u0007\u0010®\u0002\u001a\u000206J-\u0010¯\u0002\u001a\u0002062\b\u0010°\u0002\u001a\u00030\u008e\u00012\u0007\u0010\u009c\u0002\u001a\u00020\f2\t\b\u0002\u0010±\u0002\u001a\u00020\fH\u0000¢\u0006\u0003\b²\u0002J\u001c\u0010³\u0002\u001a\u0002062\b\u0010°\u0002\u001a\u00030\u008e\u00012\u0007\u0010\u009c\u0002\u001a\u00020\fH\u0002J\u001c\u0010´\u0002\u001a\u00020\f2\b\u0010Û\u0001\u001a\u00030Ü\u0001H\u0004¢\u0006\u0006\bµ\u0002\u0010¶\u0002J\u001c\u0010·\u0002\u001a\u00020\f2\b\u0010Û\u0001\u001a\u00030Ü\u0001H\u0004¢\u0006\u0006\b¸\u0002\u0010¶\u0002J\t\u0010¹\u0002\u001a\u000206H\u0016J\t\u0010º\u0002\u001a\u000206H\u0016J\u0018\u0010»\u0002\u001a\u00020\u00002\u0007\u0010¼\u0002\u001a\u00020\u0000H\u0000¢\u0006\u0003\b½\u0002J\u0007\u0010¾\u0002\u001a\u00020\fJ\u001d\u0010¿\u0002\u001a\u00030Ü\u00012\b\u0010Û\u0001\u001a\u00030Ü\u0001H\u0002¢\u0006\u0006\bÀ\u0002\u0010û\u0001J\u001d\u0010Á\u0002\u001a\u00030Ö\u00012\b\u0010Õ\u0001\u001a\u00030Ö\u0001H\u0004¢\u0006\u0006\bÂ\u0002\u0010û\u0001J&\u0010Ã\u0002\u001a\u00020%2\b\u0010Û\u0001\u001a\u00030Ü\u00012\b\u0010Õ\u0001\u001a\u00030Ö\u0001H\u0004¢\u0006\u0006\bÄ\u0002\u0010Å\u0002R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\fX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R\u0012\u0010\u0014\u001a\u00020\u0015X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0000X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0000X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001a\"\u0004\b\u001f\u0010\u001cR\u0014\u0010 \u001a\u00020!8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0014\u0010$\u001a\u00020%8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'R\u0014\u0010(\u001a\u00020%8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b)\u0010'R\u0016\u0010*\u001a\u0004\u0018\u00010\u00018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,R\u0014\u0010-\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b.\u0010/R\u0014\u00100\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b1\u0010\u000eR\u000e\u00102\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010F\u001a\u00020G8F¢\u0006\u0006\u001a\u0004\bH\u0010IR\u000e\u0010J\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000RD\u0010N\u001a\u0015\u0012\u0004\u0012\u00020L\u0012\u0004\u0012\u000206\u0018\u00010:¢\u0006\u0002\bM2\u0019\u0010K\u001a\u0015\u0012\u0004\u0012\u00020L\u0012\u0004\u0012\u000206\u0018\u00010:¢\u0006\u0002\bM@BX\u0084\u000e¢\u0006\b\n\u0000\u001a\u0004\bO\u0010PR\u000e\u0010Q\u001a\u00020RX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020!X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010T\u001a\u00020%X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010V\u001a\u00020W8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bX\u0010YR\u0016\u0010Z\u001a\u0004\u0018\u00010\u00018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b[\u0010,R\u0014\u0010^\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b_\u0010\u000eR\u0014\u0010`\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b`\u0010\u000eR\u0010\u0010a\u001a\u0004\u0018\u00010bX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010c\u001a\u00020b2\u0006\u0010K\u001a\u00020b8P@PX\u0090\u000e¢\u0006\f\u001a\u0004\bd\u0010e\"\u0004\bf\u0010gR&\u0010i\u001a\u0004\u0018\u00010h2\b\u0010K\u001a\u0004\u0018\u00010h@dX¦\u000e¢\u0006\f\u001a\u0004\bj\u0010k\"\u0004\bl\u0010mR\u0016\u0010n\u001a\n\u0012\u0004\u0012\u00020p\u0018\u00010oX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010r\u001a\b\u0012\u0004\u0012\u00020p0s8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bt\u0010uR&\u0010z\u001a\u00020y2\u0006\u0010K\u001a\u00020y@TX\u0096\u000e¢\u0006\u0010\n\u0002\u0010~\u001a\u0004\b{\u0010I\"\u0004\b|\u0010}R'\u0010\u007f\u001a\u00020%2\u0006\u0010K\u001a\u00020%@DX\u0086\u000e¢\u0006\u0011\n\u0000\u001a\u0005\b\u0080\u0001\u0010'\"\u0006\b\u0081\u0001\u0010\u0082\u0001R\u001a\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001R\u0015\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u00038F¢\u0006\u0007\u001a\u0005\b\u008a\u0001\u0010/R\u0015\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00038F¢\u0006\u0007\u001a\u0005\b\u008c\u0001\u0010/R\u0012\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008e\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u008f\u0001\u001a\u00030\u008e\u00018DX\u0084\u0004¢\u0006\b\u001a\u0006\b\u0090\u0001\u0010\u0091\u0001R\u0018\u0010\u0092\u0001\u001a\u00030\u0093\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0094\u0001\u0010\u0095\u0001R\u0012\u0010\u0096\u0001\u001a\u0005\u0018\u00010\u0097\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u0098\u0001\u001a\u00030\u0099\u00018@X\u0080\u0004¢\u0006\u0007\u001a\u0005\b\u009a\u0001\u0010IR \u0010\u009b\u0001\u001a\u00030\u009c\u0001X\u0080\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u009d\u0001\u0010\u009e\u0001\"\u0006\b\u009f\u0001\u0010 \u0001R\u001d\u0010¡\u0001\u001a\u00020\fX\u0080\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b¢\u0001\u0010\u000e\"\u0005\b£\u0001\u0010\u0010R\u001d\u0010¤\u0001\u001a\u00020\fX\u0080\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b¥\u0001\u0010\u000e\"\u0005\b¦\u0001\u0010\u0010R\u0012\u0010Ã\u0001\u001a\u0005\u0018\u00010³\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010Ä\u0001\u001a\u0005\u0018\u00010¾\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R(\u0010Å\u0001\u001a\u001b\u0012\u0005\u0012\u00030¾\u0001\u0012\u0007\u0012\u0005\u0018\u00010³\u0001\u0012\u0004\u0012\u000206\u0018\u00010Æ\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R.\u0010Ç\u0001\u001a\u0019\u0012\u0005\u0012\u00030¾\u0001\u0012\u0007\u0012\u0005\u0018\u00010³\u0001\u0012\u0004\u0012\u0002060Æ\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\bÈ\u0001\u0010É\u0001R\u0016\u0010Î\u0001\u001a\t\u0012\u0004\u0012\u0002060ª\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010Ï\u0001\u001a\u00020\f2\u0006\u0010K\u001a\u00020\f@BX\u0080\u000e¢\u0006\t\n\u0000\u001a\u0005\bÐ\u0001\u0010\u000eR'\u0010²\u0001\u001a\u0005\u0018\u00010Ñ\u00012\t\u0010K\u001a\u0005\u0018\u00010Ñ\u0001@BX\u0086\u000e¢\u0006\n\n\u0000\u001a\u0006\bÒ\u0001\u0010Ó\u0001R\u0012\u0010¶\u0001\u001a\u0005\u0018\u00010³\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010Ô\u0001\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\bÔ\u0001\u0010\u000eR\u0014\u0010Õ\u0001\u001a\u00030Ö\u00018F¢\u0006\u0007\u001a\u0005\b×\u0001\u0010I¨\u0006È\u0002"}, d2 = {"Landroidx/compose/ui/node/NodeCoordinator;", "Landroidx/compose/ui/node/LookaheadCapablePlaceable;", "Landroidx/compose/ui/layout/Measurable;", "Landroidx/compose/ui/layout/LayoutCoordinates;", "Landroidx/compose/ui/node/OwnerScope;", "layoutNode", "Landroidx/compose/ui/node/LayoutNode;", "<init>", "(Landroidx/compose/ui/node/LayoutNode;)V", "getLayoutNode", "()Landroidx/compose/ui/node/LayoutNode;", "forcePlaceWithLookaheadOffset", "", "getForcePlaceWithLookaheadOffset$ui", "()Z", "setForcePlaceWithLookaheadOffset$ui", "(Z)V", "forceMeasureWithLookaheadConstraints", "getForceMeasureWithLookaheadConstraints$ui", "setForceMeasureWithLookaheadConstraints$ui", "tail", "Landroidx/compose/ui/Modifier$Node;", "getTail", "()Landroidx/compose/ui/Modifier$Node;", "wrapped", "getWrapped$ui", "()Landroidx/compose/ui/node/NodeCoordinator;", "setWrapped$ui", "(Landroidx/compose/ui/node/NodeCoordinator;)V", "wrappedBy", "getWrappedBy$ui", "setWrappedBy$ui", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "density", "", "getDensity", "()F", "fontScale", "getFontScale", "parent", "getParent", "()Landroidx/compose/ui/node/LookaheadCapablePlaceable;", "coordinates", "getCoordinates", "()Landroidx/compose/ui/layout/LayoutCoordinates;", "introducesMotionFrameOfReference", "getIntroducesMotionFrameOfReference", "released", "headNode", "includeTail", "visitNodes", "", "mask", "", "block", "Lkotlin/Function1;", ExifInterface.GPS_DIRECTION_TRUE, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "Landroidx/compose/ui/node/NodeKind;", "visitNodes-aLcG6gQ", "(ILkotlin/jvm/functions/Function1;)V", "hasNode", "hasNode-H91voCI", "(I)Z", TtmlNode.TAG_HEAD, "head-H91voCI", "(I)Landroidx/compose/ui/Modifier$Node;", "size", "Landroidx/compose/ui/unit/IntSize;", "getSize-YbymL2g", "()J", "isClipping", Values.VECTOR_MAP_VECTORS_KEY, "Landroidx/compose/ui/graphics/GraphicsLayerScope;", "Lkotlin/ExtensionFunctionType;", "layerBlock", "getLayerBlock", "()Lkotlin/jvm/functions/Function1;", "layerDensity", "Landroidx/compose/ui/unit/Density;", "layerLayoutDirection", "lastLayerAlpha", "isTransparent", "alignmentLinesOwner", "Landroidx/compose/ui/node/AlignmentLinesOwner;", "getAlignmentLinesOwner", "()Landroidx/compose/ui/node/AlignmentLinesOwner;", "child", "getChild", "replace", "replace$ui", "hasMeasureResult", "getHasMeasureResult", "isAttached", "_measureResult", "Landroidx/compose/ui/layout/MeasureResult;", "measureResult", "getMeasureResult$ui", "()Landroidx/compose/ui/layout/MeasureResult;", "setMeasureResult$ui", "(Landroidx/compose/ui/layout/MeasureResult;)V", "Landroidx/compose/ui/node/LookaheadDelegate;", "lookaheadDelegate", "getLookaheadDelegate", "()Landroidx/compose/ui/node/LookaheadDelegate;", "setLookaheadDelegate", "(Landroidx/compose/ui/node/LookaheadDelegate;)V", "oldAlignmentLines", "Landroidx/collection/MutableObjectIntMap;", "Landroidx/compose/ui/layout/AlignmentLine;", "ensureLookaheadDelegateCreated", "providedAlignmentLines", "", "getProvidedAlignmentLines", "()Ljava/util/Set;", "onMeasureResultChanged", "width", "height", "Landroidx/compose/ui/unit/IntOffset;", "position", "getPosition-nOcc-ac", "setPosition--gyyYBs", "(J)V", "J", "zIndex", "getZIndex", "setZIndex", "(F)V", "parentData", "", "getParentData", "()Ljava/lang/Object;", "onCoordinatesUsed", "onCoordinatesUsed$ui", "parentLayoutCoordinates", "getParentLayoutCoordinates", "parentCoordinates", "getParentCoordinates", "_rectCache", "Landroidx/compose/ui/geometry/MutableRect;", "rectCache", "getRectCache", "()Landroidx/compose/ui/geometry/MutableRect;", "snapshotObserver", "Landroidx/compose/ui/node/OwnerSnapshotObserver;", "getSnapshotObserver", "()Landroidx/compose/ui/node/OwnerSnapshotObserver;", "layerPositionalProperties", "Landroidx/compose/ui/node/LayerPositionalProperties;", "lastMeasurementConstraints", "Landroidx/compose/ui/unit/Constraints;", "getLastMeasurementConstraints-msEJaDk$ui", "lastShape", "Landroidx/compose/ui/graphics/Shape;", "getLastShape$ui", "()Landroidx/compose/ui/graphics/Shape;", "setLastShape$ui", "(Landroidx/compose/ui/graphics/Shape;)V", "lastClip", "getLastClip$ui", "setLastClip$ui", "wasLayerBlockInvoked", "getWasLayerBlockInvoked$ui", "setWasLayerBlockInvoked$ui", "performingMeasure", "Landroidx/compose/ui/layout/Placeable;", "constraints", "Lkotlin/Function0;", "performingMeasure-K40F9xA", "(JLkotlin/jvm/functions/Function0;)Landroidx/compose/ui/layout/Placeable;", "onMeasured", "onUnplaced", "placeAt", "placeAt-f8xVGno", "(JFLkotlin/jvm/functions/Function1;)V", "layer", "Landroidx/compose/ui/graphics/layer/GraphicsLayer;", "(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V", "placeSelf", "explicitLayer", "placeSelf-MLgxB_4", "(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V", "releaseLayer", "placeSelfApparentToRealOffset", "placeSelfApparentToRealOffset-MLgxB_4", "draw", "canvas", "Landroidx/compose/ui/graphics/Canvas;", "graphicsLayer", "drawContainedDrawModifiers", "performDraw", "onPlaced", "drawBlockParentLayer", "drawBlockCanvas", "_drawBlock", "Lkotlin/Function2;", "drawBlock", "getDrawBlock", "()Lkotlin/jvm/functions/Function2;", "updateLayerBlock", "forceUpdateLayerParameters", "updateLayerParameters", "invokeOnLayoutChange", "invalidateParentLayer", "lastLayerDrawingWasSkipped", "getLastLayerDrawingWasSkipped$ui", "Landroidx/compose/ui/node/OwnedLayer;", "getLayer", "()Landroidx/compose/ui/node/OwnedLayer;", "isValidOwnerScope", "minimumTouchTargetSize", "Landroidx/compose/ui/geometry/Size;", "getMinimumTouchTargetSize-NH-jbRc", "hitTest", "hitTestSource", "Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;", "pointerPosition", "Landroidx/compose/ui/geometry/Offset;", "hitTestResult", "Landroidx/compose/ui/node/HitTestResult;", "pointerType", "Landroidx/compose/ui/input/pointer/PointerType;", "isInLayer", "hitTest-qzLsGqo", "(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V", "hit", "hit-5ShdDok", "(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V", "outOfBoundsHit", "distanceFromEdge", "isHitInMinimumTouchTargetBetter", "outOfBoundsHit-8NAm7pk", "(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V", "hitNear", "hitNear-Fh5PU_I", "(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZF)V", "speculativeHit", "speculativeHit-Fh5PU_I", "isInExpandedTouchBounds", "isInExpandedTouchBounds-ThD-n1k", "(Landroidx/compose/ui/Modifier$Node;JI)Z", "hitTestChild", "hitTestChild-qzLsGqo", "touchBoundsInRoot", "Landroidx/compose/ui/geometry/Rect;", "screenToLocal", "relativeToScreen", "screenToLocal-MK-Hz9U", "(J)J", "localToScreen", "relativeToLocal", "localToScreen-MK-Hz9U", "windowToLocal", "relativeToWindow", "windowToLocal-MK-Hz9U", "localToWindow", "localToWindow-MK-Hz9U", "toCoordinator", "localPositionOf", "sourceCoordinates", "relativeToSource", "localPositionOf-R5De75A", "(Landroidx/compose/ui/layout/LayoutCoordinates;J)J", "includeMotionFrameOfReference", "localPositionOf-S_NoaFU", "(Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J", "transformFrom", "matrix", "Landroidx/compose/ui/graphics/Matrix;", "transformFrom-EL8BTi8", "(Landroidx/compose/ui/layout/LayoutCoordinates;[F)V", "transformToScreen", "transformToScreen-58bKbWc", "([F)V", "transformToAncestor", "ancestor", "transformToAncestor-EL8BTi8", "(Landroidx/compose/ui/node/NodeCoordinator;[F)V", "transformFromAncestor", "transformFromAncestor-EL8BTi8", "localBoundingBoxOf", "clipBounds", "ancestorToLocal", "offset", "ancestorToLocal-S_NoaFU", "(Landroidx/compose/ui/node/NodeCoordinator;JZ)J", "rect", "localToRoot", "localToRoot-MK-Hz9U", "withPositionTranslation", "toParentPosition", "toParentPosition-8S9VItk", "(JZ)J", "fromParentPosition", "fromParentPosition-8S9VItk", "drawBorder", "paint", "Landroidx/compose/ui/graphics/Paint;", "onLayoutNodeDetach", "onRelease", "rectInParent", "bounds", "clipToMinimumTouchTargetSize", "rectInParent$ui", "fromParentRect", "withinLayerBounds", "withinLayerBounds-k-4lQ0M", "(J)Z", "isPointerInBounds", "isPointerInBounds-k-4lQ0M", "invalidateLayer", "onLayoutModifierNodeChanged", "findCommonAncestor", "other", "findCommonAncestor$ui", "shouldSharePointerInputWithSiblings", "offsetFromEdge", "offsetFromEdge-MK-Hz9U", "calculateMinimumTouchTargetPadding", "calculateMinimumTouchTargetPadding-E7KxVPU", "distanceInMinimumTouchTarget", "distanceInMinimumTouchTarget-tz77jQw", "(JJ)F", "HitTestSource", "Companion", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class NodeCoordinator extends LookaheadCapablePlaceable implements Measurable, LayoutCoordinates, OwnerScope {
    public static final int $stable = 0;
    public static final String ExpectAttachedLayoutCoordinates = "LayoutCoordinate operations are only valid when isAttached is true";
    public static final String UnmeasuredError = "Asking for measurement result of unmeasured layout modifier";
    private Function2<? super Canvas, ? super GraphicsLayer, Unit> _drawBlock;
    private MeasureResult _measureResult;
    private MutableRect _rectCache;
    private Canvas drawBlockCanvas;
    private GraphicsLayer drawBlockParentLayer;
    private GraphicsLayer explicitLayer;
    private boolean forceMeasureWithLookaheadConstraints;
    private boolean forcePlaceWithLookaheadOffset;
    private boolean isClipping;
    private boolean lastClip;
    private boolean lastLayerDrawingWasSkipped;
    private OwnedLayer layer;
    private Function1<? super GraphicsLayerScope, Unit> layerBlock;
    private LayerPositionalProperties layerPositionalProperties;
    private final LayoutNode layoutNode;
    private MutableObjectIntMap<AlignmentLine> oldAlignmentLines;
    private boolean released;
    private boolean wasLayerBlockInvoked;
    private NodeCoordinator wrapped;
    private NodeCoordinator wrappedBy;
    private float zIndex;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Function1<NodeCoordinator, Unit> onCommitAffectingLayerParams = new Function1<NodeCoordinator, Unit>() { // from class: androidx.compose.ui.node.NodeCoordinator$Companion$onCommitAffectingLayerParams$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(NodeCoordinator nodeCoordinator) throws Throwable {
            invoke2(nodeCoordinator);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(NodeCoordinator coordinator) throws Throwable {
            LayoutNode layoutNode$iv = coordinator.getLayoutNode();
            try {
                if (coordinator.isValidOwnerScope()) {
                    NodeCoordinator.updateLayerParameters$default(coordinator, false, 1, null);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable e$iv) {
                layoutNode$iv.rethrowWithComposeStackTrace(e$iv);
                throw new KotlinNothingValueException();
            }
        }
    };
    private static final Function1<NodeCoordinator, Unit> onCommitAffectingLayer = new Function1<NodeCoordinator, Unit>() { // from class: androidx.compose.ui.node.NodeCoordinator$Companion$onCommitAffectingLayer$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(NodeCoordinator nodeCoordinator) {
            invoke2(nodeCoordinator);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(NodeCoordinator coordinator) {
            OwnedLayer layer = coordinator.getLayer();
            if (layer != null) {
                layer.invalidate();
            }
        }
    };
    private static final ReusableGraphicsLayerScope graphicsLayerScope = new ReusableGraphicsLayerScope();
    private static final LayerPositionalProperties tmpLayerPositionalProperties = new LayerPositionalProperties();
    private static final float[] tmpMatrix = Matrix.m4941constructorimpl$default(null, 1, null);
    private static final HitTestSource PointerInputSource = new HitTestSource() { // from class: androidx.compose.ui.node.NodeCoordinator$Companion$PointerInputSource$1
        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        /* JADX INFO: renamed from: entityType-OLwlOKw, reason: not valid java name */
        public int mo6456entityTypeOLwlOKw() {
            return NodeKind.m6460constructorimpl(16);
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        public boolean interceptOutOfBoundsChildEvents(Modifier.Node node) {
            int i;
            int i2;
            MutableVector mutableVector;
            int iM6460constructorimpl = NodeKind.m6460constructorimpl(16);
            MutableVector mutableVector2 = null;
            Modifier.Node nodePop = node;
            while (nodePop != null) {
                int i3 = 1;
                if (nodePop instanceof PointerInputModifierNode) {
                    PointerInputModifierNode it = (PointerInputModifierNode) nodePop;
                    if (it.interceptOutOfBoundsChildEvents()) {
                        return true;
                    }
                    i = iM6460constructorimpl;
                } else {
                    Modifier.Node this_$iv$iv = nodePop;
                    if (((this_$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? 1 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                        i = iM6460constructorimpl;
                    } else {
                        int count$iv = 0;
                        DelegatingNode this_$iv$iv2 = (DelegatingNode) nodePop;
                        Modifier.Node node$iv$iv = this_$iv$iv2.getDelegate();
                        while (node$iv$iv != null) {
                            Modifier.Node next$iv = node$iv$iv;
                            if (((next$iv.getKindSet() & iM6460constructorimpl) != 0 ? i3 : 0) == 0) {
                                i2 = iM6460constructorimpl;
                            } else {
                                count$iv++;
                                if (count$iv == i3) {
                                    nodePop = next$iv;
                                    i2 = iM6460constructorimpl;
                                } else {
                                    if (mutableVector2 != null) {
                                        i2 = iM6460constructorimpl;
                                        mutableVector = mutableVector2;
                                    } else {
                                        i2 = iM6460constructorimpl;
                                        mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                    }
                                    mutableVector2 = mutableVector;
                                    Modifier.Node theNode$iv = nodePop;
                                    if (theNode$iv != null) {
                                        if (mutableVector2 != null) {
                                            mutableVector2.add(theNode$iv);
                                        }
                                        nodePop = null;
                                    }
                                    if (mutableVector2 != null) {
                                        mutableVector2.add(next$iv);
                                    }
                                }
                            }
                            node$iv$iv = node$iv$iv.getChild();
                            iM6460constructorimpl = i2;
                            i3 = 1;
                        }
                        i = iM6460constructorimpl;
                        if (count$iv == 1) {
                            iM6460constructorimpl = i;
                        }
                    }
                }
                nodePop = DelegatableNodeKt.pop(mutableVector2);
                iM6460constructorimpl = i;
            }
            return false;
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        public boolean shouldHitTestChildren(LayoutNode parentLayoutNode) {
            return true;
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        /* JADX INFO: renamed from: childHitTest-qzLsGqo, reason: not valid java name */
        public void mo6455childHitTestqzLsGqo(LayoutNode layoutNode, long pointerPosition, HitTestResult hitTestResult, int pointerType, boolean isInLayer) {
            layoutNode.m6369hitTest6fMxITs$ui(pointerPosition, hitTestResult, pointerType, isInLayer);
        }
    };
    private static final HitTestSource SemanticsSource = new HitTestSource() { // from class: androidx.compose.ui.node.NodeCoordinator$Companion$SemanticsSource$1
        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        /* JADX INFO: renamed from: entityType-OLwlOKw */
        public int mo6456entityTypeOLwlOKw() {
            return NodeKind.m6460constructorimpl(8);
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        public boolean interceptOutOfBoundsChildEvents(Modifier.Node node) {
            return false;
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        public boolean shouldHitTestChildren(LayoutNode parentLayoutNode) {
            SemanticsConfiguration semanticsConfiguration = parentLayoutNode.getSemanticsConfiguration();
            boolean z = false;
            if (semanticsConfiguration != null && semanticsConfiguration.getIsClearingSemantics()) {
                z = true;
            }
            return !z;
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        /* JADX INFO: renamed from: childHitTest-qzLsGqo */
        public void mo6455childHitTestqzLsGqo(LayoutNode layoutNode, long pointerPosition, HitTestResult hitTestResult, int pointerType, boolean isInLayer) {
            layoutNode.m6370hitTestSemantics6fMxITs$ui(pointerPosition, hitTestResult, pointerType, isInLayer);
        }
    };
    private Density layerDensity = getLayoutNode().getDensity();
    private LayoutDirection layerLayoutDirection = getLayoutNode().getLayoutDirection();
    private float lastLayerAlpha = 0.8f;
    private long position = IntOffset.INSTANCE.m7644getZeronOccac();
    private Shape lastShape = RectangleShapeKt.getRectangleShape();
    private final Function0<Unit> invalidateParentLayer = new Function0<Unit>() { // from class: androidx.compose.ui.node.NodeCoordinator$invalidateParentLayer$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            NodeCoordinator wrappedBy = this.this$0.getWrappedBy();
            if (wrappedBy != null) {
                wrappedBy.invalidateLayer();
            }
        }
    };

    /* JADX INFO: compiled from: NodeCoordinator.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b`\u0018\u00002\u00020\u0001J\u0013\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003H&¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\fH&J7\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0007H&¢\u0006\u0004\b\u0017\u0010\u0018ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0019À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;", "", "entityType", "Landroidx/compose/ui/node/NodeKind;", "entityType-OLwlOKw", "()I", "interceptOutOfBoundsChildEvents", "", "node", "Landroidx/compose/ui/Modifier$Node;", "shouldHitTestChildren", "parentLayoutNode", "Landroidx/compose/ui/node/LayoutNode;", "childHitTest", "", "layoutNode", "pointerPosition", "Landroidx/compose/ui/geometry/Offset;", "hitTestResult", "Landroidx/compose/ui/node/HitTestResult;", "pointerType", "Landroidx/compose/ui/input/pointer/PointerType;", "isInLayer", "childHitTest-qzLsGqo", "(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;IZ)V", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface HitTestSource {
        /* JADX INFO: renamed from: childHitTest-qzLsGqo */
        void mo6455childHitTestqzLsGqo(LayoutNode layoutNode, long pointerPosition, HitTestResult hitTestResult, int pointerType, boolean isInLayer);

        /* JADX INFO: renamed from: entityType-OLwlOKw */
        int mo6456entityTypeOLwlOKw();

        boolean interceptOutOfBoundsChildEvents(Modifier.Node node);

        boolean shouldHitTestChildren(LayoutNode parentLayoutNode);
    }

    public abstract void ensureLookaheadDelegateCreated();

    public abstract LookaheadDelegate getLookaheadDelegate();

    public abstract Modifier.Node getTail();

    protected abstract void setLookaheadDelegate(LookaheadDelegate lookaheadDelegate);

    public NodeCoordinator(LayoutNode layoutNode) {
        this.layoutNode = layoutNode;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable, androidx.compose.ui.node.MeasureScopeWithLayoutNode
    public LayoutNode getLayoutNode() {
        return this.layoutNode;
    }

    /* JADX INFO: renamed from: getForcePlaceWithLookaheadOffset$ui, reason: from getter */
    public final boolean getForcePlaceWithLookaheadOffset() {
        return this.forcePlaceWithLookaheadOffset;
    }

    public final void setForcePlaceWithLookaheadOffset$ui(boolean z) {
        this.forcePlaceWithLookaheadOffset = z;
    }

    /* JADX INFO: renamed from: getForceMeasureWithLookaheadConstraints$ui, reason: from getter */
    public final boolean getForceMeasureWithLookaheadConstraints() {
        return this.forceMeasureWithLookaheadConstraints;
    }

    public final void setForceMeasureWithLookaheadConstraints$ui(boolean z) {
        this.forceMeasureWithLookaheadConstraints = z;
    }

    /* JADX INFO: renamed from: getWrapped$ui, reason: from getter */
    public final NodeCoordinator getWrapped() {
        return this.wrapped;
    }

    public final void setWrapped$ui(NodeCoordinator nodeCoordinator) {
        this.wrapped = nodeCoordinator;
    }

    /* JADX INFO: renamed from: getWrappedBy$ui, reason: from getter */
    public final NodeCoordinator getWrappedBy() {
        return this.wrappedBy;
    }

    public final void setWrappedBy$ui(NodeCoordinator nodeCoordinator) {
        this.wrappedBy = nodeCoordinator;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public LayoutDirection getLayoutDirection() {
        return getLayoutNode().getLayoutDirection();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return getLayoutNode().getDensity().getDensity();
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public float getFontScale() {
        return getLayoutNode().getDensity().getFontScale();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LookaheadCapablePlaceable getParent() {
        return this.wrappedBy;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LayoutCoordinates getCoordinates() {
        return this;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public boolean getIntroducesMotionFrameOfReference() {
        return getIsPlacedUnderMotionFrameOfReference();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Modifier.Node headNode(boolean includeTail) {
        Modifier.Node tail;
        if (getLayoutNode().getOuterCoordinator$ui() == this) {
            return getLayoutNode().getNodes().getHead();
        }
        NodeCoordinator nodeCoordinator = this.wrappedBy;
        if (includeTail) {
            if (nodeCoordinator == null || (tail = nodeCoordinator.getTail()) == null) {
                return null;
            }
            return tail.getChild();
        }
        if (nodeCoordinator != null) {
            return nodeCoordinator.getTail();
        }
        return null;
    }

    public final void visitNodes(int mask, boolean includeTail, Function1<? super Modifier.Node, Unit> block) {
        Modifier.Node stopNode = getTail();
        if (!includeTail && (stopNode = stopNode.getParent()) == null) {
            return;
        }
        for (Modifier.Node node = headNode(includeTail); node != null && (node.getAggregateChildKindSet() & mask) != 0; node = node.getChild()) {
            if ((node.getKindSet() & mask) != 0) {
                block.invoke(node);
            }
            if (node == stopNode) {
                return;
            }
        }
    }

    /* JADX INFO: renamed from: visitNodes-aLcG6gQ, reason: not valid java name */
    public final /* synthetic */ <T> void m6453visitNodesaLcG6gQ(int type, Function1<? super T, Unit> block) {
        int i;
        boolean includeTail$iv;
        NodeCoordinator this_$iv;
        int mask$iv;
        int i2;
        boolean includeTail$iv2;
        NodeCoordinator this_$iv2;
        int mask$iv2;
        boolean includeTail$iv3;
        NodeCoordinator this_$iv3;
        int mask$iv3;
        Object mutableVector;
        int i3 = 0;
        boolean includeTail$iv4 = NodeKindKt.m6469getIncludeSelfInTraversalH91voCI(type);
        NodeCoordinator this_$iv4 = this;
        int mask$iv4 = type;
        Modifier.Node stopNode$iv = this_$iv4.getTail();
        if (includeTail$iv4 || (stopNode$iv = stopNode$iv.getParent()) != null) {
            Modifier.Node node$iv = this_$iv4.headNode(includeTail$iv4);
            while (node$iv != null && (node$iv.getAggregateChildKindSet() & mask$iv4) != 0) {
                if ((node$iv.getKindSet() & mask$iv4) != 0) {
                    Object it = node$iv;
                    Object stack$iv = null;
                    Object node$iv2 = it;
                    while (node$iv2 != null) {
                        Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
                        if (node$iv2 instanceof Object) {
                            block.invoke(node$iv2);
                            i2 = i3;
                            includeTail$iv2 = includeTail$iv4;
                            this_$iv2 = this_$iv4;
                            mask$iv2 = mask$iv4;
                        } else {
                            Modifier.Node this_$iv$iv = (Modifier.Node) node$iv2;
                            i2 = i3;
                            if (!((this_$iv$iv.getKindSet() & type) != 0) || !(node$iv2 instanceof DelegatingNode)) {
                                includeTail$iv2 = includeTail$iv4;
                                this_$iv2 = this_$iv4;
                                mask$iv2 = mask$iv4;
                            } else {
                                int count$iv = 0;
                                DelegatingNode this_$iv$iv2 = (DelegatingNode) node$iv2;
                                Modifier.Node node$iv$iv = this_$iv$iv2.getDelegate();
                                while (node$iv$iv != null) {
                                    Modifier.Node next$iv = node$iv$iv;
                                    if (((next$iv.getKindSet() & type) != 0 ? 1 : 0) == 0) {
                                        includeTail$iv3 = includeTail$iv4;
                                        this_$iv3 = this_$iv4;
                                        mask$iv3 = mask$iv4;
                                    } else {
                                        count$iv++;
                                        includeTail$iv3 = includeTail$iv4;
                                        if (count$iv == 1) {
                                            node$iv2 = next$iv;
                                            this_$iv3 = this_$iv4;
                                            mask$iv3 = mask$iv4;
                                        } else {
                                            Object obj = (MutableVector) stack$iv;
                                            if (obj != null) {
                                                this_$iv3 = this_$iv4;
                                                mask$iv3 = mask$iv4;
                                                mutableVector = obj;
                                            } else {
                                                this_$iv3 = this_$iv4;
                                                mask$iv3 = mask$iv4;
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            stack$iv = mutableVector;
                                            Modifier.Node theNode$iv = (Modifier.Node) node$iv2;
                                            if (theNode$iv != null) {
                                                MutableVector mutableVector2 = (MutableVector) stack$iv;
                                                if (mutableVector2 != null) {
                                                    mutableVector2.add(theNode$iv);
                                                }
                                                node$iv2 = null;
                                            }
                                            MutableVector mutableVector3 = (MutableVector) stack$iv;
                                            if (mutableVector3 != null) {
                                                mutableVector3.add(next$iv);
                                            }
                                        }
                                    }
                                    node$iv$iv = node$iv$iv.getChild();
                                    includeTail$iv4 = includeTail$iv3;
                                    this_$iv4 = this_$iv3;
                                    mask$iv4 = mask$iv3;
                                }
                                includeTail$iv2 = includeTail$iv4;
                                this_$iv2 = this_$iv4;
                                mask$iv2 = mask$iv4;
                                if (count$iv == 1) {
                                    i3 = i2;
                                    includeTail$iv4 = includeTail$iv2;
                                    this_$iv4 = this_$iv2;
                                    mask$iv4 = mask$iv2;
                                }
                            }
                        }
                        node$iv2 = DelegatableNodeKt.pop((MutableVector) stack$iv);
                        i3 = i2;
                        includeTail$iv4 = includeTail$iv2;
                        this_$iv4 = this_$iv2;
                        mask$iv4 = mask$iv2;
                    }
                    i = i3;
                    includeTail$iv = includeTail$iv4;
                    this_$iv = this_$iv4;
                    mask$iv = mask$iv4;
                } else {
                    i = i3;
                    includeTail$iv = includeTail$iv4;
                    this_$iv = this_$iv4;
                    mask$iv = mask$iv4;
                }
                if (node$iv == stopNode$iv) {
                    return;
                }
                node$iv = node$iv.getChild();
                i3 = i;
                includeTail$iv4 = includeTail$iv;
                this_$iv4 = this_$iv;
                mask$iv4 = mask$iv;
            }
        }
    }

    /* JADX INFO: renamed from: hasNode-H91voCI, reason: not valid java name */
    private final boolean m6430hasNodeH91voCI(int type) {
        Modifier.Node nodeHeadNode = headNode(NodeKindKt.m6469getIncludeSelfInTraversalH91voCI(type));
        return nodeHeadNode != null && DelegatableNodeKt.m6310has64DMado(nodeHeadNode, type);
    }

    /* JADX INFO: renamed from: head-H91voCI, reason: not valid java name */
    public final Modifier.Node m6446headH91voCI(int type) {
        boolean includeTail$iv = NodeKindKt.m6469getIncludeSelfInTraversalH91voCI(type);
        Modifier.Node stopNode$iv = getTail();
        if (includeTail$iv || (stopNode$iv = stopNode$iv.getParent()) != null) {
            for (Modifier.Node node$iv = headNode(includeTail$iv); node$iv != null && (node$iv.getAggregateChildKindSet() & type) != 0; node$iv = node$iv.getChild()) {
                if ((node$iv.getKindSet() & type) != 0) {
                    Modifier.Node it = node$iv;
                    return it;
                }
                if (node$iv == stopNode$iv) {
                    return null;
                }
            }
            return null;
        }
        return null;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: getSize-YbymL2g */
    public final long mo6149getSizeYbymL2g() {
        return getMeasuredSize();
    }

    protected final Function1<GraphicsLayerScope, Unit> getLayerBlock() {
        return this.layerBlock;
    }

    public final boolean isTransparent() {
        if (this.layer != null && this.lastLayerAlpha <= 0.0f) {
            return true;
        }
        NodeCoordinator nodeCoordinator = this.wrappedBy;
        if (nodeCoordinator != null) {
            return nodeCoordinator.isTransparent();
        }
        return false;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public AlignmentLinesOwner getAlignmentLinesOwner() {
        return getLayoutNode().getLayoutDelegate().getAlignmentLinesOwner$ui();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LookaheadCapablePlaceable getChild() {
        return this.wrapped;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public void replace$ui() {
        GraphicsLayer explicitLayer = this.explicitLayer;
        if (explicitLayer != null) {
            mo6204placeAtf8xVGno(getPosition(), this.zIndex, explicitLayer);
        } else {
            mo6142placeAtf8xVGno(getPosition(), this.zIndex, this.layerBlock);
        }
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public boolean getHasMeasureResult() {
        return this._measureResult != null;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public boolean isAttached() {
        return getTail().getIsAttached();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public MeasureResult getMeasureResult$ui() {
        MeasureResult measureResult = this._measureResult;
        if (measureResult != null) {
            return measureResult;
        }
        throw new IllegalStateException(UnmeasuredError.toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setMeasureResult$ui(MeasureResult value) {
        MeasureResult old = this._measureResult;
        if (value != old) {
            this._measureResult = value;
            if (old == null || value.get$w() != old.get$w() || value.get$h() != old.get$h()) {
                onMeasureResultChanged(value.get$w(), value.get$h());
            }
            if (this.oldAlignmentLines != null) {
                MutableObjectIntMap<AlignmentLine> mutableObjectIntMap = this.oldAlignmentLines;
                Intrinsics.checkNotNull(mutableObjectIntMap);
                if (!mutableObjectIntMap.isNotEmpty()) {
                    if (value.getAlignmentLines().isEmpty()) {
                        return;
                    }
                }
            }
            if (!NodeCoordinatorKt.compareEquals(this.oldAlignmentLines, value.getAlignmentLines())) {
                getAlignmentLinesOwner().getAlignmentLines().onAlignmentsChanged();
                MutableObjectIntMap<AlignmentLine> mutableObjectIntMapMutableObjectIntMapOf = this.oldAlignmentLines;
                if (mutableObjectIntMapMutableObjectIntMapOf == null) {
                    mutableObjectIntMapMutableObjectIntMapOf = ObjectIntMapKt.mutableObjectIntMapOf();
                    this.oldAlignmentLines = mutableObjectIntMapMutableObjectIntMapOf;
                }
                mutableObjectIntMapMutableObjectIntMapOf.clear();
                for (Map.Entry<AlignmentLine, Integer> entry : value.getAlignmentLines().entrySet()) {
                    mutableObjectIntMapMutableObjectIntMapOf.set(entry.getKey(), entry.getValue().intValue());
                }
            }
        }
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public Set<AlignmentLine> getProvidedAlignmentLines() {
        Set set = null;
        for (NodeCoordinator coordinator = this; coordinator != null; coordinator = coordinator.wrapped) {
            MeasureResult measureResult = coordinator._measureResult;
            Map<AlignmentLine, Integer> alignmentLines = measureResult != null ? measureResult.getAlignmentLines() : null;
            boolean z = false;
            if (alignmentLines != null && (!alignmentLines.isEmpty())) {
                z = true;
            }
            if (z) {
                if (set == null) {
                    Set set2 = new LinkedHashSet();
                    set = set2;
                }
                set.addAll(alignmentLines.keySet());
            }
        }
        return set == null ? SetsKt.emptySet() : set;
    }

    protected void onMeasureResultChanged(int width, int height) {
        NodeCoordinator nodeCoordinator;
        OwnedLayer layer;
        int i;
        OwnedLayer layer2;
        int i2;
        OwnedLayer layer3;
        int i3;
        Modifier.Node node;
        int count$iv$iv;
        MutableVector mutableVector;
        OwnedLayer layer4 = this.layer;
        if (layer4 != null) {
            layer4.mo6522resizeozmzZPI(IntSize.m7671constructorimpl((((long) width) << 32) | (((long) height) & 4294967295L)));
        } else if (getLayoutNode().isPlaced() && (nodeCoordinator = this.wrappedBy) != null) {
            nodeCoordinator.invalidateLayer();
        }
        m6205setMeasuredSizeozmzZPI(IntSize.m7671constructorimpl((4294967295L & ((long) height)) | (((long) width) << 32)));
        if (this.layerBlock != null) {
            updateLayerParameters(false);
        }
        int iM6460constructorimpl = NodeKind.m6460constructorimpl(4);
        boolean includeTail$iv$iv = NodeKindKt.m6469getIncludeSelfInTraversalH91voCI(iM6460constructorimpl);
        Modifier.Node stopNode$iv$iv = getTail();
        if (includeTail$iv$iv || (stopNode$iv$iv = stopNode$iv$iv.getParent()) != null) {
            Modifier.Node node$iv$iv = headNode(includeTail$iv$iv);
            while (node$iv$iv != null && (node$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) != 0) {
                if ((node$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                    Modifier.Node it$iv = node$iv$iv;
                    int i4 = iM6460constructorimpl;
                    MutableVector mutableVector2 = null;
                    Modifier.Node nodePop = it$iv;
                    while (nodePop != null) {
                        if (nodePop instanceof DrawModifierNode) {
                            DrawModifierNode it = (DrawModifierNode) nodePop;
                            it.onMeasureResultChanged();
                            layer2 = layer4;
                            i2 = iM6460constructorimpl;
                        } else {
                            Modifier.Node this_$iv$iv$iv = nodePop;
                            if (!((this_$iv$iv$iv.getKindSet() & i4) != 0) || !(nodePop instanceof DelegatingNode)) {
                                layer2 = layer4;
                                i2 = iM6460constructorimpl;
                            } else {
                                int count$iv$iv2 = 0;
                                DelegatingNode this_$iv$iv$iv2 = (DelegatingNode) nodePop;
                                Modifier.Node node$iv$iv$iv = this_$iv$iv$iv2.getDelegate();
                                while (node$iv$iv$iv != null) {
                                    Modifier.Node next$iv$iv = node$iv$iv$iv;
                                    if (((next$iv$iv.getKindSet() & i4) != 0 ? 1 : 0) == 0) {
                                        layer3 = layer4;
                                        i3 = iM6460constructorimpl;
                                        node = nodePop;
                                    } else {
                                        count$iv$iv2++;
                                        layer3 = layer4;
                                        if (count$iv$iv2 == 1) {
                                            i3 = iM6460constructorimpl;
                                            node = next$iv$iv;
                                        } else {
                                            if (mutableVector2 != null) {
                                                count$iv$iv = count$iv$iv2;
                                                i3 = iM6460constructorimpl;
                                                node = nodePop;
                                                mutableVector = mutableVector2;
                                            } else {
                                                count$iv$iv = count$iv$iv2;
                                                i3 = iM6460constructorimpl;
                                                node = nodePop;
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            Modifier.Node theNode$iv$iv = node;
                                            if (theNode$iv$iv != null) {
                                                if (mutableVector != null) {
                                                    mutableVector.add(theNode$iv$iv);
                                                }
                                                node = null;
                                            }
                                            if (mutableVector != null) {
                                                mutableVector.add(next$iv$iv);
                                            }
                                            mutableVector2 = mutableVector;
                                            count$iv$iv2 = count$iv$iv;
                                        }
                                    }
                                    node$iv$iv$iv = node$iv$iv$iv.getChild();
                                    layer4 = layer3;
                                    iM6460constructorimpl = i3;
                                    nodePop = node;
                                }
                                layer2 = layer4;
                                i2 = iM6460constructorimpl;
                                Modifier.Node node2 = nodePop;
                                if (count$iv$iv2 == 1) {
                                    layer4 = layer2;
                                    iM6460constructorimpl = i2;
                                    nodePop = node2;
                                }
                            }
                        }
                        nodePop = DelegatableNodeKt.pop(mutableVector2);
                        layer4 = layer2;
                        iM6460constructorimpl = i2;
                    }
                    layer = layer4;
                    i = iM6460constructorimpl;
                } else {
                    layer = layer4;
                    i = iM6460constructorimpl;
                }
                if (node$iv$iv == stopNode$iv$iv) {
                    break;
                }
                node$iv$iv = node$iv$iv.getChild();
                layer4 = layer;
                iM6460constructorimpl = i;
            }
        }
        Owner owner = getLayoutNode().getOwner();
        if (owner != null) {
            owner.onLayoutChange(getLayoutNode());
        }
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    /* JADX INFO: renamed from: getPosition-nOcc-ac, reason: from getter */
    public long getPosition() {
        return this.position;
    }

    /* JADX INFO: renamed from: setPosition--gyyYBs, reason: not valid java name */
    protected void m6451setPositiongyyYBs(long j) {
        this.position = j;
    }

    public final float getZIndex() {
        return this.zIndex;
    }

    protected final void setZIndex(float f) {
        this.zIndex = f;
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [T, java.lang.Object] */
    @Override // androidx.compose.ui.layout.Measured, androidx.compose.ui.layout.IntrinsicMeasurable
    public Object getParentData() {
        NodeChain this_$iv;
        int $i$f$tailToHead$ui;
        Modifier.Node node$iv;
        NodeChain this_$iv2;
        int $i$f$tailToHead$ui2;
        Modifier.Node node$iv2;
        NodeChain this_$iv3;
        int $i$f$tailToHead$ui3;
        Modifier.Node node$iv3;
        int count$iv;
        MutableVector mutableVector;
        int i = 64;
        if (!getLayoutNode().getNodes().m6421hasH91voCI$ui(NodeKind.m6460constructorimpl(64))) {
            return null;
        }
        Modifier.Node thisNode = getTail();
        Ref.ObjectRef data = new Ref.ObjectRef();
        NodeChain this_$iv4 = getLayoutNode().getNodes();
        int $i$f$tailToHead$ui4 = 0;
        Modifier.Node node$iv4 = this_$iv4.getTail();
        while (node$iv4 != null) {
            Modifier.Node node = node$iv4;
            if (((node.getKindSet() & NodeKind.m6460constructorimpl(i)) != 0 ? 1 : 0) != 0) {
                int iM6460constructorimpl = NodeKind.m6460constructorimpl(i);
                MutableVector mutableVector2 = null;
                Modifier.Node nodePop = node;
                while (nodePop != null) {
                    if (nodePop instanceof ParentDataModifierNode) {
                        ParentDataModifierNode it = (ParentDataModifierNode) nodePop;
                        data.element = it.modifyParentData(getLayoutNode().getDensity(), data.element);
                        this_$iv2 = this_$iv4;
                        $i$f$tailToHead$ui2 = $i$f$tailToHead$ui4;
                        node$iv2 = node$iv4;
                    } else {
                        Modifier.Node this_$iv$iv = nodePop;
                        if (((this_$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? 1 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                            this_$iv2 = this_$iv4;
                            $i$f$tailToHead$ui2 = $i$f$tailToHead$ui4;
                            node$iv2 = node$iv4;
                        } else {
                            int count$iv2 = 0;
                            DelegatingNode this_$iv$iv2 = (DelegatingNode) nodePop;
                            Modifier.Node node$iv$iv = this_$iv$iv2.getDelegate();
                            while (node$iv$iv != null) {
                                Modifier.Node next$iv = node$iv$iv;
                                if (((next$iv.getKindSet() & iM6460constructorimpl) != 0 ? 1 : 0) != 0) {
                                    count$iv2++;
                                    this_$iv3 = this_$iv4;
                                    if (count$iv2 == 1) {
                                        nodePop = next$iv;
                                        $i$f$tailToHead$ui3 = $i$f$tailToHead$ui4;
                                        node$iv3 = node$iv4;
                                    } else {
                                        if (mutableVector2 == null) {
                                            count$iv = count$iv2;
                                            $i$f$tailToHead$ui3 = $i$f$tailToHead$ui4;
                                            node$iv3 = node$iv4;
                                            mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                        } else {
                                            count$iv = count$iv2;
                                            $i$f$tailToHead$ui3 = $i$f$tailToHead$ui4;
                                            node$iv3 = node$iv4;
                                            mutableVector = mutableVector2;
                                        }
                                        mutableVector2 = mutableVector;
                                        Modifier.Node theNode$iv = nodePop;
                                        if (theNode$iv != null) {
                                            if (mutableVector2 != null) {
                                                mutableVector2.add(theNode$iv);
                                            }
                                            nodePop = null;
                                        }
                                        if (mutableVector2 != null) {
                                            mutableVector2.add(next$iv);
                                        }
                                        count$iv2 = count$iv;
                                    }
                                } else {
                                    this_$iv3 = this_$iv4;
                                    $i$f$tailToHead$ui3 = $i$f$tailToHead$ui4;
                                    node$iv3 = node$iv4;
                                }
                                node$iv$iv = node$iv$iv.getChild();
                                this_$iv4 = this_$iv3;
                                $i$f$tailToHead$ui4 = $i$f$tailToHead$ui3;
                                node$iv4 = node$iv3;
                            }
                            this_$iv2 = this_$iv4;
                            $i$f$tailToHead$ui2 = $i$f$tailToHead$ui4;
                            node$iv2 = node$iv4;
                            if (count$iv2 == 1) {
                                this_$iv4 = this_$iv2;
                                $i$f$tailToHead$ui4 = $i$f$tailToHead$ui2;
                                node$iv4 = node$iv2;
                            }
                        }
                    }
                    nodePop = DelegatableNodeKt.pop(mutableVector2);
                    this_$iv4 = this_$iv2;
                    $i$f$tailToHead$ui4 = $i$f$tailToHead$ui2;
                    node$iv4 = node$iv2;
                }
                this_$iv = this_$iv4;
                $i$f$tailToHead$ui = $i$f$tailToHead$ui4;
                node$iv = node$iv4;
            } else {
                this_$iv = this_$iv4;
                $i$f$tailToHead$ui = $i$f$tailToHead$ui4;
                node$iv = node$iv4;
            }
            if (node != thisNode) {
            }
            node$iv4 = node$iv.getParent();
            this_$iv4 = this_$iv;
            $i$f$tailToHead$ui4 = $i$f$tailToHead$ui;
            i = 64;
        }
        return data.element;
    }

    public final void onCoordinatesUsed$ui() {
        getLayoutNode().getLayoutDelegate().onCoordinatesUsed();
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final LayoutCoordinates getParentLayoutCoordinates() {
        boolean value$iv = isAttached();
        if (!value$iv) {
            StringBuilder builder = new StringBuilder(ExpectAttachedLayoutCoordinates);
            for (LayoutNode node = getLayoutNode(); node != null; node = node.getParent$ui()) {
                Intrinsics.checkNotNullExpressionValue(builder.append('\n'), "append(...)");
                builder.append("|");
                builder.append(node);
                builder.append(" isAttached=");
                builder.append(node.isAttached());
                builder.append(" modifier=");
                builder.append(node.get_modifier());
                builder.append(" tail=");
                builder.append(getTail());
            }
            InlineClassHelperKt.throwIllegalStateException(builder.toString());
        }
        onCoordinatesUsed$ui();
        return getLayoutNode().getOuterCoordinator$ui().wrappedBy;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final LayoutCoordinates getParentCoordinates() {
        boolean value$iv = isAttached();
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalStateException(ExpectAttachedLayoutCoordinates);
        }
        onCoordinatesUsed$ui();
        return this.wrappedBy;
    }

    protected final MutableRect getRectCache() {
        MutableRect mutableRect = this._rectCache;
        if (mutableRect != null) {
            return mutableRect;
        }
        MutableRect it = new MutableRect(0.0f, 0.0f, 0.0f, 0.0f);
        this._rectCache = it;
        return it;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OwnerSnapshotObserver getSnapshotObserver() {
        return LayoutNodeKt.requireOwner(getLayoutNode()).getSnapshotObserver();
    }

    /* JADX INFO: renamed from: getLastMeasurementConstraints-msEJaDk$ui, reason: not valid java name */
    public final long m6444getLastMeasurementConstraintsmsEJaDk$ui() {
        return getMeasurementConstraints();
    }

    /* JADX INFO: renamed from: getLastShape$ui, reason: from getter */
    public final Shape getLastShape() {
        return this.lastShape;
    }

    public final void setLastShape$ui(Shape shape) {
        this.lastShape = shape;
    }

    /* JADX INFO: renamed from: getLastClip$ui, reason: from getter */
    public final boolean getLastClip() {
        return this.lastClip;
    }

    public final void setLastClip$ui(boolean z) {
        this.lastClip = z;
    }

    /* JADX INFO: renamed from: getWasLayerBlockInvoked$ui, reason: from getter */
    public final boolean getWasLayerBlockInvoked() {
        return this.wasLayerBlockInvoked;
    }

    public final void setWasLayerBlockInvoked$ui(boolean z) {
        this.wasLayerBlockInvoked = z;
    }

    /* JADX INFO: renamed from: performingMeasure-K40F9xA, reason: not valid java name */
    protected final Placeable m6449performingMeasureK40F9xA(long constraints, Function0<? extends Placeable> block) {
        m6206setMeasurementConstraintsBRTryo0(constraints);
        return block.invoke();
    }

    public final void onMeasured() {
        Modifier.Node stopNode$iv$iv;
        int i;
        int i2;
        NodeCoordinator this_$iv;
        int i3;
        NodeCoordinator this_$iv2;
        int i4;
        Modifier.Node node;
        MutableVector mutableVector;
        NodeCoordinator nodeCoordinator = this;
        if (nodeCoordinator.m6430hasNodeH91voCI(NodeKind.m6460constructorimpl(128))) {
            Snapshot.Companion this_$iv3 = Snapshot.INSTANCE;
            Snapshot previousSnapshot$iv = this_$iv3.getCurrentThreadSnapshot();
            Function1<Object, Unit> readObserver = previousSnapshot$iv != null ? previousSnapshot$iv.getReadObserver() : null;
            Snapshot newSnapshot$iv = this_$iv3.makeCurrentNonObservable(previousSnapshot$iv);
            int i5 = 0;
            try {
                int iM6460constructorimpl = NodeKind.m6460constructorimpl(128);
                NodeCoordinator this_$iv4 = this;
                int i6 = 0;
                boolean includeTail$iv$iv = NodeKindKt.m6469getIncludeSelfInTraversalH91voCI(iM6460constructorimpl);
                if (!includeTail$iv$iv) {
                    stopNode$iv$iv = this_$iv4.getTail().getParent();
                    if (stopNode$iv$iv == null) {
                    }
                    Unit unit = Unit.INSTANCE;
                }
                stopNode$iv$iv = this_$iv4.getTail();
                Modifier.Node node$iv$iv = this_$iv4.headNode(includeTail$iv$iv);
                while (node$iv$iv != null && (node$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) != 0) {
                    if ((node$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                        Modifier.Node it$iv = node$iv$iv;
                        int i7 = iM6460constructorimpl;
                        MutableVector mutableVector2 = null;
                        i = i5;
                        Modifier.Node nodePop = it$iv;
                        while (nodePop != null) {
                            int i8 = iM6460constructorimpl;
                            if (nodePop instanceof LayoutAwareModifierNode) {
                                LayoutAwareModifierNode it = (LayoutAwareModifierNode) nodePop;
                                this_$iv2 = this_$iv4;
                                i4 = i6;
                                it.mo394onRemeasuredozmzZPI(nodeCoordinator.getMeasuredSize());
                            } else {
                                this_$iv2 = this_$iv4;
                                i4 = i6;
                                Modifier.Node this_$iv$iv$iv = nodePop;
                                int i9 = 1;
                                if (((this_$iv$iv$iv.getKindSet() & i7) != 0) && (nodePop instanceof DelegatingNode)) {
                                    int count$iv$iv = 0;
                                    DelegatingNode this_$iv$iv$iv2 = (DelegatingNode) nodePop;
                                    Modifier.Node node$iv$iv$iv = this_$iv$iv$iv2.getDelegate();
                                    while (node$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv = node$iv$iv$iv;
                                        if (((next$iv$iv.getKindSet() & i7) != 0 ? i9 : 0) != 0) {
                                            count$iv$iv++;
                                            if (count$iv$iv == i9) {
                                                nodePop = next$iv$iv;
                                            } else {
                                                if (mutableVector2 != null) {
                                                    node = nodePop;
                                                    mutableVector = mutableVector2;
                                                } else {
                                                    node = nodePop;
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                Modifier.Node theNode$iv$iv = node;
                                                if (theNode$iv$iv != null) {
                                                    if (mutableVector != null) {
                                                        mutableVector.add(theNode$iv$iv);
                                                    }
                                                    node = null;
                                                }
                                                if (mutableVector != null) {
                                                    mutableVector.add(next$iv$iv);
                                                }
                                                mutableVector2 = mutableVector;
                                                nodePop = node;
                                            }
                                        }
                                        node$iv$iv$iv = node$iv$iv$iv.getChild();
                                        i9 = 1;
                                    }
                                    Modifier.Node node2 = nodePop;
                                    if (count$iv$iv == 1) {
                                        nodeCoordinator = this;
                                        iM6460constructorimpl = i8;
                                        this_$iv4 = this_$iv2;
                                        i6 = i4;
                                        nodePop = node2;
                                    }
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector2);
                            nodeCoordinator = this;
                            iM6460constructorimpl = i8;
                            this_$iv4 = this_$iv2;
                            i6 = i4;
                        }
                        i2 = iM6460constructorimpl;
                        this_$iv = this_$iv4;
                        i3 = i6;
                    } else {
                        i = i5;
                        i2 = iM6460constructorimpl;
                        this_$iv = this_$iv4;
                        i3 = i6;
                    }
                    if (node$iv$iv == stopNode$iv$iv) {
                        break;
                    }
                    node$iv$iv = node$iv$iv.getChild();
                    nodeCoordinator = this;
                    i5 = i;
                    iM6460constructorimpl = i2;
                    this_$iv4 = this_$iv;
                    i6 = i3;
                }
                Unit unit2 = Unit.INSTANCE;
            } finally {
                this_$iv3.restoreNonObservable(previousSnapshot$iv, newSnapshot$iv, readObserver);
            }
        }
    }

    public final void onUnplaced() {
        int i;
        NodeCoordinator this_$iv;
        Modifier.Node node;
        int count$iv$iv;
        MutableVector mutableVector;
        if (!m6430hasNodeH91voCI(NodeKind.m6460constructorimpl(1048576))) {
            return;
        }
        int iM6460constructorimpl = NodeKind.m6460constructorimpl(1048576);
        NodeCoordinator this_$iv2 = this;
        boolean includeTail$iv$iv = NodeKindKt.m6469getIncludeSelfInTraversalH91voCI(iM6460constructorimpl);
        Modifier.Node stopNode$iv$iv = this_$iv2.getTail();
        if (includeTail$iv$iv || (stopNode$iv$iv = stopNode$iv$iv.getParent()) != null) {
            Modifier.Node node$iv$iv = this_$iv2.headNode(includeTail$iv$iv);
            while (node$iv$iv != null && (node$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) != 0) {
                if ((node$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                    Modifier.Node it$iv = node$iv$iv;
                    int i2 = iM6460constructorimpl;
                    MutableVector mutableVector2 = null;
                    i = iM6460constructorimpl;
                    Modifier.Node nodePop = it$iv;
                    while (nodePop != null) {
                        NodeCoordinator this_$iv3 = this_$iv2;
                        if (nodePop instanceof UnplacedAwareModifierNode) {
                            UnplacedAwareModifierNode it = (UnplacedAwareModifierNode) nodePop;
                            it.onUnplaced();
                        } else {
                            Modifier.Node this_$iv$iv$iv = nodePop;
                            if (((this_$iv$iv$iv.getKindSet() & i2) != 0) && (nodePop instanceof DelegatingNode)) {
                                int count$iv$iv2 = 0;
                                DelegatingNode this_$iv$iv$iv2 = (DelegatingNode) nodePop;
                                Modifier.Node node$iv$iv$iv = this_$iv$iv$iv2.getDelegate();
                                while (node$iv$iv$iv != null) {
                                    Modifier.Node next$iv$iv = node$iv$iv$iv;
                                    if (((next$iv$iv.getKindSet() & i2) != 0 ? 1 : 0) == 0) {
                                        node = nodePop;
                                    } else {
                                        count$iv$iv2++;
                                        Modifier.Node node2 = nodePop;
                                        if (count$iv$iv2 == 1) {
                                            node = next$iv$iv;
                                        } else {
                                            if (mutableVector2 != null) {
                                                count$iv$iv = count$iv$iv2;
                                                mutableVector = mutableVector2;
                                            } else {
                                                count$iv$iv = count$iv$iv2;
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            mutableVector2 = mutableVector;
                                            if (node2 == null) {
                                                node = node2;
                                            } else {
                                                if (mutableVector2 != null) {
                                                    mutableVector2.add(node2);
                                                }
                                                node = null;
                                            }
                                            if (mutableVector2 != null) {
                                                mutableVector2.add(next$iv$iv);
                                            }
                                            count$iv$iv2 = count$iv$iv;
                                        }
                                    }
                                    node$iv$iv$iv = node$iv$iv$iv.getChild();
                                    nodePop = node;
                                }
                                Modifier.Node node3 = nodePop;
                                if (count$iv$iv2 == 1) {
                                    this_$iv2 = this_$iv3;
                                    nodePop = node3;
                                }
                            }
                        }
                        nodePop = DelegatableNodeKt.pop(mutableVector2);
                        this_$iv2 = this_$iv3;
                    }
                    this_$iv = this_$iv2;
                } else {
                    i = iM6460constructorimpl;
                    this_$iv = this_$iv2;
                }
                if (node$iv$iv == stopNode$iv$iv) {
                    return;
                }
                node$iv$iv = node$iv$iv.getChild();
                iM6460constructorimpl = i;
                this_$iv2 = this_$iv;
            }
        }
    }

    @Override // androidx.compose.ui.layout.Placeable
    /* JADX INFO: renamed from: placeAt-f8xVGno */
    protected void mo6142placeAtf8xVGno(long position, float zIndex, Function1<? super GraphicsLayerScope, Unit> layerBlock) {
        if (this.forcePlaceWithLookaheadOffset) {
            LookaheadDelegate lookaheadDelegate = getLookaheadDelegate();
            Intrinsics.checkNotNull(lookaheadDelegate);
            m6436placeSelfMLgxB_4(lookaheadDelegate.getPosition(), zIndex, layerBlock, null);
            return;
        }
        m6436placeSelfMLgxB_4(position, zIndex, layerBlock, null);
    }

    @Override // androidx.compose.ui.layout.Placeable
    /* JADX INFO: renamed from: placeAt-f8xVGno */
    protected void mo6204placeAtf8xVGno(long position, float zIndex, GraphicsLayer layer) {
        if (this.forcePlaceWithLookaheadOffset) {
            LookaheadDelegate lookaheadDelegate = getLookaheadDelegate();
            Intrinsics.checkNotNull(lookaheadDelegate);
            m6436placeSelfMLgxB_4(lookaheadDelegate.getPosition(), zIndex, null, layer);
            return;
        }
        m6436placeSelfMLgxB_4(position, zIndex, null, layer);
    }

    /* JADX INFO: renamed from: placeSelf-MLgxB_4, reason: not valid java name */
    private final void m6436placeSelfMLgxB_4(long position, float zIndex, Function1<? super GraphicsLayerScope, Unit> layerBlock, GraphicsLayer explicitLayer) {
        if (explicitLayer != null) {
            boolean value$iv = layerBlock == null;
            if (!value$iv) {
                InlineClassHelperKt.throwIllegalArgumentException("both ways to create layers shouldn't be used together");
            }
            if (this.explicitLayer != explicitLayer) {
                this.explicitLayer = null;
                updateLayerBlock$default(this, null, false, 2, null);
                this.explicitLayer = explicitLayer;
            }
            if (this.layer == null) {
                OwnedLayer $this$placeSelf_MLgxB_4_u24lambda_u241 = LayoutNodeKt.requireOwner(getLayoutNode()).createLayer(getDrawBlock(), this.invalidateParentLayer, explicitLayer);
                $this$placeSelf_MLgxB_4_u24lambda_u241.mo6522resizeozmzZPI(getMeasuredSize());
                $this$placeSelf_MLgxB_4_u24lambda_u241.mo6521movegyyYBs(position);
                this.layer = $this$placeSelf_MLgxB_4_u24lambda_u241;
                getLayoutNode().setInnerLayerCoordinatorIsDirty$ui(true);
                this.invalidateParentLayer.invoke();
            }
        } else {
            if (this.explicitLayer != null) {
                this.explicitLayer = null;
                updateLayerBlock$default(this, null, false, 2, null);
            }
            updateLayerBlock$default(this, layerBlock, false, 2, null);
        }
        if (!IntOffset.m7632equalsimpl0(getPosition(), position)) {
            LayoutNodeKt.requireOwner(getLayoutNode()).voteFrameRate(FrameRateCategory.INSTANCE.m4180getHighNSsRyOo());
            m6451setPositiongyyYBs(position);
            getLayoutNode().getLayoutDelegate().getMeasurePassDelegate().notifyChildrenUsingCoordinatesWhilePlacing();
            OwnedLayer layer = this.layer;
            if (layer != null) {
                layer.mo6521movegyyYBs(position);
            } else {
                NodeCoordinator nodeCoordinator = this.wrappedBy;
                if (nodeCoordinator != null) {
                    nodeCoordinator.invalidateLayer();
                }
            }
            getLayoutNode().onCoordinatorPositionChanged$ui();
            invalidateAlignmentLinesFromPositionChange(this);
            Owner owner = getLayoutNode().getOwner();
            if (owner != null) {
                owner.onLayoutChange(getLayoutNode());
            }
        }
        this.zIndex = zIndex;
        if (this == getLayoutNode().getOuterCoordinator$ui()) {
            RectManager.onLayoutPositionChanged$default(LayoutNodeKt.requireOwner(getLayoutNode()).getRectManager(), getLayoutNode(), false, 2, null);
        }
        if (!getIsPlacingForAlignment()) {
            captureRulersIfNeeded$ui(getMeasureResult$ui());
        }
    }

    public final void releaseLayer() {
        if (this.layer != null) {
            if (this.explicitLayer != null) {
                this.explicitLayer = null;
            }
            updateLayerBlock$default(this, null, false, 2, null);
            LayoutNode.requestRelayout$ui$default(getLayoutNode(), false, 1, null);
        }
    }

    /* JADX INFO: renamed from: placeSelfApparentToRealOffset-MLgxB_4, reason: not valid java name */
    public final void m6450placeSelfApparentToRealOffsetMLgxB_4(long position, float zIndex, Function1<? super GraphicsLayerScope, Unit> layerBlock, GraphicsLayer layer) {
        m6436placeSelfMLgxB_4(IntOffset.m7637plusqkQi6aY(position, getApparentToRealOffset()), zIndex, layerBlock, layer);
    }

    public final void draw(Canvas canvas, GraphicsLayer graphicsLayer) {
        OwnedLayer layer = this.layer;
        if (layer != null) {
            layer.drawLayer(canvas, graphicsLayer);
            return;
        }
        float x = IntOffset.m7633getXimpl(getPosition());
        float y = IntOffset.m7634getYimpl(getPosition());
        canvas.translate(x, y);
        drawContainedDrawModifiers(canvas, graphicsLayer);
        canvas.translate(-x, -y);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void drawContainedDrawModifiers(Canvas canvas, GraphicsLayer graphicsLayer) {
        Modifier.Node head = m6446headH91voCI(NodeKind.m6460constructorimpl(4));
        if (head == null) {
            performDraw(canvas, graphicsLayer);
        } else {
            LayoutNodeDrawScope drawScope = getLayoutNode().getMDrawScope$ui();
            drawScope.m6382draweZhPAX0$ui(canvas, IntSizeKt.m7688toSizeozmzZPI(mo6149getSizeYbymL2g()), this, head, graphicsLayer);
        }
    }

    public void performDraw(Canvas canvas, GraphicsLayer graphicsLayer) {
        NodeCoordinator nodeCoordinator = this.wrapped;
        if (nodeCoordinator != null) {
            nodeCoordinator.draw(canvas, graphicsLayer);
        }
    }

    public final void onPlaced() {
        int i;
        NodeCoordinator this_$iv;
        int i2;
        NodeCoordinator this_$iv2;
        int i3;
        int i4;
        int count$iv$iv;
        MutableVector mutableVector;
        int iM6460constructorimpl = NodeKind.m6460constructorimpl(4194304);
        NodeCoordinator this_$iv3 = this;
        int i5 = 0;
        boolean includeTail$iv$iv = NodeKindKt.m6469getIncludeSelfInTraversalH91voCI(iM6460constructorimpl);
        Modifier.Node stopNode$iv$iv = this_$iv3.getTail();
        if (includeTail$iv$iv || (stopNode$iv$iv = stopNode$iv$iv.getParent()) != null) {
            Modifier.Node node$iv$iv = this_$iv3.headNode(includeTail$iv$iv);
            while (node$iv$iv != null && (node$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) != 0) {
                if ((node$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                    Modifier.Node it$iv = node$iv$iv;
                    int i6 = iM6460constructorimpl;
                    MutableVector mutableVector2 = null;
                    Modifier.Node nodePop = it$iv;
                    while (nodePop != null) {
                        int i7 = iM6460constructorimpl;
                        if (nodePop instanceof LayoutAwareModifierNode) {
                            LayoutAwareModifierNode it = (LayoutAwareModifierNode) nodePop;
                            this_$iv2 = this_$iv3;
                            it.onPlaced(this);
                            i3 = i5;
                        } else {
                            this_$iv2 = this_$iv3;
                            Modifier.Node this_$iv$iv$iv = nodePop;
                            int i8 = 1;
                            if (!((this_$iv$iv$iv.getKindSet() & i6) != 0) || !(nodePop instanceof DelegatingNode)) {
                                i3 = i5;
                            } else {
                                int count$iv$iv2 = 0;
                                DelegatingNode this_$iv$iv$iv2 = (DelegatingNode) nodePop;
                                Modifier.Node node$iv$iv$iv = this_$iv$iv$iv2.getDelegate();
                                while (node$iv$iv$iv != null) {
                                    Modifier.Node next$iv$iv = node$iv$iv$iv;
                                    if (((next$iv$iv.getKindSet() & i6) != 0 ? i8 : 0) == 0) {
                                        i4 = i5;
                                    } else {
                                        count$iv$iv2++;
                                        if (count$iv$iv2 == i8) {
                                            nodePop = next$iv$iv;
                                            i4 = i5;
                                        } else {
                                            if (mutableVector2 != null) {
                                                count$iv$iv = count$iv$iv2;
                                                i4 = i5;
                                                mutableVector = mutableVector2;
                                            } else {
                                                count$iv$iv = count$iv$iv2;
                                                i4 = i5;
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            mutableVector2 = mutableVector;
                                            Modifier.Node theNode$iv$iv = nodePop;
                                            if (theNode$iv$iv != null) {
                                                if (mutableVector2 != null) {
                                                    mutableVector2.add(theNode$iv$iv);
                                                }
                                                nodePop = null;
                                            }
                                            if (mutableVector2 != null) {
                                                mutableVector2.add(next$iv$iv);
                                            }
                                            count$iv$iv2 = count$iv$iv;
                                        }
                                    }
                                    node$iv$iv$iv = node$iv$iv$iv.getChild();
                                    i5 = i4;
                                    i8 = 1;
                                }
                                i3 = i5;
                                if (count$iv$iv2 == 1) {
                                    iM6460constructorimpl = i7;
                                    this_$iv3 = this_$iv2;
                                    i5 = i3;
                                }
                            }
                        }
                        nodePop = DelegatableNodeKt.pop(mutableVector2);
                        iM6460constructorimpl = i7;
                        this_$iv3 = this_$iv2;
                        i5 = i3;
                    }
                    i = iM6460constructorimpl;
                    this_$iv = this_$iv3;
                    i2 = i5;
                } else {
                    i = iM6460constructorimpl;
                    this_$iv = this_$iv3;
                    i2 = i5;
                }
                if (node$iv$iv == stopNode$iv$iv) {
                    return;
                }
                node$iv$iv = node$iv$iv.getChild();
                iM6460constructorimpl = i;
                this_$iv3 = this_$iv;
                i5 = i2;
            }
        }
    }

    private final Function2<Canvas, GraphicsLayer, Unit> getDrawBlock() {
        Function2 block = this._drawBlock;
        if (block == null) {
            final Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.compose.ui.node.NodeCoordinator$drawBlock$drawBlockCallToDrawModifiers$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    NodeCoordinator nodeCoordinator = this.this$0;
                    Canvas canvas = this.this$0.drawBlockCanvas;
                    Intrinsics.checkNotNull(canvas);
                    nodeCoordinator.drawContainedDrawModifiers(canvas, this.this$0.drawBlockParentLayer);
                }
            };
            Function2<Canvas, GraphicsLayer, Unit> function2 = new Function2<Canvas, GraphicsLayer, Unit>() { // from class: androidx.compose.ui.node.NodeCoordinator$drawBlock$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Canvas canvas, GraphicsLayer graphicsLayer) {
                    invoke2(canvas, graphicsLayer);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Canvas canvas, GraphicsLayer parentLayer) {
                    boolean zIsPlaced = this.this$0.getLayoutNode().isPlaced();
                    NodeCoordinator nodeCoordinator = this.this$0;
                    if (zIsPlaced) {
                        nodeCoordinator.drawBlockCanvas = canvas;
                        this.this$0.drawBlockParentLayer = parentLayer;
                        OwnerSnapshotObserver this_$iv = this.this$0.getSnapshotObserver();
                        NodeCoordinator nodeCoordinator2 = this.this$0;
                        Function1 onChanged$iv = NodeCoordinator.onCommitAffectingLayer;
                        this_$iv.observer.observeReads(nodeCoordinator2, onChanged$iv, function0);
                        this.this$0.lastLayerDrawingWasSkipped = false;
                        return;
                    }
                    nodeCoordinator.lastLayerDrawingWasSkipped = true;
                }
            };
            this._drawBlock = function2;
            return function2;
        }
        return block;
    }

    public static /* synthetic */ void updateLayerBlock$default(NodeCoordinator nodeCoordinator, Function1 function1, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateLayerBlock");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        nodeCoordinator.updateLayerBlock(function1, z);
    }

    public final void updateLayerBlock(Function1<? super GraphicsLayerScope, Unit> layerBlock, boolean forceUpdateLayerParameters) {
        Owner owner;
        boolean value$iv = layerBlock == null || this.explicitLayer == null;
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalArgumentException("layerBlock can't be provided when explicitLayer is provided");
        }
        LayoutNode layoutNode = getLayoutNode();
        boolean updateParameters = (!forceUpdateLayerParameters && this.layerBlock == layerBlock && Intrinsics.areEqual(this.layerDensity, layoutNode.getDensity()) && this.layerLayoutDirection == layoutNode.getLayoutDirection()) ? false : true;
        this.layerDensity = layoutNode.getDensity();
        this.layerLayoutDirection = layoutNode.getLayoutDirection();
        if (layoutNode.isAttached() && layerBlock != null) {
            this.layerBlock = layerBlock;
            if (this.layer == null) {
                OwnedLayer $this$updateLayerBlock_u24lambda_u241 = Owner.createLayer$default(LayoutNodeKt.requireOwner(layoutNode), getDrawBlock(), this.invalidateParentLayer, null, 4, null);
                $this$updateLayerBlock_u24lambda_u241.mo6522resizeozmzZPI(getMeasuredSize());
                $this$updateLayerBlock_u24lambda_u241.mo6521movegyyYBs(getPosition());
                this.layer = $this$updateLayerBlock_u24lambda_u241;
                updateLayerParameters$default(this, false, 1, null);
                layoutNode.setInnerLayerCoordinatorIsDirty$ui(true);
                this.invalidateParentLayer.invoke();
                return;
            }
            if (updateParameters) {
                updateLayerParameters$default(this, false, 1, null);
                return;
            }
            return;
        }
        this.layerBlock = null;
        OwnedLayer it = this.layer;
        if (it != null) {
            if (!MatrixKt.m4966isIdentity58bKbWc(it.mo6517getUnderlyingMatrixsQKQjiQ())) {
                layoutNode.onCoordinatorPositionChanged$ui();
            }
            it.destroy();
            layoutNode.setInnerLayerCoordinatorIsDirty$ui(true);
            this.invalidateParentLayer.invoke();
            if (isAttached() && layoutNode.isPlaced() && (owner = layoutNode.getOwner()) != null) {
                owner.onLayoutChange(layoutNode);
            }
        }
        this.layer = null;
        this.lastLayerDrawingWasSkipped = false;
    }

    static /* synthetic */ void updateLayerParameters$default(NodeCoordinator nodeCoordinator, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateLayerParameters");
        }
        if ((i & 1) != 0) {
            z = true;
        }
        nodeCoordinator.updateLayerParameters(z);
    }

    private final void updateLayerParameters(boolean invokeOnLayoutChange) {
        Owner owner;
        if (this.explicitLayer != null) {
            return;
        }
        OwnedLayer layer = this.layer;
        if (layer != null) {
            final Function1<? super GraphicsLayerScope, Unit> function1 = this.layerBlock;
            if (function1 != null) {
                graphicsLayerScope.reset();
                graphicsLayerScope.setGraphicsDensity$ui(getLayoutNode().getDensity());
                graphicsLayerScope.setLayoutDirection$ui(getLayoutNode().getLayoutDirection());
                graphicsLayerScope.m5025setSizeuvyYCjk(IntSizeKt.m7688toSizeozmzZPI(mo6149getSizeYbymL2g()));
                OwnerSnapshotObserver this_$iv = getSnapshotObserver();
                this_$iv.observer.observeReads(this, onCommitAffectingLayerParams, new Function0<Unit>() { // from class: androidx.compose.ui.node.NodeCoordinator.updateLayerParameters.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        function1.invoke(NodeCoordinator.graphicsLayerScope);
                        boolean hasShapeChanged = this.getLastShape() != NodeCoordinator.graphicsLayerScope.getShape();
                        boolean hasClipChanged = this.getLastClip() != NodeCoordinator.graphicsLayerScope.getClip();
                        if (hasShapeChanged || hasClipChanged) {
                            this.setLastShape$ui(NodeCoordinator.graphicsLayerScope.getShape());
                            this.setLastClip$ui(NodeCoordinator.graphicsLayerScope.getClip());
                            if (this.getWasLayerBlockInvoked() && (hasClipChanged || (this.getLastClip() && hasShapeChanged))) {
                                this.getLayoutNode().invalidateSemantics$ui();
                            }
                        }
                        this.setWasLayerBlockInvoked$ui(true);
                        NodeCoordinator.graphicsLayerScope.updateOutline$ui();
                    }
                });
                LayerPositionalProperties it = this.layerPositionalProperties;
                if (it == null) {
                    it = new LayerPositionalProperties();
                    this.layerPositionalProperties = it;
                }
                tmpLayerPositionalProperties.copyFrom(it);
                it.copyFrom(graphicsLayerScope);
                layer.updateLayerProperties(graphicsLayerScope);
                boolean wasClipping = this.isClipping;
                this.isClipping = graphicsLayerScope.getClip();
                this.lastLayerAlpha = graphicsLayerScope.getAlpha();
                boolean positionalPropertiesChanged = !tmpLayerPositionalProperties.hasSameValuesAs(it);
                if (invokeOnLayoutChange && ((positionalPropertiesChanged || wasClipping != this.isClipping) && (owner = getLayoutNode().getOwner()) != null)) {
                    owner.onLayoutChange(getLayoutNode());
                }
                if (positionalPropertiesChanged) {
                    LayoutNode layoutNode = getLayoutNode();
                    LayoutNodeLayoutDelegate layoutDelegate = layoutNode.getLayoutDelegate();
                    if (layoutDelegate.getChildrenAccessingCoordinatesDuringPlacement() > 0) {
                        if (layoutDelegate.getCoordinatesAccessedDuringModifierPlacement() || layoutDelegate.getCoordinatesAccessedDuringPlacement()) {
                            LayoutNode.requestRelayout$ui$default(layoutNode, false, 1, null);
                        }
                        layoutDelegate.getMeasurePassDelegate().notifyChildrenUsingCoordinatesWhilePlacing();
                    }
                    layoutNode.onCoordinatorPositionChanged$ui();
                    Owner owner2 = LayoutNodeKt.requireOwner(layoutNode);
                    RectManager rectManager = owner2.getRectManager();
                    if (this == layoutNode.getOuterCoordinator$ui()) {
                        RectManager.onLayoutPositionChanged$default(rectManager, layoutNode, false, 2, null);
                    } else {
                        rectManager.onLayoutLayerPositionalPropertiesChanged(layoutNode);
                    }
                    if (layoutNode.getGloballyPositionedObservers() > 0) {
                        owner2.requestOnPositionedCallback(layoutNode);
                        return;
                    }
                    return;
                }
                return;
            }
            InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("updateLayerParameters requires a non-null layerBlock");
            throw new KotlinNothingValueException();
        }
        Object value$iv = this.layerBlock;
        boolean value$iv2 = value$iv == null;
        if (value$iv2) {
            return;
        }
        InlineClassHelperKt.throwIllegalStateException("null layer with a non-null layerBlock");
    }

    /* JADX INFO: renamed from: getLastLayerDrawingWasSkipped$ui, reason: from getter */
    public final boolean getLastLayerDrawingWasSkipped() {
        return this.lastLayerDrawingWasSkipped;
    }

    public final OwnedLayer getLayer() {
        return this.layer;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public boolean isValidOwnerScope() {
        return (this.layer == null || this.released || !getLayoutNode().isAttached()) ? false : true;
    }

    /* JADX INFO: renamed from: getMinimumTouchTargetSize-NH-jbRc, reason: not valid java name */
    public final long m6445getMinimumTouchTargetSizeNHjbRc() {
        Density $this$getMinimumTouchTargetSize_NH_jbRc_u24lambda_u240 = this.layerDensity;
        return $this$getMinimumTouchTargetSize_NH_jbRc_u24lambda_u240.mo406toSizeXkaWNTQ(getLayoutNode().getViewConfiguration().mo6376getMinimumTouchTargetSizeMYxV2XQ());
    }

    /* JADX INFO: renamed from: hitTest-qzLsGqo, reason: not valid java name */
    public final void m6447hitTestqzLsGqo(HitTestSource hitTestSource, long pointerPosition, HitTestResult hitTestResult, int pointerType, boolean isInLayer) {
        boolean z;
        Modifier.Node head = m6446headH91voCI(hitTestSource.mo6456entityTypeOLwlOKw());
        boolean isHitInMinimumTouchTargetBetter = false;
        if (!m6454withinLayerBoundsk4lQ0M(pointerPosition)) {
            if (PointerType.m6081equalsimpl0(pointerType, PointerType.INSTANCE.m6088getTouchT8wyACA())) {
                float distanceFromEdge = m6442distanceInMinimumTouchTargettz77jQw(pointerPosition, m6445getMinimumTouchTargetSizeNHjbRc());
                if (((Integer.MAX_VALUE & Float.floatToRawIntBits(distanceFromEdge)) < 2139095040) && hitTestResult.isHitInMinimumTouchTargetBetter(distanceFromEdge, false)) {
                    m6432hitNearFh5PU_I(head, hitTestSource, pointerPosition, hitTestResult, pointerType, false, distanceFromEdge);
                    return;
                }
                return;
            }
            return;
        }
        if (head == null) {
            mo6358hitTestChildqzLsGqo(hitTestSource, pointerPosition, hitTestResult, pointerType, isInLayer);
            return;
        }
        if (m6448isPointerInBoundsk4lQ0M(pointerPosition)) {
            m6431hit5ShdDok(head, hitTestSource, pointerPosition, hitTestResult, pointerType, isInLayer);
            return;
        }
        float distanceFromEdge2 = !PointerType.m6081equalsimpl0(pointerType, PointerType.INSTANCE.m6088getTouchT8wyACA()) ? Float.POSITIVE_INFINITY : m6442distanceInMinimumTouchTargettz77jQw(pointerPosition, m6445getMinimumTouchTargetSizeNHjbRc());
        float $this$fastIsFinite$iv = distanceFromEdge2;
        if (!((Integer.MAX_VALUE & Float.floatToRawIntBits($this$fastIsFinite$iv)) < 2139095040)) {
            z = isInLayer;
        } else {
            z = isInLayer;
            if (hitTestResult.isHitInMinimumTouchTargetBetter(distanceFromEdge2, z)) {
                isHitInMinimumTouchTargetBetter = true;
            }
        }
        m6435outOfBoundsHit8NAm7pk(head, hitTestSource, pointerPosition, hitTestResult, pointerType, z, distanceFromEdge2, isHitInMinimumTouchTargetBetter);
    }

    /* JADX INFO: renamed from: hit-5ShdDok, reason: not valid java name */
    private final void m6431hit5ShdDok(Modifier.Node $this$hit_u2d5ShdDok, HitTestSource hitTestSource, long j, HitTestResult hitTestResult, int i, boolean isInLayer) {
        if ($this$hit_u2d5ShdDok != null) {
            int startDepth$iv$iv$iv = hitTestResult.hitDepth;
            hitTestResult.removeNodesInRange(hitTestResult.hitDepth + 1, hitTestResult.size());
            hitTestResult.hitDepth++;
            hitTestResult.values.add($this$hit_u2d5ShdDok);
            hitTestResult.distanceFromEdgeAndFlags.add(HitTestResultKt.DistanceAndFlags(-1.0f, isInLayer, false));
            m6431hit5ShdDok(NodeCoordinatorKt.m6458nextUntilhw7D004($this$hit_u2d5ShdDok, hitTestSource.mo6456entityTypeOLwlOKw(), NodeKind.m6460constructorimpl(2)), hitTestSource, j, hitTestResult, i, isInLayer);
            hitTestResult.hitDepth = startDepth$iv$iv$iv;
            return;
        }
        mo6358hitTestChildqzLsGqo(hitTestSource, j, hitTestResult, i, isInLayer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: outOfBoundsHit-8NAm7pk, reason: not valid java name */
    public final void m6435outOfBoundsHit8NAm7pk(final Modifier.Node $this$outOfBoundsHit_u2d8NAm7pk, final HitTestSource hitTestSource, final long j, final HitTestResult hitTestResult, final int i, final boolean isInLayer, final float distanceFromEdge, final boolean isHitInMinimumTouchTargetBetter) {
        if ($this$outOfBoundsHit_u2d8NAm7pk == null) {
            mo6358hitTestChildqzLsGqo(hitTestSource, j, hitTestResult, i, isInLayer);
            return;
        }
        if (m6433isInExpandedTouchBoundsThDn1k($this$outOfBoundsHit_u2d8NAm7pk, j, i)) {
            hitTestResult.hitExpandedTouchBounds($this$outOfBoundsHit_u2d8NAm7pk, isInLayer, new Function0<Unit>() { // from class: androidx.compose.ui.node.NodeCoordinator$outOfBoundsHit$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    this.this$0.m6435outOfBoundsHit8NAm7pk(NodeCoordinatorKt.m6458nextUntilhw7D004($this$outOfBoundsHit_u2d8NAm7pk, hitTestSource.mo6456entityTypeOLwlOKw(), NodeKind.m6460constructorimpl(2)), hitTestSource, j, hitTestResult, i, isInLayer, distanceFromEdge, isHitInMinimumTouchTargetBetter);
                }
            });
        } else if (isHitInMinimumTouchTargetBetter) {
            m6432hitNearFh5PU_I($this$outOfBoundsHit_u2d8NAm7pk, hitTestSource, j, hitTestResult, i, isInLayer, distanceFromEdge);
        } else {
            m6437speculativeHitFh5PU_I($this$outOfBoundsHit_u2d8NAm7pk, hitTestSource, j, hitTestResult, i, isInLayer, distanceFromEdge);
        }
    }

    /* JADX INFO: renamed from: hitNear-Fh5PU_I, reason: not valid java name */
    private final void m6432hitNearFh5PU_I(Modifier.Node $this$hitNear_u2dFh5PU_I, HitTestSource hitTestSource, long j, HitTestResult hitTestResult, int i, boolean isInLayer, float distanceFromEdge) {
        if ($this$hitNear_u2dFh5PU_I != null) {
            int startDepth$iv$iv = hitTestResult.hitDepth;
            hitTestResult.removeNodesInRange(hitTestResult.hitDepth + 1, hitTestResult.size());
            hitTestResult.hitDepth++;
            hitTestResult.values.add($this$hitNear_u2dFh5PU_I);
            hitTestResult.distanceFromEdgeAndFlags.add(HitTestResultKt.DistanceAndFlags(distanceFromEdge, isInLayer, false));
            m6435outOfBoundsHit8NAm7pk(NodeCoordinatorKt.m6458nextUntilhw7D004($this$hitNear_u2dFh5PU_I, hitTestSource.mo6456entityTypeOLwlOKw(), NodeKind.m6460constructorimpl(2)), hitTestSource, j, hitTestResult, i, isInLayer, distanceFromEdge, true);
            hitTestResult.hitDepth = startDepth$iv$iv;
            return;
        }
        mo6358hitTestChildqzLsGqo(hitTestSource, j, hitTestResult, i, isInLayer);
    }

    /* JADX INFO: renamed from: speculativeHit-Fh5PU_I, reason: not valid java name */
    private final void m6437speculativeHitFh5PU_I(final Modifier.Node $this$speculativeHit_u2dFh5PU_I, final HitTestSource hitTestSource, final long j, final HitTestResult hitTestResult, final int i, final boolean isInLayer, final float distanceFromEdge) {
        if ($this$speculativeHit_u2dFh5PU_I == null) {
            mo6358hitTestChildqzLsGqo(hitTestSource, j, hitTestResult, i, isInLayer);
        } else if (hitTestSource.interceptOutOfBoundsChildEvents($this$speculativeHit_u2dFh5PU_I)) {
            hitTestResult.speculativeHit($this$speculativeHit_u2dFh5PU_I, distanceFromEdge, isInLayer, new Function0<Unit>() { // from class: androidx.compose.ui.node.NodeCoordinator$speculativeHit$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    this.this$0.m6435outOfBoundsHit8NAm7pk(NodeCoordinatorKt.m6458nextUntilhw7D004($this$speculativeHit_u2dFh5PU_I, hitTestSource.mo6456entityTypeOLwlOKw(), NodeKind.m6460constructorimpl(2)), hitTestSource, j, hitTestResult, i, isInLayer, distanceFromEdge, false);
                }
            });
        } else {
            m6435outOfBoundsHit8NAm7pk(NodeCoordinatorKt.m6458nextUntilhw7D004($this$speculativeHit_u2dFh5PU_I, hitTestSource.mo6456entityTypeOLwlOKw(), NodeKind.m6460constructorimpl(2)), hitTestSource, j, hitTestResult, i, isInLayer, distanceFromEdge, false);
        }
    }

    /* JADX INFO: renamed from: isInExpandedTouchBounds-ThD-n1k, reason: not valid java name */
    private final boolean m6433isInExpandedTouchBoundsThDn1k(Modifier.Node $this$isInExpandedTouchBounds_u2dThD_u2dn1k, long j, int i) {
        if ($this$isInExpandedTouchBounds_u2dThD_u2dn1k == null) {
            return false;
        }
        if (!PointerType.m6081equalsimpl0(i, PointerType.INSTANCE.m6087getStylusT8wyACA()) && !PointerType.m6081equalsimpl0(i, PointerType.INSTANCE.m6085getEraserT8wyACA())) {
            return false;
        }
        int iM6460constructorimpl = NodeKind.m6460constructorimpl(16);
        MutableVector mutableVector = null;
        Modifier.Node nodePop = $this$isInExpandedTouchBounds_u2dThD_u2dn1k;
        while (nodePop != null) {
            if (nodePop instanceof PointerInputModifierNode) {
                PointerInputModifierNode it = (PointerInputModifierNode) nodePop;
                long expansion = it.mo1322getTouchBoundsExpansionRZrCHBk();
                int bits$iv$iv$iv = (int) (j >> 32);
                if (Float.intBitsToFloat(bits$iv$iv$iv) >= (-TouchBoundsExpansion.m6546computeLeftimpl$ui(expansion, getLayoutDirection()))) {
                    int bits$iv$iv$iv2 = (int) (j >> 32);
                    if (Float.intBitsToFloat(bits$iv$iv$iv2) < getMeasuredWidth() + TouchBoundsExpansion.m6547computeRightimpl$ui(expansion, getLayoutDirection())) {
                        int bits$iv$iv$iv3 = (int) (j & 4294967295L);
                        if (Float.intBitsToFloat(bits$iv$iv$iv3) >= (-TouchBoundsExpansion.m6554getTopimpl(expansion))) {
                            int bits$iv$iv$iv4 = (int) (j & 4294967295L);
                            if (Float.intBitsToFloat(bits$iv$iv$iv4) < getMeasuredHeight() + TouchBoundsExpansion.m6551getBottomimpl(expansion)) {
                                return true;
                            }
                        }
                    }
                }
                return false;
            }
            int i2 = iM6460constructorimpl;
            Modifier.Node this_$iv$iv = nodePop;
            if (((this_$iv$iv.getKindSet() & i2) != 0 ? 1 : 0) != 0 && (nodePop instanceof DelegatingNode)) {
                int count$iv = 0;
                DelegatingNode this_$iv$iv2 = (DelegatingNode) nodePop;
                for (Modifier.Node node$iv$iv = this_$iv$iv2.getDelegate(); node$iv$iv != null; node$iv$iv = node$iv$iv.getChild()) {
                    Modifier.Node next$iv = node$iv$iv;
                    if (((next$iv.getKindSet() & i2) != 0 ? 1 : 0) != 0) {
                        count$iv++;
                        if (count$iv == 1) {
                            nodePop = next$iv;
                        } else {
                            mutableVector = mutableVector == null ? new MutableVector(new Modifier.Node[16], 0) : mutableVector;
                            Modifier.Node theNode$iv = nodePop;
                            if (theNode$iv != null) {
                                if (mutableVector != null) {
                                    mutableVector.add(theNode$iv);
                                }
                                nodePop = null;
                            }
                            if (mutableVector != null) {
                                mutableVector.add(next$iv);
                            }
                        }
                    }
                }
                if (count$iv == 1) {
                    iM6460constructorimpl = i2;
                }
            }
            nodePop = DelegatableNodeKt.pop(mutableVector);
            iM6460constructorimpl = i2;
        }
        return false;
    }

    /* JADX INFO: renamed from: hitTestChild-qzLsGqo */
    public void mo6358hitTestChildqzLsGqo(HitTestSource hitTestSource, long pointerPosition, HitTestResult hitTestResult, int pointerType, boolean isInLayer) {
        NodeCoordinator wrapped = this.wrapped;
        if (wrapped != null) {
            long positionInWrapped = m6429fromParentPosition8S9VItk$default(wrapped, pointerPosition, false, 2, null);
            wrapped.m6447hitTestqzLsGqo(hitTestSource, positionInWrapped, hitTestResult, pointerType, isInLayer);
        }
    }

    public final Rect touchBoundsInRoot() {
        if (!isAttached()) {
            return Rect.INSTANCE.getZero();
        }
        LayoutCoordinates root = LayoutCoordinatesKt.findRootCoordinates(this);
        MutableRect bounds = getRectCache();
        long padding = m6441calculateMinimumTouchTargetPaddingE7KxVPU(m6445getMinimumTouchTargetSizeNHjbRc());
        int bits$iv$iv$iv = (int) (padding >> 32);
        bounds.setLeft(-Float.intBitsToFloat(bits$iv$iv$iv));
        int bits$iv$iv$iv2 = (int) (padding & 4294967295L);
        bounds.setTop(-Float.intBitsToFloat(bits$iv$iv$iv2));
        int bits$iv$iv$iv3 = (int) (padding >> 32);
        bounds.setRight(getMeasuredWidth() + Float.intBitsToFloat(bits$iv$iv$iv3));
        int bits$iv$iv$iv4 = (int) (padding & 4294967295L);
        bounds.setBottom(getMeasuredHeight() + Float.intBitsToFloat(bits$iv$iv$iv4));
        NodeCoordinator coordinator = this;
        while (coordinator != root) {
            coordinator.rectInParent$ui(bounds, false, true);
            if (bounds.isEmpty()) {
                return Rect.INSTANCE.getZero();
            }
            NodeCoordinator nodeCoordinator = coordinator.wrappedBy;
            Intrinsics.checkNotNull(nodeCoordinator);
            coordinator = nodeCoordinator;
        }
        return MutableRectKt.toRect(bounds);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: screenToLocal-MK-Hz9U */
    public long mo6155screenToLocalMKHz9U(long relativeToScreen) {
        boolean value$iv = isAttached();
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalStateException(ExpectAttachedLayoutCoordinates);
        }
        Owner owner = LayoutNodeKt.requireOwner(getLayoutNode());
        long positionInRoot = owner.mo6091screenToLocalMKHz9U(relativeToScreen);
        LayoutCoordinates root = LayoutCoordinatesKt.findRootCoordinates(this);
        return mo6150localPositionOfR5De75A(root, positionInRoot);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: localToScreen-MK-Hz9U */
    public long mo6153localToScreenMKHz9U(long relativeToLocal) {
        boolean value$iv = isAttached();
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalStateException(ExpectAttachedLayoutCoordinates);
        }
        long positionInRoot = mo6152localToRootMKHz9U(relativeToLocal);
        Owner owner = LayoutNodeKt.requireOwner(getLayoutNode());
        return owner.mo6090localToScreenMKHz9U(positionInRoot);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: windowToLocal-MK-Hz9U */
    public long mo6158windowToLocalMKHz9U(long relativeToWindow) {
        boolean value$iv = isAttached();
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalStateException(ExpectAttachedLayoutCoordinates);
        }
        LayoutCoordinates root = LayoutCoordinatesKt.findRootCoordinates(this);
        long positionInRoot = Offset.m4456minusMKHz9U(LayoutNodeKt.requireOwner(getLayoutNode()).mo6524calculateLocalPositionMKHz9U(relativeToWindow), LayoutCoordinatesKt.positionInRoot(root));
        return mo6150localPositionOfR5De75A(root, positionInRoot);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: localToWindow-MK-Hz9U */
    public long mo6154localToWindowMKHz9U(long relativeToLocal) {
        long positionInRoot = mo6152localToRootMKHz9U(relativeToLocal);
        Owner owner = LayoutNodeKt.requireOwner(getLayoutNode());
        return owner.mo6525calculatePositionInWindowMKHz9U(positionInRoot);
    }

    private final NodeCoordinator toCoordinator(LayoutCoordinates $this$toCoordinator) {
        NodeCoordinator coordinator;
        LookaheadLayoutCoordinates lookaheadLayoutCoordinates = $this$toCoordinator instanceof LookaheadLayoutCoordinates ? (LookaheadLayoutCoordinates) $this$toCoordinator : null;
        if (lookaheadLayoutCoordinates != null && (coordinator = lookaheadLayoutCoordinates.getCoordinator()) != null) {
            return coordinator;
        }
        Intrinsics.checkNotNull($this$toCoordinator, "null cannot be cast to non-null type androidx.compose.ui.node.NodeCoordinator");
        return (NodeCoordinator) $this$toCoordinator;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: localPositionOf-R5De75A */
    public long mo6150localPositionOfR5De75A(LayoutCoordinates sourceCoordinates, long relativeToSource) {
        return mo6151localPositionOfS_NoaFU(sourceCoordinates, relativeToSource, true);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: localPositionOf-S_NoaFU */
    public long mo6151localPositionOfS_NoaFU(LayoutCoordinates sourceCoordinates, long relativeToSource, boolean includeMotionFrameOfReference) {
        if (sourceCoordinates instanceof LookaheadLayoutCoordinates) {
            ((LookaheadLayoutCoordinates) sourceCoordinates).getCoordinator().onCoordinatesUsed$ui();
            return Offset.m4444constructorimpl(((LookaheadLayoutCoordinates) sourceCoordinates).mo6151localPositionOfS_NoaFU(this, Offset.m4444constructorimpl(relativeToSource ^ (-9223372034707292160L)), includeMotionFrameOfReference) ^ (-9223372034707292160L));
        }
        NodeCoordinator nodeCoordinator = toCoordinator(sourceCoordinates);
        nodeCoordinator.onCoordinatesUsed$ui();
        NodeCoordinator commonAncestor = findCommonAncestor$ui(nodeCoordinator);
        long position = relativeToSource;
        NodeCoordinator coordinator = nodeCoordinator;
        while (coordinator != commonAncestor) {
            position = coordinator.m6452toParentPosition8S9VItk(position, includeMotionFrameOfReference);
            NodeCoordinator nodeCoordinator2 = coordinator.wrappedBy;
            Intrinsics.checkNotNull(nodeCoordinator2);
            coordinator = nodeCoordinator2;
        }
        return m6428ancestorToLocalS_NoaFU(commonAncestor, position, includeMotionFrameOfReference);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: transformFrom-EL8BTi8 */
    public void mo6156transformFromEL8BTi8(LayoutCoordinates sourceCoordinates, float[] matrix) {
        NodeCoordinator coordinator = toCoordinator(sourceCoordinates);
        coordinator.onCoordinatesUsed$ui();
        NodeCoordinator commonAncestor = findCommonAncestor$ui(coordinator);
        Matrix.m4950resetimpl(matrix);
        coordinator.m6440transformToAncestorEL8BTi8(commonAncestor, matrix);
        m6439transformFromAncestorEL8BTi8(commonAncestor, matrix);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: transformToScreen-58bKbWc */
    public void mo6157transformToScreen58bKbWc(float[] matrix) {
        Owner owner = LayoutNodeKt.requireOwner(getLayoutNode());
        NodeCoordinator rootCoordinator = toCoordinator(LayoutCoordinatesKt.findRootCoordinates(this));
        m6440transformToAncestorEL8BTi8(rootCoordinator, matrix);
        if (owner instanceof MatrixPositionCalculator) {
            ((MatrixPositionCalculator) owner).mo5926localToScreen58bKbWc(matrix);
            return;
        }
        long screenPosition = LayoutCoordinatesKt.positionOnScreen(rootCoordinator);
        if (!((9223372034707292159L & screenPosition) != androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats)) {
            return;
        }
        int bits$iv$iv$iv = (int) (screenPosition >> 32);
        int bits$iv$iv$iv2 = (int) (4294967295L & screenPosition);
        Matrix.m4962translateimpl(matrix, Float.intBitsToFloat(bits$iv$iv$iv), Float.intBitsToFloat(bits$iv$iv$iv2), 0.0f);
    }

    /* JADX INFO: renamed from: transformToAncestor-EL8BTi8, reason: not valid java name */
    private final void m6440transformToAncestorEL8BTi8(NodeCoordinator ancestor, float[] matrix) {
        NodeCoordinator wrapper = this;
        while (!Intrinsics.areEqual(wrapper, ancestor)) {
            OwnedLayer ownedLayer = wrapper.layer;
            if (ownedLayer != null) {
                ownedLayer.mo6523transform58bKbWc(matrix);
            }
            long position = wrapper.getPosition();
            if (!IntOffset.m7632equalsimpl0(position, IntOffset.INSTANCE.m7644getZeronOccac())) {
                Matrix.m4950resetimpl(tmpMatrix);
                Matrix.m4963translateimpl$default(tmpMatrix, IntOffset.m7633getXimpl(position), IntOffset.m7634getYimpl(position), 0.0f, 4, null);
                Matrix.m4960timesAssign58bKbWc(matrix, tmpMatrix);
            }
            NodeCoordinator nodeCoordinator = wrapper.wrappedBy;
            Intrinsics.checkNotNull(nodeCoordinator);
            wrapper = nodeCoordinator;
        }
    }

    /* JADX INFO: renamed from: transformFromAncestor-EL8BTi8, reason: not valid java name */
    private final void m6439transformFromAncestorEL8BTi8(NodeCoordinator ancestor, float[] matrix) {
        if (!Intrinsics.areEqual(ancestor, this)) {
            NodeCoordinator nodeCoordinator = this.wrappedBy;
            Intrinsics.checkNotNull(nodeCoordinator);
            nodeCoordinator.m6439transformFromAncestorEL8BTi8(ancestor, matrix);
            if (!IntOffset.m7632equalsimpl0(getPosition(), IntOffset.INSTANCE.m7644getZeronOccac())) {
                Matrix.m4950resetimpl(tmpMatrix);
                Matrix.m4963translateimpl$default(tmpMatrix, -IntOffset.m7633getXimpl(getPosition()), -IntOffset.m7634getYimpl(getPosition()), 0.0f, 4, null);
                Matrix.m4960timesAssign58bKbWc(matrix, tmpMatrix);
            }
            OwnedLayer ownedLayer = this.layer;
            if (ownedLayer != null) {
                ownedLayer.mo6518inverseTransform58bKbWc(matrix);
            }
        }
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public Rect localBoundingBoxOf(LayoutCoordinates sourceCoordinates, boolean clipBounds) {
        boolean value$iv = isAttached();
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalStateException(ExpectAttachedLayoutCoordinates);
        }
        boolean value$iv2 = sourceCoordinates.isAttached();
        if (!value$iv2) {
            InlineClassHelperKt.throwIllegalStateException("LayoutCoordinates " + sourceCoordinates + " is not attached!");
        }
        NodeCoordinator srcCoordinator = toCoordinator(sourceCoordinates);
        srcCoordinator.onCoordinatesUsed$ui();
        NodeCoordinator commonAncestor = findCommonAncestor$ui(srcCoordinator);
        MutableRect bounds = getRectCache();
        bounds.setLeft(0.0f);
        bounds.setTop(0.0f);
        bounds.setRight((int) (sourceCoordinates.mo6149getSizeYbymL2g() >> 32));
        bounds.setBottom((int) (4294967295L & sourceCoordinates.mo6149getSizeYbymL2g()));
        NodeCoordinator coordinator = srcCoordinator;
        while (coordinator != commonAncestor) {
            boolean clipBounds2 = clipBounds;
            rectInParent$ui$default(coordinator, bounds, clipBounds2, false, 4, null);
            if (bounds.isEmpty()) {
                return Rect.INSTANCE.getZero();
            }
            NodeCoordinator nodeCoordinator = coordinator.wrappedBy;
            Intrinsics.checkNotNull(nodeCoordinator);
            coordinator = nodeCoordinator;
            clipBounds = clipBounds2;
        }
        ancestorToLocal(commonAncestor, bounds, clipBounds);
        return MutableRectKt.toRect(bounds);
    }

    /* JADX INFO: renamed from: ancestorToLocal-S_NoaFU, reason: not valid java name */
    private final long m6428ancestorToLocalS_NoaFU(NodeCoordinator ancestor, long offset, boolean includeMotionFrameOfReference) {
        if (ancestor == this) {
            return offset;
        }
        NodeCoordinator wrappedBy = this.wrappedBy;
        if (wrappedBy == null || Intrinsics.areEqual(ancestor, wrappedBy)) {
            return m6443fromParentPosition8S9VItk(offset, includeMotionFrameOfReference);
        }
        return m6443fromParentPosition8S9VItk(wrappedBy.m6428ancestorToLocalS_NoaFU(ancestor, offset, includeMotionFrameOfReference), includeMotionFrameOfReference);
    }

    private final void ancestorToLocal(NodeCoordinator ancestor, MutableRect rect, boolean clipBounds) {
        if (ancestor == this) {
            return;
        }
        NodeCoordinator nodeCoordinator = this.wrappedBy;
        if (nodeCoordinator != null) {
            nodeCoordinator.ancestorToLocal(ancestor, rect, clipBounds);
        }
        fromParentRect(rect, clipBounds);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: localToRoot-MK-Hz9U */
    public long mo6152localToRootMKHz9U(long relativeToLocal) {
        boolean value$iv = isAttached();
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalStateException(ExpectAttachedLayoutCoordinates);
        }
        onCoordinatesUsed$ui();
        long position = relativeToLocal;
        for (NodeCoordinator coordinator = this; coordinator != null; coordinator = coordinator.wrappedBy) {
            if (ComposeUiFlags.isRectManagerOffsetUsageFromLayoutCoordinatesEnabled) {
                LayoutNode layoutNode = coordinator.getLayoutNode();
                if (coordinator == layoutNode.getOuterCoordinator$ui() && !layoutNode.getHasPositionalLayerTransformationsInOffsetFromRoot()) {
                    long offsetFromRectList = LayoutNodeKt.requireOwner(layoutNode).getRectManager().m6721getOffsetFromRectListForBjo55l4(layoutNode);
                    if (!IntOffset.m7632equalsimpl0(offsetFromRectList, IntOffset.INSTANCE.m7643getMaxnOccac())) {
                        return IntOffsetKt.m7648plusNvtHpc(position, offsetFromRectList);
                    }
                }
            }
            position = m6438toParentPosition8S9VItk$default(coordinator, position, false, 2, null);
        }
        return position;
    }

    protected final void withPositionTranslation(Canvas canvas, Function1<? super Canvas, Unit> block) {
        float x = IntOffset.m7633getXimpl(getPosition());
        float y = IntOffset.m7634getYimpl(getPosition());
        canvas.translate(x, y);
        block.invoke(canvas);
        canvas.translate(-x, -y);
    }

    /* JADX INFO: renamed from: toParentPosition-8S9VItk$default, reason: not valid java name */
    public static /* synthetic */ long m6438toParentPosition8S9VItk$default(NodeCoordinator nodeCoordinator, long j, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toParentPosition-8S9VItk");
        }
        if ((i & 2) != 0) {
            z = true;
        }
        return nodeCoordinator.m6452toParentPosition8S9VItk(j, z);
    }

    /* JADX INFO: renamed from: toParentPosition-8S9VItk, reason: not valid java name */
    public long m6452toParentPosition8S9VItk(long position, boolean includeMotionFrameOfReference) {
        OwnedLayer layer = this.layer;
        long targetPosition = layer != null ? layer.mo6520mapOffset8S9VItk(position, false) : position;
        if (!includeMotionFrameOfReference && getIsPlacedUnderMotionFrameOfReference()) {
            return targetPosition;
        }
        return IntOffsetKt.m7648plusNvtHpc(targetPosition, getPosition());
    }

    /* JADX INFO: renamed from: fromParentPosition-8S9VItk$default, reason: not valid java name */
    public static /* synthetic */ long m6429fromParentPosition8S9VItk$default(NodeCoordinator nodeCoordinator, long j, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fromParentPosition-8S9VItk");
        }
        if ((i & 2) != 0) {
            z = true;
        }
        return nodeCoordinator.m6443fromParentPosition8S9VItk(j, z);
    }

    /* JADX INFO: renamed from: fromParentPosition-8S9VItk, reason: not valid java name */
    public long m6443fromParentPosition8S9VItk(long position, boolean includeMotionFrameOfReference) {
        long relativeToPosition;
        if (!includeMotionFrameOfReference && getIsPlacedUnderMotionFrameOfReference()) {
            relativeToPosition = position;
        } else {
            relativeToPosition = IntOffsetKt.m7646minusNvtHpc(position, getPosition());
        }
        OwnedLayer layer = this.layer;
        return layer != null ? layer.mo6520mapOffset8S9VItk(relativeToPosition, true) : relativeToPosition;
    }

    protected final void drawBorder(Canvas canvas, Paint paint) {
        int $i$f$unpackInt2 = (int) (4294967295L & getMeasuredSize());
        canvas.drawRect(0.5f, 0.5f, ((int) (getMeasuredSize() >> 32)) - 0.5f, $i$f$unpackInt2 - 0.5f, paint);
    }

    public final void onLayoutNodeDetach() {
        releaseLayer();
        if (getLayoutNode().isPlaced()) {
            onUnplaced();
        }
    }

    public final void onRelease() {
        this.released = true;
        this.invalidateParentLayer.invoke();
        releaseLayer();
        if (!IntOffset.m7632equalsimpl0(getPosition(), IntOffset.INSTANCE.m7644getZeronOccac())) {
            getLayoutNode().onCoordinatorPositionChanged$ui();
        }
    }

    public static /* synthetic */ void rectInParent$ui$default(NodeCoordinator nodeCoordinator, MutableRect mutableRect, boolean z, boolean z2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rectInParent");
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        nodeCoordinator.rectInParent$ui(mutableRect, z, z2);
    }

    public final void rectInParent$ui(MutableRect bounds, boolean clipBounds, boolean clipToMinimumTouchTargetSize) {
        OwnedLayer layer = this.layer;
        if (layer != null) {
            if (this.isClipping) {
                if (clipToMinimumTouchTargetSize) {
                    long minTouch = m6445getMinimumTouchTargetSizeNHjbRc();
                    int bits$iv$iv$iv = (int) (minTouch >> 32);
                    float horz = Float.intBitsToFloat(bits$iv$iv$iv) / 2.0f;
                    int bits$iv$iv$iv2 = (int) (minTouch & 4294967295L);
                    float vert = Float.intBitsToFloat(bits$iv$iv$iv2) / 2.0f;
                    bounds.intersect(-horz, -vert, ((int) (mo6149getSizeYbymL2g() >> 32)) + horz, ((int) (mo6149getSizeYbymL2g() & 4294967295L)) + vert);
                } else if (clipBounds) {
                    bounds.intersect(0.0f, 0.0f, (int) (mo6149getSizeYbymL2g() >> 32), (int) (mo6149getSizeYbymL2g() & 4294967295L));
                }
                if (bounds.isEmpty()) {
                    return;
                }
            }
            layer.mapBounds(bounds, false);
        }
        int x = IntOffset.m7633getXimpl(getPosition());
        bounds.setLeft(bounds.getLeft() + x);
        bounds.setRight(bounds.getRight() + x);
        int y = IntOffset.m7634getYimpl(getPosition());
        bounds.setTop(bounds.getTop() + y);
        bounds.setBottom(bounds.getBottom() + y);
    }

    private final void fromParentRect(MutableRect bounds, boolean clipBounds) {
        int x = IntOffset.m7633getXimpl(getPosition());
        bounds.setLeft(bounds.getLeft() - x);
        bounds.setRight(bounds.getRight() - x);
        int y = IntOffset.m7634getYimpl(getPosition());
        bounds.setTop(bounds.getTop() - y);
        bounds.setBottom(bounds.getBottom() - y);
        OwnedLayer layer = this.layer;
        if (layer != null) {
            layer.mapBounds(bounds, true);
            if (this.isClipping && clipBounds) {
                bounds.intersect(0.0f, 0.0f, (int) (mo6149getSizeYbymL2g() >> 32), (int) (4294967295L & mo6149getSizeYbymL2g()));
                if (bounds.isEmpty()) {
                }
            }
        }
    }

    /* JADX INFO: renamed from: withinLayerBounds-k-4lQ0M, reason: not valid java name */
    protected final boolean m6454withinLayerBoundsk4lQ0M(long pointerPosition) {
        long v$iv = androidx.compose.ui.geometry.InlineClassHelperKt.DualFloatInfinityBase ^ (pointerPosition & androidx.compose.ui.geometry.InlineClassHelperKt.DualFloatInfinityBase);
        if (!(((v$iv - androidx.compose.ui.geometry.InlineClassHelperKt.Uint64Low32) & (-9223372034707292160L)) == 0)) {
            return false;
        }
        OwnedLayer layer = this.layer;
        return layer == null || !this.isClipping || layer.mo6519isInLayerk4lQ0M(pointerPosition);
    }

    /* JADX INFO: renamed from: isPointerInBounds-k-4lQ0M, reason: not valid java name */
    protected final boolean m6448isPointerInBoundsk4lQ0M(long pointerPosition) {
        int bits$iv$iv$iv = (int) (pointerPosition >> 32);
        float x = Float.intBitsToFloat(bits$iv$iv$iv);
        int bits$iv$iv$iv2 = (int) (4294967295L & pointerPosition);
        float y = Float.intBitsToFloat(bits$iv$iv$iv2);
        return x >= 0.0f && y >= 0.0f && x < ((float) getMeasuredWidth()) && y < ((float) getMeasuredHeight());
    }

    public void invalidateLayer() {
        OwnedLayer layer = this.layer;
        if (layer != null) {
            layer.invalidate();
            return;
        }
        NodeCoordinator nodeCoordinator = this.wrappedBy;
        if (nodeCoordinator != null) {
            nodeCoordinator.invalidateLayer();
        }
    }

    public void onLayoutModifierNodeChanged() {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.invalidate();
        }
    }

    public final NodeCoordinator findCommonAncestor$ui(NodeCoordinator other) {
        LayoutNode ancestor1 = other.getLayoutNode();
        LayoutNode ancestor2 = getLayoutNode();
        if (ancestor1 == ancestor2) {
            Modifier.Node otherNode = other.getTail();
            DelegatableNode $this$visitLocalAncestors$iv = getTail();
            int iM6460constructorimpl = NodeKind.m6460constructorimpl(2);
            boolean value$iv$iv = $this$visitLocalAncestors$iv.getNode().getIsAttached();
            if (!value$iv$iv) {
                InlineClassHelperKt.throwIllegalStateException("visitLocalAncestors called on an unattached node");
            }
            for (Modifier.Node next$iv = $this$visitLocalAncestors$iv.getNode().getParent(); next$iv != null; next$iv = next$iv.getParent()) {
                if ((next$iv.getKindSet() & iM6460constructorimpl) != 0) {
                    Modifier.Node it = next$iv;
                    if (it == otherNode) {
                        return other;
                    }
                }
            }
            return this;
        }
        while (ancestor1.getDepth() > ancestor2.getDepth()) {
            LayoutNode parent$ui = ancestor1.getParent$ui();
            Intrinsics.checkNotNull(parent$ui);
            ancestor1 = parent$ui;
        }
        while (ancestor2.getDepth() > ancestor1.getDepth()) {
            LayoutNode parent$ui2 = ancestor2.getParent$ui();
            Intrinsics.checkNotNull(parent$ui2);
            ancestor2 = parent$ui2;
        }
        while (ancestor1 != ancestor2) {
            LayoutNode parent1 = ancestor1.getParent$ui();
            LayoutNode parent2 = ancestor2.getParent$ui();
            if (parent1 == null || parent2 == null) {
                throw new IllegalArgumentException("layouts are not part of the same hierarchy");
            }
            ancestor1 = parent1;
            ancestor2 = parent2;
        }
        return ancestor2 == getLayoutNode() ? this : ancestor1 == other.getLayoutNode() ? other : ancestor1.getInnerCoordinator$ui();
    }

    public final boolean shouldSharePointerInputWithSiblings() {
        int i;
        int i2;
        int count$iv$iv;
        MutableVector mutableVector;
        Modifier.Node start = headNode(NodeKindKt.m6469getIncludeSelfInTraversalH91voCI(NodeKind.m6460constructorimpl(16)));
        if (start != null && start.getIsAttached()) {
            Modifier.Node $this$visitSelfAndLocalDescendants_u2d6rFNWt0$iv = start;
            int iM6460constructorimpl = NodeKind.m6460constructorimpl(16);
            boolean value$iv$iv$iv = $this$visitSelfAndLocalDescendants_u2d6rFNWt0$iv.getNode().getIsAttached();
            if (!value$iv$iv$iv) {
                InlineClassHelperKt.throwIllegalStateException("visitLocalDescendants called on an unattached node");
            }
            Modifier.Node self$iv$iv = $this$visitSelfAndLocalDescendants_u2d6rFNWt0$iv.getNode();
            if ((self$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) == 0) {
                return false;
            }
            Modifier.Node next$iv$iv = self$iv$iv;
            while (next$iv$iv != null) {
                if ((next$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                    Modifier.Node it$iv = next$iv$iv;
                    int i3 = iM6460constructorimpl;
                    MutableVector mutableVector2 = null;
                    Modifier.Node nodePop = it$iv;
                    while (nodePop != null) {
                        Modifier.Node start2 = start;
                        if (nodePop instanceof PointerInputModifierNode) {
                            PointerInputModifierNode it = (PointerInputModifierNode) nodePop;
                            if (it.sharePointerInputWithSiblings()) {
                                return true;
                            }
                            i = iM6460constructorimpl;
                        } else {
                            Modifier.Node this_$iv$iv$iv = nodePop;
                            if (((this_$iv$iv$iv.getKindSet() & i3) != 0 ? 1 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                                i = iM6460constructorimpl;
                            } else {
                                int count$iv$iv2 = 0;
                                DelegatingNode this_$iv$iv$iv2 = (DelegatingNode) nodePop;
                                Modifier.Node node$iv$iv$iv = this_$iv$iv$iv2.getDelegate();
                                while (node$iv$iv$iv != null) {
                                    Modifier.Node next$iv$iv2 = node$iv$iv$iv;
                                    if (((next$iv$iv2.getKindSet() & i3) != 0 ? 1 : 0) != 0) {
                                        count$iv$iv2++;
                                        i2 = iM6460constructorimpl;
                                        if (count$iv$iv2 == 1) {
                                            nodePop = next$iv$iv2;
                                        } else {
                                            if (mutableVector2 == null) {
                                                count$iv$iv = count$iv$iv2;
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            } else {
                                                count$iv$iv = count$iv$iv2;
                                                mutableVector = mutableVector2;
                                            }
                                            Modifier.Node theNode$iv$iv = nodePop;
                                            if (theNode$iv$iv != null) {
                                                if (mutableVector != null) {
                                                    mutableVector.add(theNode$iv$iv);
                                                }
                                                nodePop = null;
                                            }
                                            if (mutableVector != null) {
                                                mutableVector.add(next$iv$iv2);
                                            }
                                            mutableVector2 = mutableVector;
                                            count$iv$iv2 = count$iv$iv;
                                        }
                                    } else {
                                        i2 = iM6460constructorimpl;
                                    }
                                    node$iv$iv$iv = node$iv$iv$iv.getChild();
                                    iM6460constructorimpl = i2;
                                }
                                i = iM6460constructorimpl;
                                if (count$iv$iv2 == 1) {
                                    start = start2;
                                    iM6460constructorimpl = i;
                                }
                            }
                        }
                        nodePop = DelegatableNodeKt.pop(mutableVector2);
                        start = start2;
                        iM6460constructorimpl = i;
                    }
                }
                next$iv$iv = next$iv$iv.getChild();
                start = start;
                iM6460constructorimpl = iM6460constructorimpl;
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: renamed from: offsetFromEdge-MK-Hz9U, reason: not valid java name */
    private final long m6434offsetFromEdgeMKHz9U(long pointerPosition) {
        int bits$iv$iv$iv = (int) (pointerPosition >> 32);
        float x = Float.intBitsToFloat(bits$iv$iv$iv);
        float horizontal = Math.max(0.0f, x < 0.0f ? -x : x - getMeasuredWidth());
        int bits$iv$iv$iv2 = (int) (pointerPosition & 4294967295L);
        float y = Float.intBitsToFloat(bits$iv$iv$iv2);
        float vertical = Math.max(0.0f, y < 0.0f ? -y : y - getMeasuredHeight());
        long v1$iv$iv = Float.floatToRawIntBits(horizontal);
        long v2$iv$iv = Float.floatToRawIntBits(vertical);
        return Offset.m4444constructorimpl((v1$iv$iv << 32) | (4294967295L & v2$iv$iv));
    }

    /* JADX INFO: renamed from: calculateMinimumTouchTargetPadding-E7KxVPU, reason: not valid java name */
    protected final long m6441calculateMinimumTouchTargetPaddingE7KxVPU(long minimumTouchTargetSize) {
        int bits$iv$iv$iv = (int) (minimumTouchTargetSize >> 32);
        float widthDiff = Float.intBitsToFloat(bits$iv$iv$iv) - getMeasuredWidth();
        int bits$iv$iv$iv2 = (int) (minimumTouchTargetSize & 4294967295L);
        float heightDiff = Float.intBitsToFloat(bits$iv$iv$iv2) - getMeasuredHeight();
        float width$iv = Math.max(0.0f, widthDiff / 2.0f);
        float height$iv = Math.max(0.0f, heightDiff / 2.0f);
        long v1$iv$iv = Float.floatToRawIntBits(width$iv);
        long v2$iv$iv = Float.floatToRawIntBits(height$iv);
        return Size.m4512constructorimpl((v1$iv$iv << 32) | (4294967295L & v2$iv$iv));
    }

    /* JADX INFO: renamed from: distanceInMinimumTouchTarget-tz77jQw, reason: not valid java name */
    protected final float m6442distanceInMinimumTouchTargettz77jQw(long pointerPosition, long minimumTouchTargetSize) {
        int bits$iv$iv$iv = (int) (minimumTouchTargetSize >> 32);
        if (getMeasuredWidth() >= Float.intBitsToFloat(bits$iv$iv$iv)) {
            int bits$iv$iv$iv2 = (int) (minimumTouchTargetSize & 4294967295L);
            if (getMeasuredHeight() >= Float.intBitsToFloat(bits$iv$iv$iv2)) {
                return Float.POSITIVE_INFINITY;
            }
        }
        long jM6441calculateMinimumTouchTargetPaddingE7KxVPU = m6441calculateMinimumTouchTargetPaddingE7KxVPU(minimumTouchTargetSize);
        int bits$iv$iv$iv$iv = (int) (jM6441calculateMinimumTouchTargetPaddingE7KxVPU >> 32);
        float width = Float.intBitsToFloat(bits$iv$iv$iv$iv);
        int bits$iv$iv$iv$iv2 = (int) (jM6441calculateMinimumTouchTargetPaddingE7KxVPU & 4294967295L);
        float height = Float.intBitsToFloat(bits$iv$iv$iv$iv2);
        long offsetFromEdge = m6434offsetFromEdgeMKHz9U(pointerPosition);
        if (width > 0.0f || height > 0.0f) {
            int bits$iv$iv$iv3 = (int) (offsetFromEdge >> 32);
            if (Float.intBitsToFloat(bits$iv$iv$iv3) <= width) {
                int bits$iv$iv$iv4 = (int) (offsetFromEdge & 4294967295L);
                if (Float.intBitsToFloat(bits$iv$iv$iv4) <= height) {
                    return Offset.m4451getDistanceSquaredimpl(offsetFromEdge);
                }
            }
        }
        return Float.POSITIVE_INFINITY;
    }

    /* JADX INFO: compiled from: NodeCoordinator.kt */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u0014¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u0014¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0016¨\u0006\u0019"}, d2 = {"Landroidx/compose/ui/node/NodeCoordinator$Companion;", "", "<init>", "()V", "ExpectAttachedLayoutCoordinates", "", "UnmeasuredError", "onCommitAffectingLayerParams", "Lkotlin/Function1;", "Landroidx/compose/ui/node/NodeCoordinator;", "", "onCommitAffectingLayer", "graphicsLayerScope", "Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;", "tmpLayerPositionalProperties", "Landroidx/compose/ui/node/LayerPositionalProperties;", "tmpMatrix", "Landroidx/compose/ui/graphics/Matrix;", "[F", "PointerInputSource", "Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;", "getPointerInputSource", "()Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;", "SemanticsSource", "getSemanticsSource", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final HitTestSource getPointerInputSource() {
            return NodeCoordinator.PointerInputSource;
        }

        public final HitTestSource getSemanticsSource() {
            return NodeCoordinator.SemanticsSource;
        }
    }
}

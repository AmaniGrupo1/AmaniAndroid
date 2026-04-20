package androidx.media3.common;

import android.net.Uri;
import android.os.Bundle;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public final class AdPlaybackState {
    public static final int AD_STATE_AVAILABLE = 1;
    public static final int AD_STATE_ERROR = 4;
    public static final int AD_STATE_PLAYED = 3;
    public static final int AD_STATE_SKIPPED = 2;
    public static final int AD_STATE_UNAVAILABLE = 0;
    public final int adGroupCount;
    private final AdGroup[] adGroups;
    public final long adResumePositionUs;
    public final Object adsId;
    public final long contentDurationUs;
    public final int removedAdGroupCount;
    public static final AdPlaybackState NONE = new AdPlaybackState(null, new AdGroup[0], 0, C.TIME_UNSET, 0);
    private static final AdGroup REMOVED_AD_GROUP = new AdGroup(0).withAdCount(0);
    private static final String FIELD_AD_GROUPS = Util.intToStringMaxRadix(1);
    private static final String FIELD_AD_RESUME_POSITION_US = Util.intToStringMaxRadix(2);
    private static final String FIELD_CONTENT_DURATION_US = Util.intToStringMaxRadix(3);
    private static final String FIELD_REMOVED_AD_GROUP_COUNT = Util.intToStringMaxRadix(4);

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface AdState {
    }

    public static final class AdGroup {
        public final long contentResumeOffsetUs;
        public final int count;
        public final long[] durationsUs;
        public final String[] ids;
        public final boolean isPlaceholder;
        public final boolean isServerSideInserted;
        public final MediaItem[] mediaItems;
        public final int originalCount;
        public final SkipInfo[] skipInfos;
        public final int[] states;
        public final long timeUs;

        @Deprecated
        public final Uri[] uris;
        private static final String FIELD_TIME_US = Util.intToStringMaxRadix(0);
        private static final String FIELD_COUNT = Util.intToStringMaxRadix(1);
        private static final String FIELD_URIS = Util.intToStringMaxRadix(2);
        private static final String FIELD_STATES = Util.intToStringMaxRadix(3);
        private static final String FIELD_DURATIONS_US = Util.intToStringMaxRadix(4);
        private static final String FIELD_CONTENT_RESUME_OFFSET_US = Util.intToStringMaxRadix(5);
        private static final String FIELD_IS_SERVER_SIDE_INSERTED = Util.intToStringMaxRadix(6);
        private static final String FIELD_ORIGINAL_COUNT = Util.intToStringMaxRadix(7);
        static final String FIELD_MEDIA_ITEMS = Util.intToStringMaxRadix(8);
        static final String FIELD_IDS = Util.intToStringMaxRadix(9);
        static final String FIELD_IS_PLACEHOLDER = Util.intToStringMaxRadix(10);
        private static final String FIELD_SKIP_INFOS = Util.intToStringMaxRadix(11);

        public AdGroup(long timeUs) {
            this(timeUs, -1, -1, new int[0], new MediaItem[0], new long[0], 0L, false, new String[0], new SkipInfo[0], false);
        }

        private AdGroup(long timeUs, int count, int originalCount, int[] states, MediaItem[] mediaItems, long[] durationsUs, long contentResumeOffsetUs, boolean isServerSideInserted, String[] ids, SkipInfo[] skipInfos, boolean isPlaceholder) {
            Preconditions.checkArgument(states.length == mediaItems.length);
            Preconditions.checkArgument(states.length == skipInfos.length);
            this.timeUs = timeUs;
            this.count = count;
            this.originalCount = originalCount;
            this.states = states;
            this.mediaItems = mediaItems;
            this.durationsUs = durationsUs;
            this.contentResumeOffsetUs = contentResumeOffsetUs;
            this.isServerSideInserted = isServerSideInserted;
            this.uris = new Uri[mediaItems.length];
            for (int i = 0; i < this.uris.length; i++) {
                this.uris[i] = mediaItems[i] == null ? null : ((MediaItem.LocalConfiguration) Preconditions.checkNotNull(mediaItems[i].localConfiguration)).uri;
            }
            this.ids = ids;
            this.skipInfos = skipInfos;
            this.isPlaceholder = isPlaceholder;
        }

        public int getFirstAdIndexToPlay() {
            return getNextAdIndexToPlay(-1);
        }

        public int getNextAdIndexToPlay(int lastPlayedAdIndex) {
            int nextAdIndexToPlay = lastPlayedAdIndex + 1;
            while (nextAdIndexToPlay < this.states.length && !this.isServerSideInserted && this.states[nextAdIndexToPlay] != 0 && this.states[nextAdIndexToPlay] != 1) {
                nextAdIndexToPlay++;
            }
            return nextAdIndexToPlay;
        }

        public boolean shouldPlayAdGroup() {
            return this.count == -1 || getFirstAdIndexToPlay() < this.count;
        }

        public boolean hasUnplayedAds() {
            if (this.count == -1) {
                return true;
            }
            for (int i = 0; i < this.count; i++) {
                if (this.states[i] == 0 || this.states[i] == 1) {
                    return true;
                }
            }
            return false;
        }

        public boolean isLivePostrollPlaceholder(boolean isServerSideInserted) {
            return this.isServerSideInserted == isServerSideInserted && isLivePostrollPlaceholder();
        }

        public boolean isLivePostrollPlaceholder() {
            return this.isPlaceholder && this.timeUs == Long.MIN_VALUE && this.count == -1;
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (o == null || getClass() != o.getClass()) {
                return false;
            }
            AdGroup adGroup = (AdGroup) o;
            if (this.timeUs == adGroup.timeUs && this.count == adGroup.count && this.originalCount == adGroup.originalCount && Arrays.equals(this.mediaItems, adGroup.mediaItems) && Arrays.equals(this.states, adGroup.states) && Arrays.equals(this.durationsUs, adGroup.durationsUs) && this.contentResumeOffsetUs == adGroup.contentResumeOffsetUs && this.isServerSideInserted == adGroup.isServerSideInserted && Arrays.equals(this.ids, adGroup.ids) && Arrays.equals(this.skipInfos, adGroup.skipInfos) && this.isPlaceholder == adGroup.isPlaceholder) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((((this.count * 31) + this.originalCount) * 31) + ((int) (this.timeUs ^ (this.timeUs >>> 32)))) * 31) + Arrays.hashCode(this.mediaItems)) * 31) + Arrays.hashCode(this.states)) * 31) + Arrays.hashCode(this.durationsUs)) * 31) + ((int) (this.contentResumeOffsetUs ^ (this.contentResumeOffsetUs >>> 32)))) * 31) + (this.isServerSideInserted ? 1 : 0)) * 31) + Arrays.hashCode(this.ids)) * 31) + Arrays.hashCode(this.skipInfos)) * 31) + (this.isPlaceholder ? 1 : 0);
        }

        public AdGroup withTimeUs(long timeUs) {
            return new AdGroup(timeUs, this.count, this.originalCount, this.states, this.mediaItems, this.durationsUs, this.contentResumeOffsetUs, this.isServerSideInserted, this.ids, this.skipInfos, this.isPlaceholder);
        }

        public AdGroup withAdCount(int count) {
            int[] states = copyStatesWithSpaceForAdCount(this.states, count);
            long[] durationsUs = copyDurationsUsWithSpaceForAdCount(this.durationsUs, count);
            MediaItem[] mediaItems = (MediaItem[]) Arrays.copyOf(this.mediaItems, count);
            String[] ids = (String[]) Arrays.copyOf(this.ids, count);
            SkipInfo[] skipInfos = copySkipInfosWithSpaceForAdCount(this.skipInfos, count);
            return new AdGroup(this.timeUs, count, this.originalCount, states, mediaItems, durationsUs, this.contentResumeOffsetUs, this.isServerSideInserted, ids, skipInfos, this.isPlaceholder);
        }

        @Deprecated
        public AdGroup withAdUri(Uri uri, int index) {
            return withAdMediaItem(MediaItem.fromUri(uri), index);
        }

        public AdGroup withAdMediaItem(MediaItem mediaItem, int index) {
            long[] durationsUs;
            SkipInfo[] skipInfos;
            int[] states = copyStatesWithSpaceForAdCount(this.states, index + 1);
            int length = this.durationsUs.length;
            int length2 = states.length;
            long[] jArr = this.durationsUs;
            if (length == length2) {
                durationsUs = jArr;
            } else {
                durationsUs = copyDurationsUsWithSpaceForAdCount(jArr, states.length);
            }
            MediaItem[] mediaItems = (MediaItem[]) Arrays.copyOf(this.mediaItems, states.length);
            mediaItems[index] = mediaItem;
            states[index] = 1;
            int length3 = this.ids.length;
            int length4 = states.length;
            String[] strArr = this.ids;
            if (length3 != length4) {
                strArr = (String[]) Arrays.copyOf(strArr, states.length);
            }
            String[] ids = strArr;
            int length5 = this.skipInfos.length;
            int length6 = states.length;
            SkipInfo[] skipInfoArr = this.skipInfos;
            if (length5 == length6) {
                skipInfos = skipInfoArr;
            } else {
                skipInfos = copySkipInfosWithSpaceForAdCount(skipInfoArr, states.length);
            }
            return new AdGroup(this.timeUs, this.count, this.originalCount, states, mediaItems, durationsUs, this.contentResumeOffsetUs, this.isServerSideInserted, ids, skipInfos, this.isPlaceholder);
        }

        public AdGroup withAdState(int state, int index) {
            long[] durationsUs;
            MediaItem[] mediaItems;
            SkipInfo[] skipInfos;
            Preconditions.checkArgument(this.count == -1 || index < this.count);
            int[] states = copyStatesWithSpaceForAdCount(this.states, index + 1);
            Preconditions.checkArgument(states[index] == 0 || states[index] == 1 || states[index] == state);
            int length = this.durationsUs.length;
            int length2 = states.length;
            long[] jArr = this.durationsUs;
            if (length == length2) {
                durationsUs = jArr;
            } else {
                durationsUs = copyDurationsUsWithSpaceForAdCount(jArr, states.length);
            }
            int length3 = this.mediaItems.length;
            int length4 = states.length;
            MediaItem[] mediaItemArr = this.mediaItems;
            if (length3 == length4) {
                mediaItems = mediaItemArr;
            } else {
                mediaItems = (MediaItem[]) Arrays.copyOf(mediaItemArr, states.length);
            }
            int length5 = this.ids.length;
            int length6 = states.length;
            String[] strArr = this.ids;
            if (length5 != length6) {
                strArr = (String[]) Arrays.copyOf(strArr, states.length);
            }
            String[] ids = strArr;
            states[index] = state;
            int length7 = this.skipInfos.length;
            int length8 = states.length;
            SkipInfo[] skipInfoArr = this.skipInfos;
            if (length7 == length8) {
                skipInfos = skipInfoArr;
            } else {
                skipInfos = copySkipInfosWithSpaceForAdCount(skipInfoArr, states.length);
            }
            return new AdGroup(this.timeUs, this.count, this.originalCount, states, mediaItems, durationsUs, this.contentResumeOffsetUs, this.isServerSideInserted, ids, skipInfos, this.isPlaceholder);
        }

        public AdGroup withAdDurationsUs(long[] durationsUs) {
            long[] durationsUs2;
            if (durationsUs.length < this.mediaItems.length) {
                durationsUs2 = copyDurationsUsWithSpaceForAdCount(durationsUs, this.mediaItems.length);
            } else if (this.count != -1 && durationsUs.length > this.mediaItems.length) {
                durationsUs2 = Arrays.copyOf(durationsUs, this.mediaItems.length);
            } else {
                durationsUs2 = durationsUs;
            }
            return new AdGroup(this.timeUs, this.count, this.originalCount, this.states, this.mediaItems, durationsUs2, this.contentResumeOffsetUs, this.isServerSideInserted, this.ids, this.skipInfos, this.isPlaceholder);
        }

        public AdGroup withAdId(String adId, int index) {
            long[] durationsUs;
            MediaItem[] mediaItems;
            int[] states = copyStatesWithSpaceForAdCount(this.states, index + 1);
            int length = this.durationsUs.length;
            int length2 = states.length;
            long[] jArr = this.durationsUs;
            if (length == length2) {
                durationsUs = jArr;
            } else {
                durationsUs = copyDurationsUsWithSpaceForAdCount(jArr, states.length);
            }
            int length3 = this.mediaItems.length;
            int length4 = states.length;
            MediaItem[] mediaItemArr = this.mediaItems;
            if (length3 == length4) {
                mediaItems = mediaItemArr;
            } else {
                mediaItems = (MediaItem[]) Arrays.copyOf(mediaItemArr, states.length);
            }
            String[] ids = (String[]) Arrays.copyOf(this.ids, states.length);
            ids[index] = adId;
            return new AdGroup(this.timeUs, this.count, this.originalCount, states, mediaItems, durationsUs, this.contentResumeOffsetUs, this.isServerSideInserted, ids, this.skipInfos, this.isPlaceholder);
        }

        public AdGroup withAdSkipInfo(SkipInfo skipInfo, int index) {
            long[] durationsUs;
            MediaItem[] mediaItems;
            int[] states = copyStatesWithSpaceForAdCount(this.states, index + 1);
            int length = this.durationsUs.length;
            int length2 = states.length;
            long[] jArr = this.durationsUs;
            if (length == length2) {
                durationsUs = jArr;
            } else {
                durationsUs = copyDurationsUsWithSpaceForAdCount(jArr, states.length);
            }
            int length3 = this.mediaItems.length;
            int length4 = states.length;
            MediaItem[] mediaItemArr = this.mediaItems;
            if (length3 == length4) {
                mediaItems = mediaItemArr;
            } else {
                mediaItems = (MediaItem[]) Arrays.copyOf(mediaItemArr, states.length);
            }
            int length5 = this.ids.length;
            int length6 = states.length;
            String[] strArr = this.ids;
            if (length5 != length6) {
                strArr = (String[]) Arrays.copyOf(strArr, states.length);
            }
            String[] ids = strArr;
            SkipInfo[] skipInfos = copySkipInfosWithSpaceForAdCount(this.skipInfos, states.length);
            skipInfos[index] = skipInfo;
            return new AdGroup(this.timeUs, this.count, this.originalCount, states, mediaItems, durationsUs, this.contentResumeOffsetUs, this.isServerSideInserted, ids, skipInfos, this.isPlaceholder);
        }

        public AdGroup withContentResumeOffsetUs(long contentResumeOffsetUs) {
            return new AdGroup(this.timeUs, this.count, this.originalCount, this.states, this.mediaItems, this.durationsUs, contentResumeOffsetUs, this.isServerSideInserted, this.ids, this.skipInfos, this.isPlaceholder);
        }

        public AdGroup withIsServerSideInserted(boolean isServerSideInserted) {
            return new AdGroup(this.timeUs, this.count, this.originalCount, this.states, this.mediaItems, this.durationsUs, this.contentResumeOffsetUs, isServerSideInserted, this.ids, this.skipInfos, this.isPlaceholder);
        }

        public AdGroup withOriginalAdCount(int originalCount) {
            return new AdGroup(this.timeUs, this.count, originalCount, this.states, this.mediaItems, this.durationsUs, this.contentResumeOffsetUs, this.isServerSideInserted, this.ids, this.skipInfos, this.isPlaceholder);
        }

        public AdGroup withLastAdRemoved() {
            long[] newDurationsUs;
            int newCount = this.states.length - 1;
            int[] newStates = Arrays.copyOf(this.states, newCount);
            MediaItem[] newMediaItems = (MediaItem[]) Arrays.copyOf(this.mediaItems, newCount);
            long[] newDurationsUs2 = this.durationsUs;
            if (this.durationsUs.length <= newCount) {
                newDurationsUs = newDurationsUs2;
            } else {
                long[] newDurationsUs3 = Arrays.copyOf(this.durationsUs, newCount);
                newDurationsUs = newDurationsUs3;
            }
            String[] newIds = (String[]) Arrays.copyOf(this.ids, newCount);
            SkipInfo[] newSkipInfos = (SkipInfo[]) Arrays.copyOf(this.skipInfos, newCount);
            return new AdGroup(this.timeUs, newCount, this.originalCount, newStates, newMediaItems, newDurationsUs, Util.sum(newDurationsUs), this.isServerSideInserted, newIds, newSkipInfos, this.isPlaceholder);
        }

        public AdGroup withAllAdsSkipped() {
            if (this.count == -1) {
                return new AdGroup(this.timeUs, 0, this.originalCount, new int[0], new MediaItem[0], new long[0], this.contentResumeOffsetUs, this.isServerSideInserted, this.ids, this.skipInfos, this.isPlaceholder);
            }
            int count = this.states.length;
            int[] states = Arrays.copyOf(this.states, count);
            for (int i = 0; i < count; i++) {
                if (states[i] == 1 || states[i] == 0) {
                    states[i] = 2;
                }
            }
            return new AdGroup(this.timeUs, count, this.originalCount, states, this.mediaItems, this.durationsUs, this.contentResumeOffsetUs, this.isServerSideInserted, this.ids, this.skipInfos, this.isPlaceholder);
        }

        public AdGroup withAllAdsReset() {
            if (this.count == -1) {
                return this;
            }
            int count = this.states.length;
            int[] states = Arrays.copyOf(this.states, count);
            for (int i = 0; i < count; i++) {
                if (states[i] == 3 || states[i] == 2 || states[i] == 4) {
                    states[i] = this.mediaItems[i] == null ? 0 : 1;
                }
            }
            return new AdGroup(this.timeUs, count, this.originalCount, states, this.mediaItems, this.durationsUs, this.contentResumeOffsetUs, this.isServerSideInserted, this.ids, this.skipInfos, this.isPlaceholder);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public AdGroup withIsPlaceholder(boolean isPlaceholder, boolean isServerSideInserted) {
            return new AdGroup(this.timeUs, this.count, this.originalCount, this.states, this.mediaItems, this.durationsUs, this.contentResumeOffsetUs, isServerSideInserted, this.ids, this.skipInfos, isPlaceholder);
        }

        public int getIndexOfAdId(String adId) {
            for (int i = 0; i < this.ids.length; i++) {
                if (Objects.equals(this.ids[i], adId)) {
                    return i;
                }
            }
            return -1;
        }

        public AdGroup copy() {
            return new AdGroup(this.timeUs, this.count, this.originalCount, Arrays.copyOf(this.states, this.states.length), (MediaItem[]) Arrays.copyOf(this.mediaItems, this.mediaItems.length), Arrays.copyOf(this.durationsUs, this.durationsUs.length), this.contentResumeOffsetUs, this.isServerSideInserted, (String[]) Arrays.copyOf(this.ids, this.ids.length), (SkipInfo[]) Arrays.copyOf(this.skipInfos, this.skipInfos.length), this.isPlaceholder);
        }

        private static int[] copyStatesWithSpaceForAdCount(int[] states, int count) {
            int oldStateCount = states.length;
            int newStateCount = Math.max(count, oldStateCount);
            int[] states2 = Arrays.copyOf(states, newStateCount);
            Arrays.fill(states2, oldStateCount, newStateCount, 0);
            return states2;
        }

        private static long[] copyDurationsUsWithSpaceForAdCount(long[] durationsUs, int count) {
            int oldDurationsUsCount = durationsUs.length;
            int newDurationsUsCount = Math.max(count, oldDurationsUsCount);
            long[] durationsUs2 = Arrays.copyOf(durationsUs, newDurationsUsCount);
            Arrays.fill(durationsUs2, oldDurationsUsCount, newDurationsUsCount, C.TIME_UNSET);
            return durationsUs2;
        }

        private static SkipInfo[] copySkipInfosWithSpaceForAdCount(SkipInfo[] skipInfos, int count) {
            int oldSkipInfoCount = skipInfos.length;
            int newSkipInfoCount = Math.max(count, oldSkipInfoCount);
            return (SkipInfo[]) Arrays.copyOf(skipInfos, newSkipInfoCount);
        }

        @Deprecated
        public Bundle toBundle() {
            return toBundle(9);
        }

        public Bundle toBundle(int interfaceVersion) {
            Bundle bundle = new Bundle();
            bundle.putLong(FIELD_TIME_US, this.timeUs);
            bundle.putInt(FIELD_COUNT, this.count);
            bundle.putInt(FIELD_ORIGINAL_COUNT, this.originalCount);
            bundle.putParcelableArrayList(FIELD_URIS, new ArrayList<>(Arrays.asList(this.uris)));
            bundle.putParcelableArrayList(FIELD_MEDIA_ITEMS, getMediaItemsArrayBundles(interfaceVersion));
            bundle.putIntArray(FIELD_STATES, this.states);
            bundle.putLongArray(FIELD_DURATIONS_US, this.durationsUs);
            bundle.putLong(FIELD_CONTENT_RESUME_OFFSET_US, this.contentResumeOffsetUs);
            bundle.putBoolean(FIELD_IS_SERVER_SIDE_INSERTED, this.isServerSideInserted);
            bundle.putStringArrayList(FIELD_IDS, new ArrayList<>(Arrays.asList(this.ids)));
            bundle.putParcelableArrayList(FIELD_SKIP_INFOS, getSkipInfoArrayBundles());
            bundle.putBoolean(FIELD_IS_PLACEHOLDER, this.isPlaceholder);
            return bundle;
        }

        @Deprecated
        public static AdGroup fromBundle(Bundle bundle) {
            return fromBundle(bundle, 9);
        }

        public static AdGroup fromBundle(Bundle bundle, int interfaceVersion) {
            long[] jArr;
            String[] strArr;
            SkipInfo[] skipInfosFromBundleArrays;
            long timeUs = bundle.getLong(FIELD_TIME_US);
            int count = bundle.getInt(FIELD_COUNT);
            int originalCount = bundle.getInt(FIELD_ORIGINAL_COUNT);
            ArrayList<Uri> uriList = bundle.getParcelableArrayList(FIELD_URIS);
            ArrayList<Bundle> mediaItemBundleList = bundle.getParcelableArrayList(FIELD_MEDIA_ITEMS);
            int[] states = bundle.getIntArray(FIELD_STATES);
            long[] durationsUs = bundle.getLongArray(FIELD_DURATIONS_US);
            long contentResumeOffsetUs = bundle.getLong(FIELD_CONTENT_RESUME_OFFSET_US);
            boolean isServerSideInserted = bundle.getBoolean(FIELD_IS_SERVER_SIDE_INSERTED);
            ArrayList<String> ids = bundle.getStringArrayList(FIELD_IDS);
            ArrayList<Bundle> skipInfoBundleList = bundle.getParcelableArrayList(FIELD_SKIP_INFOS);
            boolean isPlaceholder = bundle.getBoolean(FIELD_IS_PLACEHOLDER);
            int[] iArr = states == null ? new int[0] : states;
            MediaItem[] mediaItemsFromBundleArrays = getMediaItemsFromBundleArrays(mediaItemBundleList, uriList, interfaceVersion);
            long[] jArr2 = durationsUs == null ? new long[0] : durationsUs;
            if (ids == null) {
                jArr = jArr2;
                strArr = new String[0];
            } else {
                jArr = jArr2;
                strArr = (String[]) ids.toArray(new String[0]);
            }
            if (skipInfoBundleList == null) {
                skipInfosFromBundleArrays = new SkipInfo[0];
            } else {
                skipInfosFromBundleArrays = getSkipInfosFromBundleArrays(skipInfoBundleList);
            }
            return new AdGroup(timeUs, count, originalCount, iArr, mediaItemsFromBundleArrays, jArr, contentResumeOffsetUs, isServerSideInserted, strArr, skipInfosFromBundleArrays, isPlaceholder);
        }

        private ArrayList<Bundle> getSkipInfoArrayBundles() {
            ArrayList<Bundle> bundles = new ArrayList<>();
            SkipInfo[] skipInfoArr = this.skipInfos;
            int length = skipInfoArr.length;
            for (int i = 0; i < length; i++) {
                SkipInfo skipInfo = skipInfoArr[i];
                bundles.add(skipInfo == null ? null : skipInfo.toBundle());
            }
            return bundles;
        }

        private ArrayList<Bundle> getMediaItemsArrayBundles(int interfaceVersion) {
            Bundle bundleIncludeLocalConfiguration;
            ArrayList<Bundle> bundles = new ArrayList<>();
            for (MediaItem mediaItem : this.mediaItems) {
                if (mediaItem == null) {
                    bundleIncludeLocalConfiguration = null;
                } else {
                    bundleIncludeLocalConfiguration = mediaItem.toBundleIncludeLocalConfiguration(interfaceVersion);
                }
                bundles.add(bundleIncludeLocalConfiguration);
            }
            return bundles;
        }

        private static MediaItem[] getMediaItemsFromBundleArrays(ArrayList<Bundle> mediaItemBundleList, ArrayList<Uri> uriList, int interfaceVersion) {
            MediaItem mediaItemFromBundle;
            if (mediaItemBundleList != null) {
                MediaItem[] mediaItems = new MediaItem[mediaItemBundleList.size()];
                for (int i = 0; i < mediaItemBundleList.size(); i++) {
                    Bundle mediaItemBundle = mediaItemBundleList.get(i);
                    if (mediaItemBundle == null) {
                        mediaItemFromBundle = null;
                    } else {
                        mediaItemFromBundle = MediaItem.fromBundle(mediaItemBundle, interfaceVersion);
                    }
                    mediaItems[i] = mediaItemFromBundle;
                }
                return mediaItems;
            }
            if (uriList != null) {
                MediaItem[] mediaItems2 = new MediaItem[uriList.size()];
                for (int i2 = 0; i2 < uriList.size(); i2++) {
                    Uri uri = uriList.get(i2);
                    mediaItems2[i2] = uri == null ? null : MediaItem.fromUri(uri);
                }
                return mediaItems2;
            }
            return new MediaItem[0];
        }

        private static SkipInfo[] getSkipInfosFromBundleArrays(List<Bundle> skipInfoBundleList) {
            SkipInfo[] skipInfos = new SkipInfo[skipInfoBundleList.size()];
            for (int i = 0; i < skipInfoBundleList.size(); i++) {
                Bundle skipInfoBundle = skipInfoBundleList.get(i);
                skipInfos[i] = skipInfoBundle == null ? null : SkipInfo.fromBundle(skipInfoBundle);
            }
            return skipInfos;
        }
    }

    public static final class SkipInfo {
        public final String labelId;
        public final long skipDurationUs;
        public final long skipOffsetUs;
        private static final String FIELD_SKIP_OFFSET_US = Util.intToStringMaxRadix(0);
        private static final String FIELD_SKIP_DURATION_US = Util.intToStringMaxRadix(1);
        private static final String FIELD_LABEL_ID = Util.intToStringMaxRadix(2);

        public SkipInfo(long skipOffsetUs, long skipDurationUs, String labelId) {
            Preconditions.checkArgument((skipOffsetUs == C.TIME_UNSET && skipDurationUs == C.TIME_UNSET && labelId == null) ? false : true);
            this.skipOffsetUs = skipOffsetUs != C.TIME_UNSET ? skipOffsetUs : 0L;
            this.skipDurationUs = skipDurationUs;
            this.labelId = labelId;
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (o == null || getClass() != o.getClass()) {
                return false;
            }
            SkipInfo skipInfo = (SkipInfo) o;
            if (this.skipOffsetUs == skipInfo.skipOffsetUs && this.skipDurationUs == skipInfo.skipDurationUs && Objects.equals(this.labelId, skipInfo.labelId)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(Long.valueOf(this.skipOffsetUs), Long.valueOf(this.skipDurationUs), this.labelId);
        }

        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(FIELD_SKIP_OFFSET_US, this.skipOffsetUs);
            bundle.putLong(FIELD_SKIP_DURATION_US, this.skipDurationUs);
            bundle.putString(FIELD_LABEL_ID, this.labelId);
            return bundle;
        }

        public static SkipInfo fromBundle(Bundle bundle) {
            return new SkipInfo(bundle.getLong(FIELD_SKIP_OFFSET_US), bundle.getLong(FIELD_SKIP_DURATION_US), bundle.getString(FIELD_LABEL_ID));
        }
    }

    public AdPlaybackState(Object adsId, long... adGroupTimesUs) {
        this(adsId, createEmptyAdGroups(adGroupTimesUs), 0L, C.TIME_UNSET, 0);
    }

    private AdPlaybackState(Object adsId, AdGroup[] adGroups, long adResumePositionUs, long contentDurationUs, int removedAdGroupCount) {
        this.adsId = adsId;
        this.adResumePositionUs = adResumePositionUs;
        this.contentDurationUs = contentDurationUs;
        this.adGroupCount = adGroups.length + removedAdGroupCount;
        this.adGroups = adGroups;
        this.removedAdGroupCount = removedAdGroupCount;
    }

    public AdGroup getAdGroup(int adGroupIndex) {
        if (adGroupIndex < this.removedAdGroupCount) {
            return REMOVED_AD_GROUP;
        }
        return this.adGroups[adGroupIndex - this.removedAdGroupCount];
    }

    public int getAdGroupIndexForPositionUs(long j, long j2) {
        int i = this.adGroupCount - 1;
        int i2 = i - (isLivePostrollPlaceholder(i) ? 1 : 0);
        while (i2 >= 0) {
            long j3 = j;
            long j4 = j2;
            if (!isPositionBeforeAdGroup(j3, j4, i2)) {
                break;
            }
            i2--;
            j = j3;
            j2 = j4;
        }
        if (i2 < 0 || !getAdGroup(i2).hasUnplayedAds()) {
            return -1;
        }
        return i2;
    }

    public int getAdGroupIndexAfterPositionUs(long positionUs, long periodDurationUs) {
        if (positionUs == Long.MIN_VALUE || (periodDurationUs != C.TIME_UNSET && positionUs >= periodDurationUs)) {
            return -1;
        }
        int index = this.removedAdGroupCount;
        while (index < this.adGroupCount && ((getAdGroup(index).timeUs != Long.MIN_VALUE && getAdGroup(index).timeUs <= positionUs) || !getAdGroup(index).shouldPlayAdGroup())) {
            index++;
        }
        if (index >= this.adGroupCount) {
            return -1;
        }
        if (periodDurationUs == C.TIME_UNSET || getAdGroup(index).timeUs <= periodDurationUs) {
            return index;
        }
        return -1;
    }

    public boolean isAdInErrorState(int adGroupIndex, int adIndexInAdGroup) {
        if (adGroupIndex >= this.adGroupCount) {
            return false;
        }
        AdGroup adGroup = getAdGroup(adGroupIndex);
        return adGroup.count != -1 && adIndexInAdGroup < adGroup.count && adGroup.states[adIndexInAdGroup] == 4;
    }

    public AdPlaybackState withAdGroupTimeUs(int adGroupIndex, long adGroupTimeUs) {
        int adjustedIndex = adGroupIndex - this.removedAdGroupCount;
        AdGroup[] adGroups = (AdGroup[]) Util.nullSafeArrayCopy(this.adGroups, this.adGroups.length);
        adGroups[adjustedIndex] = this.adGroups[adjustedIndex].withTimeUs(adGroupTimeUs);
        return new AdPlaybackState(this.adsId, adGroups, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withNewAdGroup(int adGroupIndex, long adGroupTimeUs) {
        int adjustedIndex = adGroupIndex - this.removedAdGroupCount;
        AdGroup newAdGroup = new AdGroup(adGroupTimeUs);
        AdGroup[] adGroups = (AdGroup[]) Util.nullSafeArrayAppend(this.adGroups, newAdGroup);
        System.arraycopy(adGroups, adjustedIndex, adGroups, adjustedIndex + 1, this.adGroups.length - adjustedIndex);
        adGroups[adjustedIndex] = newAdGroup;
        return new AdPlaybackState(this.adsId, adGroups, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withAdCount(int adGroupIndex, int adCount) {
        Preconditions.checkArgument(adCount > 0);
        int adjustedIndex = adGroupIndex - this.removedAdGroupCount;
        if (this.adGroups[adjustedIndex].count == adCount) {
            return this;
        }
        AdGroup[] adGroups = (AdGroup[]) Util.nullSafeArrayCopy(this.adGroups, this.adGroups.length);
        adGroups[adjustedIndex] = this.adGroups[adjustedIndex].withAdCount(adCount);
        return new AdPlaybackState(this.adsId, adGroups, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState copy() {
        AdGroup[] adGroups = new AdGroup[this.adGroups.length];
        for (int i = 0; i < adGroups.length; i++) {
            adGroups[i] = this.adGroups[i].copy();
        }
        return new AdPlaybackState(this.adsId, adGroups, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    @Deprecated
    public AdPlaybackState withAvailableAdUri(int adGroupIndex, int adIndexInAdGroup, Uri uri) {
        return withAvailableAdMediaItem(adGroupIndex, adIndexInAdGroup, MediaItem.fromUri(uri));
    }

    public AdPlaybackState withAvailableAdMediaItem(int adGroupIndex, int adIndexInAdGroup, MediaItem mediaItem) {
        int adjustedIndex = adGroupIndex - this.removedAdGroupCount;
        AdGroup[] adGroups = (AdGroup[]) Util.nullSafeArrayCopy(this.adGroups, this.adGroups.length);
        Preconditions.checkState(adGroups[adjustedIndex].isServerSideInserted || !(mediaItem.localConfiguration == null || mediaItem.localConfiguration.uri.equals(Uri.EMPTY)));
        adGroups[adjustedIndex] = adGroups[adjustedIndex].withAdMediaItem(mediaItem, adIndexInAdGroup);
        return new AdPlaybackState(this.adsId, adGroups, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withAdsId(Object adsId) {
        return new AdPlaybackState(adsId, this.adGroups, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withAvailableAd(int adGroupIndex, int adIndexInAdGroup) {
        return withAvailableAdMediaItem(adGroupIndex, adIndexInAdGroup, MediaItem.fromUri(Uri.EMPTY));
    }

    public AdPlaybackState withPlayedAd(int adGroupIndex, int adIndexInAdGroup) {
        int adjustedIndex = adGroupIndex - this.removedAdGroupCount;
        AdGroup[] adGroups = (AdGroup[]) Util.nullSafeArrayCopy(this.adGroups, this.adGroups.length);
        adGroups[adjustedIndex] = adGroups[adjustedIndex].withAdState(3, adIndexInAdGroup);
        return new AdPlaybackState(this.adsId, adGroups, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withSkippedAd(int adGroupIndex, int adIndexInAdGroup) {
        int adjustedIndex = adGroupIndex - this.removedAdGroupCount;
        AdGroup[] adGroups = (AdGroup[]) Util.nullSafeArrayCopy(this.adGroups, this.adGroups.length);
        adGroups[adjustedIndex] = adGroups[adjustedIndex].withAdState(2, adIndexInAdGroup);
        return new AdPlaybackState(this.adsId, adGroups, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withLastAdRemoved(int adGroupIndex) {
        int adjustedIndex = adGroupIndex - this.removedAdGroupCount;
        AdGroup[] adGroups = (AdGroup[]) Util.nullSafeArrayCopy(this.adGroups, this.adGroups.length);
        adGroups[adjustedIndex] = adGroups[adjustedIndex].withLastAdRemoved();
        return new AdPlaybackState(this.adsId, adGroups, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withAdLoadError(int adGroupIndex, int adIndexInAdGroup) {
        int adjustedIndex = adGroupIndex - this.removedAdGroupCount;
        AdGroup[] adGroups = (AdGroup[]) Util.nullSafeArrayCopy(this.adGroups, this.adGroups.length);
        adGroups[adjustedIndex] = adGroups[adjustedIndex].withAdState(4, adIndexInAdGroup);
        return new AdPlaybackState(this.adsId, adGroups, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withAdId(int adGroupIndex, int adIndexInAdGroup, String adId) {
        int adjustedIndex = adGroupIndex - this.removedAdGroupCount;
        AdGroup[] adGroups = (AdGroup[]) Util.nullSafeArrayCopy(this.adGroups, this.adGroups.length);
        adGroups[adjustedIndex] = adGroups[adjustedIndex].withAdId(adId, adIndexInAdGroup);
        return new AdPlaybackState(this.adsId, adGroups, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withAdSkipInfo(int adGroupIndex, int adIndexInAdGroup, SkipInfo skipInfo) {
        int adjustedIndex = adGroupIndex - this.removedAdGroupCount;
        AdGroup[] adGroups = (AdGroup[]) Util.nullSafeArrayCopy(this.adGroups, this.adGroups.length);
        adGroups[adjustedIndex] = adGroups[adjustedIndex].withAdSkipInfo(skipInfo, adIndexInAdGroup);
        return new AdPlaybackState(this.adsId, adGroups, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withSkippedAdGroup(int adGroupIndex) {
        int adjustedIndex = adGroupIndex - this.removedAdGroupCount;
        AdGroup[] adGroups = (AdGroup[]) Util.nullSafeArrayCopy(this.adGroups, this.adGroups.length);
        adGroups[adjustedIndex] = adGroups[adjustedIndex].withAllAdsSkipped();
        return new AdPlaybackState(this.adsId, adGroups, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withAdDurationsUs(long[][] adDurationUs) {
        Preconditions.checkArgument(adDurationUs.length == this.adGroupCount);
        AdGroup[] adGroups = (AdGroup[]) Util.nullSafeArrayCopy(this.adGroups, this.adGroups.length);
        for (int correctedAdGroupIndex = 0; correctedAdGroupIndex < this.adGroupCount - this.removedAdGroupCount; correctedAdGroupIndex++) {
            adGroups[correctedAdGroupIndex] = adGroups[correctedAdGroupIndex].withAdDurationsUs(adDurationUs[this.removedAdGroupCount + correctedAdGroupIndex]);
        }
        return new AdPlaybackState(this.adsId, adGroups, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withAdDurationsUs(int adGroupIndex, long... adDurationsUs) {
        int adjustedIndex = adGroupIndex - this.removedAdGroupCount;
        AdGroup[] adGroups = (AdGroup[]) Util.nullSafeArrayCopy(this.adGroups, this.adGroups.length);
        adGroups[adjustedIndex] = adGroups[adjustedIndex].withAdDurationsUs(adDurationsUs);
        return new AdPlaybackState(this.adsId, adGroups, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withAdResumePositionUs(long adResumePositionUs) {
        if (this.adResumePositionUs == adResumePositionUs) {
            return this;
        }
        return new AdPlaybackState(this.adsId, this.adGroups, adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withContentDurationUs(long contentDurationUs) {
        if (this.contentDurationUs == contentDurationUs) {
            return this;
        }
        return new AdPlaybackState(this.adsId, this.adGroups, this.adResumePositionUs, contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withRemovedAdGroupCount(int removedAdGroupCount) {
        if (this.removedAdGroupCount == removedAdGroupCount) {
            return this;
        }
        Preconditions.checkArgument(removedAdGroupCount > this.removedAdGroupCount);
        AdGroup[] adGroups = new AdGroup[this.adGroupCount - removedAdGroupCount];
        System.arraycopy(this.adGroups, removedAdGroupCount - this.removedAdGroupCount, adGroups, 0, adGroups.length);
        return new AdPlaybackState(this.adsId, adGroups, this.adResumePositionUs, this.contentDurationUs, removedAdGroupCount);
    }

    public AdPlaybackState withRemovedAdGroupCountBefore(long timeUs) {
        int newRemovedAdGroupCount = this.removedAdGroupCount;
        while (newRemovedAdGroupCount < this.adGroupCount) {
            AdGroup adGroup = getAdGroup(newRemovedAdGroupCount);
            if (timeUs <= adGroup.timeUs || adGroup.timeUs == Long.MIN_VALUE) {
                break;
            }
            newRemovedAdGroupCount++;
        }
        return withRemovedAdGroupCount(newRemovedAdGroupCount);
    }

    public AdPlaybackState withContentResumeOffsetUs(int adGroupIndex, long contentResumeOffsetUs) {
        int adjustedIndex = adGroupIndex - this.removedAdGroupCount;
        if (this.adGroups[adjustedIndex].contentResumeOffsetUs == contentResumeOffsetUs) {
            return this;
        }
        AdGroup[] adGroups = (AdGroup[]) Util.nullSafeArrayCopy(this.adGroups, this.adGroups.length);
        adGroups[adjustedIndex] = adGroups[adjustedIndex].withContentResumeOffsetUs(contentResumeOffsetUs);
        return new AdPlaybackState(this.adsId, adGroups, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withOriginalAdCount(int adGroupIndex, int originalAdCount) {
        int adjustedIndex = adGroupIndex - this.removedAdGroupCount;
        if (this.adGroups[adjustedIndex].originalCount == originalAdCount) {
            return this;
        }
        AdGroup[] adGroups = (AdGroup[]) Util.nullSafeArrayCopy(this.adGroups, this.adGroups.length);
        adGroups[adjustedIndex] = adGroups[adjustedIndex].withOriginalAdCount(originalAdCount);
        return new AdPlaybackState(this.adsId, adGroups, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withIsServerSideInserted(int adGroupIndex, boolean isServerSideInserted) {
        int adjustedIndex = adGroupIndex - this.removedAdGroupCount;
        if (this.adGroups[adjustedIndex].isServerSideInserted == isServerSideInserted) {
            return this;
        }
        AdGroup[] adGroups = (AdGroup[]) Util.nullSafeArrayCopy(this.adGroups, this.adGroups.length);
        adGroups[adjustedIndex] = adGroups[adjustedIndex].withIsServerSideInserted(isServerSideInserted);
        return new AdPlaybackState(this.adsId, adGroups, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withResetAdGroup(int adGroupIndex) {
        int adjustedIndex = adGroupIndex - this.removedAdGroupCount;
        AdGroup[] adGroups = (AdGroup[]) Util.nullSafeArrayCopy(this.adGroups, this.adGroups.length);
        adGroups[adjustedIndex] = adGroups[adjustedIndex].withAllAdsReset();
        return new AdPlaybackState(this.adsId, adGroups, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    @Deprecated
    public AdPlaybackState withLivePostrollPlaceholderAppended() {
        return withLivePostrollPlaceholderAppended(true);
    }

    public AdPlaybackState withLivePostrollPlaceholderAppended(boolean isServerSideInserted) {
        return withNewAdGroup(this.adGroupCount, Long.MIN_VALUE).withIsPlaceholder(this.adGroupCount, true, isServerSideInserted);
    }

    AdPlaybackState withIsPlaceholder(int adGroupIndex, boolean isPlaceholder, boolean isServerSideInserted) {
        int adjustedIndex = adGroupIndex - this.removedAdGroupCount;
        if (this.adGroups[adjustedIndex].isPlaceholder == isPlaceholder && this.adGroups[adjustedIndex].isServerSideInserted == isServerSideInserted) {
            return this;
        }
        AdGroup[] adGroups = (AdGroup[]) Util.nullSafeArrayCopy(this.adGroups, this.adGroups.length);
        adGroups[adjustedIndex] = adGroups[adjustedIndex].withIsPlaceholder(isPlaceholder, isServerSideInserted);
        return new AdPlaybackState(this.adsId, adGroups, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public boolean endsWithLivePostrollPlaceHolder() {
        int adGroupIndex = this.adGroupCount - 1;
        return adGroupIndex >= 0 && isLivePostrollPlaceholder(adGroupIndex);
    }

    public boolean endsWithLivePostrollPlaceHolder(boolean isServerSideInserted) {
        int adGroupIndex = this.adGroupCount - 1;
        return adGroupIndex >= 0 && isLivePostrollPlaceholder(adGroupIndex, isServerSideInserted);
    }

    public boolean isLivePostrollPlaceholder(int adGroupIndex) {
        return adGroupIndex == this.adGroupCount - 1 && getAdGroup(adGroupIndex).isLivePostrollPlaceholder();
    }

    public boolean isLivePostrollPlaceholder(int adGroupIndex, boolean isServerSideInserted) {
        return adGroupIndex == this.adGroupCount - 1 && getAdGroup(adGroupIndex).isLivePostrollPlaceholder(isServerSideInserted);
    }

    public int getAdIndexOfAdId(int adGroupIndex, String adId) {
        return getAdGroup(adGroupIndex).getIndexOfAdId(adId);
    }

    public static AdPlaybackState fromAdPlaybackState(Object adsId, AdPlaybackState adPlaybackState) {
        AdGroup[] adGroups = new AdGroup[adPlaybackState.adGroupCount - adPlaybackState.removedAdGroupCount];
        int i = 0;
        while (i < adGroups.length) {
            AdGroup adGroup = adPlaybackState.adGroups[i];
            int i2 = i;
            adGroups[i2] = new AdGroup(adGroup.timeUs, adGroup.count, adGroup.originalCount, Arrays.copyOf(adGroup.states, adGroup.states.length), (MediaItem[]) Arrays.copyOf(adGroup.mediaItems, adGroup.mediaItems.length), Arrays.copyOf(adGroup.durationsUs, adGroup.durationsUs.length), adGroup.contentResumeOffsetUs, adGroup.isServerSideInserted, adGroup.ids, adGroup.skipInfos, adGroup.isPlaceholder);
            i = i2 + 1;
        }
        return new AdPlaybackState(adsId, adGroups, adPlaybackState.adResumePositionUs, adPlaybackState.contentDurationUs, adPlaybackState.removedAdGroupCount);
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        AdPlaybackState that = (AdPlaybackState) o;
        if (Objects.equals(this.adsId, that.adsId) && this.adGroupCount == that.adGroupCount && this.adResumePositionUs == that.adResumePositionUs && this.contentDurationUs == that.contentDurationUs && this.removedAdGroupCount == that.removedAdGroupCount && Arrays.equals(this.adGroups, that.adGroups)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int result = this.adGroupCount;
        return (((((((((result * 31) + (this.adsId == null ? 0 : this.adsId.hashCode())) * 31) + ((int) this.adResumePositionUs)) * 31) + ((int) this.contentDurationUs)) * 31) + this.removedAdGroupCount) * 31) + Arrays.hashCode(this.adGroups);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AdPlaybackState(adsId=");
        sb.append(this.adsId);
        sb.append(", adResumePositionUs=");
        sb.append(this.adResumePositionUs);
        sb.append(", adGroups=[");
        for (int i = 0; i < this.adGroups.length; i++) {
            sb.append("adGroup(timeUs=");
            sb.append(this.adGroups[i].timeUs);
            sb.append(", ads=[");
            for (int j = 0; j < this.adGroups[i].states.length; j++) {
                sb.append("ad(state=");
                switch (this.adGroups[i].states[j]) {
                    case 0:
                        sb.append('_');
                        break;
                    case 1:
                        sb.append('R');
                        break;
                    case 2:
                        sb.append('S');
                        break;
                    case 3:
                        sb.append('P');
                        break;
                    case 4:
                        sb.append('!');
                        break;
                    default:
                        sb.append('?');
                        break;
                }
                sb.append(", durationUs=");
                sb.append(this.adGroups[i].durationsUs[j]);
                sb.append(')');
                if (j < this.adGroups[i].states.length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("])");
            if (i < this.adGroups.length - 1) {
                sb.append(", ");
            }
        }
        sb.append("])");
        return sb.toString();
    }

    private boolean isPositionBeforeAdGroup(long positionUs, long periodDurationUs, int adGroupIndex) {
        if (positionUs == Long.MIN_VALUE) {
            return false;
        }
        AdGroup adGroup = getAdGroup(adGroupIndex);
        long adGroupPositionUs = adGroup.timeUs;
        return adGroupPositionUs == Long.MIN_VALUE ? periodDurationUs == C.TIME_UNSET || adGroup.isLivePostrollPlaceholder() || positionUs < periodDurationUs : positionUs < adGroupPositionUs;
    }

    @Deprecated
    public Bundle toBundle() {
        return toBundle(9);
    }

    public Bundle toBundle(int interfaceVersion) {
        Bundle bundle = new Bundle();
        ArrayList<Bundle> adGroupBundleList = new ArrayList<>();
        for (AdGroup adGroup : this.adGroups) {
            adGroupBundleList.add(adGroup.toBundle(interfaceVersion));
        }
        if (!adGroupBundleList.isEmpty()) {
            bundle.putParcelableArrayList(FIELD_AD_GROUPS, adGroupBundleList);
        }
        if (this.adResumePositionUs != NONE.adResumePositionUs) {
            bundle.putLong(FIELD_AD_RESUME_POSITION_US, this.adResumePositionUs);
        }
        if (this.contentDurationUs != NONE.contentDurationUs) {
            bundle.putLong(FIELD_CONTENT_DURATION_US, this.contentDurationUs);
        }
        if (this.removedAdGroupCount != NONE.removedAdGroupCount) {
            bundle.putInt(FIELD_REMOVED_AD_GROUP_COUNT, this.removedAdGroupCount);
        }
        return bundle;
    }

    @Deprecated
    public static AdPlaybackState fromBundle(Bundle bundle) {
        return fromBundle(bundle, 9);
    }

    public static AdPlaybackState fromBundle(Bundle bundle, int interfaceVersion) {
        AdGroup[] adGroups;
        ArrayList<Bundle> adGroupBundleList = bundle.getParcelableArrayList(FIELD_AD_GROUPS);
        if (adGroupBundleList == null) {
            adGroups = new AdGroup[0];
        } else {
            AdGroup[] adGroups2 = new AdGroup[adGroupBundleList.size()];
            for (int i = 0; i < adGroupBundleList.size(); i++) {
                adGroups2[i] = AdGroup.fromBundle(adGroupBundleList.get(i), interfaceVersion);
            }
            adGroups = adGroups2;
        }
        long adResumePositionUs = bundle.getLong(FIELD_AD_RESUME_POSITION_US, NONE.adResumePositionUs);
        long contentDurationUs = bundle.getLong(FIELD_CONTENT_DURATION_US, NONE.contentDurationUs);
        int removedAdGroupCount = bundle.getInt(FIELD_REMOVED_AD_GROUP_COUNT, NONE.removedAdGroupCount);
        return new AdPlaybackState(null, adGroups, adResumePositionUs, contentDurationUs, removedAdGroupCount);
    }

    private static AdGroup[] createEmptyAdGroups(long[] adGroupTimesUs) {
        AdGroup[] adGroups = new AdGroup[adGroupTimesUs.length];
        for (int i = 0; i < adGroups.length; i++) {
            adGroups[i] = new AdGroup(adGroupTimesUs[i]);
        }
        return adGroups;
    }
}

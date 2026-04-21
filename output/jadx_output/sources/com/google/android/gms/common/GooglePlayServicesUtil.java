package com.google.android.gms.common;

import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.zaj;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.9.0 */
/* JADX INFO: loaded from: classes21.dex */
public final class GooglePlayServicesUtil extends GooglePlayServicesUtilLight {
    public static final String GMS_ERROR_DIALOG = "GooglePlayServicesErrorDialog";

    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";

    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";

    private GooglePlayServicesUtil() {
    }

    @Deprecated
    public static Dialog getErrorDialog(int errorCode, Activity activity, int requestCode) {
        return getErrorDialog(errorCode, activity, requestCode, null);
    }

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int errorCode, Context context, int requestCode) {
        return GoogleApiAvailabilityLight.getInstance().getErrorResolutionPendingIntent(context, errorCode, requestCode);
    }

    @Deprecated
    public static String getErrorString(int errorCode) {
        return GooglePlayServicesUtilLight.getErrorString(errorCode);
    }

    public static Context getRemoteContext(Context context) {
        return GooglePlayServicesUtilLight.getRemoteContext(context);
    }

    public static Resources getRemoteResource(Context context) {
        return GooglePlayServicesUtilLight.getRemoteResource(context);
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context) {
        return GooglePlayServicesUtilLight.isGooglePlayServicesAvailable(context);
    }

    @Deprecated
    public static boolean isUserRecoverableError(int errorCode) {
        return GooglePlayServicesUtilLight.isUserRecoverableError(errorCode);
    }

    public static boolean isUsingBackgroundThreadExecutorForBindService() {
        return GoogleApiManager.zat();
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int errorCode, Activity activity, int requestCode) {
        return showErrorDialogFragment(errorCode, activity, requestCode, null);
    }

    @Deprecated
    public static void showErrorNotification(int errorCode, Context context) {
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        if (GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(context, errorCode) || GooglePlayServicesUtilLight.isPlayStorePossiblyUpdating(context, errorCode)) {
            googleApiAvailability.zai(context);
        } else {
            googleApiAvailability.showErrorNotification(context, errorCode);
        }
    }

    public static boolean useBackgroundThreadExecutorForBindService() {
        return GoogleApiManager.zas();
    }

    public static void useBackgroundThreadForConnectionCallback() {
        GmsClientSupervisor.setUseHandlerThreadForCallbacks();
    }

    @Deprecated
    public static Dialog getErrorDialog(int errorCode, Activity activity, int requestCode, DialogInterface.OnCancelListener cancelListener) {
        if (true == GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(activity, errorCode)) {
            errorCode = 18;
        }
        return GoogleApiAvailability.getInstance().getErrorDialog(activity, errorCode, requestCode, cancelListener);
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context, int minApkVersion) {
        return GooglePlayServicesUtilLight.isGooglePlayServicesAvailable(context, minApkVersion);
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int errorCode, Activity activity, int requestCode, DialogInterface.OnCancelListener cancelListener) {
        return showErrorDialogFragment(errorCode, activity, null, requestCode, cancelListener);
    }

    public static boolean showErrorDialogFragment(int errorCode, Activity activity, Fragment fragment, int requestCode, DialogInterface.OnCancelListener cancelListener) {
        if (true == GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(activity, errorCode)) {
            errorCode = 18;
        }
        int i = errorCode;
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        if (fragment == null) {
            return googleApiAvailability.showErrorDialogFragment(activity, i, requestCode, cancelListener);
        }
        Dialog dialogZaa = googleApiAvailability.zaa(activity, i, zaj.zac(fragment, GoogleApiAvailability.getInstance().getErrorResolutionIntent(activity, i, "d"), requestCode), cancelListener, null);
        if (dialogZaa == null) {
            return false;
        }
        googleApiAvailability.zah(activity, dialogZaa, GMS_ERROR_DIALOG, cancelListener);
        return true;
    }
}

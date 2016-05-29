.class public Lcom/android/nfc/handover/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_FOUND_FOR_BEAM:Ljava/lang/String; = "bluetooth.action.FOUND_BT_FOR_BEAM"

.field public static final BLUETOOTH_INTENT_PERMISSION:Ljava/lang/String; = "android.permission.BLUETOOTH_PRIVILEGED"

.field public static final NFC_INTENT_PERMISSION:Ljava/lang/String; = "com.android.nfc.permission.ACCESS_INTERFACE"

.field public static final supportHWBeam:Z

.field public static final supportSoftAPforHWBeam:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    const-string v0, "ro.config.hw_nfc_beam"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/handover/Constants;->supportHWBeam:Z

    .line 11
    const-string v0, "ro.config.hw_nfc_softap_beam"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/handover/Constants;->supportSoftAPforHWBeam:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

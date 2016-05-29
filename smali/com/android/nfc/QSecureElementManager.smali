.class public Lcom/android/nfc/QSecureElementManager;
.super Lqcom/nfc/IQNfcSecureElementManager$Stub;
.source "QSecureElementManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/QSecureElementManager$MyCallback;,
        Lcom/android/nfc/QSecureElementManager$OpenSecureElement;,
        Lcom/android/nfc/QSecureElementManager$eeErrorCodes;
    }
.end annotation


# static fields
.field public static final ACTION_AID_SELECTED:Ljava/lang/String; = "com.android.nfc_extras.action.AID_SELECTED"

.field public static final ACTION_APDU_RECEIVED:Ljava/lang/String; = "com.android.nfc_extras.action.APDU_RECEIVED"

.field public static final ACTION_EMV_CARD_REMOVAL:Ljava/lang/String; = "com.android.nfc_extras.action.EMV_CARD_REMOVAL"

.field public static final ACTION_LLCP_DOWN:Ljava/lang/String; = "com.android.nfc.action.LLCP_DOWN"

.field public static final ACTION_LLCP_UP:Ljava/lang/String; = "com.android.nfc.action.LLCP_UP"

.field public static final ACTION_MIFARE_ACCESS_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

.field public static final ACTION_SE_LISTEN_ACTIVATED:Ljava/lang/String; = "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

.field public static final ACTION_SE_LISTEN_DEACTIVATED:Ljava/lang/String; = "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

.field private static final DBG:Z = false

.field public static final EXTRA_AID:Ljava/lang/String; = "com.android.nfc_extras.extra.AID"

.field public static final EXTRA_APDU_BYTES:Ljava/lang/String; = "com.android.nfc_extras.extra.APDU_BYTES"

.field public static final EXTRA_DATA:Ljava/lang/String; = "com.android.nfc_extras.extra.DATA"

.field public static final EXTRA_MIFARE_BLOCK:Ljava/lang/String; = "com.android.nfc_extras.extra.MIFARE_BLOCK"

.field public static final EXTRA_SE_NAME:Ljava/lang/String; = "com.android.nfc_extras.extra.SE_NAME"

.field public static final EXTRA_SE_NAME_LIST:Ljava/lang/String; = "com.android.nfc_extras.extra.SE_NAME_LIST"

.field static final NDEF_PUSH_ON_DEFAULT:Z = true

.field static final NFC_ON_DEFAULT:Z = true

.field static final PREF_ACTIVE_SECURE_ELEMENT:Ljava/lang/String; = "active_secure_element"

.field static final PREF_AIRPLANE_OVERRIDE:Ljava/lang/String; = "airplane_override"

.field static final PREF_EE_ROUTING_STATE:Ljava/lang/String; = "ee_routing_state"

.field static final PREF_FIRST_BEAM:Ljava/lang/String; = "first_beam"

.field static final PREF_FIRST_BOOT:Ljava/lang/String; = "first_boot"

.field static final PREF_NDEF_PUSH_ON:Ljava/lang/String; = "ndef_push_on"

.field static final PREF_NFC_ON:Ljava/lang/String; = "nfc_on"

.field static final ROUTE_OFF:I = 0x1

.field static final ROUTE_ON_ALLWAYS:I = 0x4

.field static final ROUTE_ON_WHEN_SCREEN_ON:I = 0x3

.field static final ROUTE_ON_WHEN_SCREEN_ON_UNLOCKED:I = 0x2

.field static final SE_BROADCASTS_WITH_HCE:Z = true

.field private static final TAG:Ljava/lang/String; = "nfc:QSecureElementManager"

.field private static final displayNameForDeviceHost:Ljava/lang/String; = "Device Host"

.field private static mMultiSeManager:Lcom/android/nfc/cardemulation/MultiSeManager; = null

.field private static mPrefs:Landroid/content/SharedPreferences; = null

.field private static mPrefsEditor:Landroid/content/SharedPreferences$Editor; = null

.field private static final multiReceptionMode:Ljava/lang/Boolean;

.field private static final prefsName:Ljava/lang/String; = "QSecureElementManager_prefs"

.field private static sService:Lcom/android/nfc/QSecureElementManager;

.field private static final unicastReceptionMode:Ljava/lang/Boolean;


# instance fields
.field private final defaultTransactionEventReceptionMode:Ljava/lang/Boolean;

.field private mContext:Landroid/content/Context;

.field private mDeviceHost:Lcom/android/nfc/DeviceHost;

.field public mEeRoutingState:I

.field private mEeWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;

.field private mHasOMACert:Z

.field final mIActivityManager:Landroid/app/IActivityManager;

.field private final mIsHceCapable:Z

.field mIsSentUnicastReception:Z

.field final mMultiReceptionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNfcService:Lcom/android/nfc/NfcService;

.field private mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

.field public mNfceeRouteEnabled:Z

.field private mOpenEe:Lcom/android/nfc/QSecureElementManager$OpenSecureElement;

.field final mSEToOpenAPDUGateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

.field private mWaitOMACheckCert:Ljava/lang/Object;

.field private final setDefaultIsoDepRouteReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/nfc/QSecureElementManager;->multiReceptionMode:Ljava/lang/Boolean;

    .line 96
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/nfc/QSecureElementManager;->unicastReceptionMode:Ljava/lang/Boolean;

    .line 102
    sput-object v1, Lcom/android/nfc/QSecureElementManager;->sService:Lcom/android/nfc/QSecureElementManager;

    .line 103
    sput-object v1, Lcom/android/nfc/QSecureElementManager;->mMultiSeManager:Lcom/android/nfc/cardemulation/MultiSeManager;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/android/nfc/DeviceHost;Lcom/android/nfc/NfcService;)V
    .locals 9
    .param p1, "nfcApplication"    # Landroid/app/Application;
    .param p2, "host"    # Lcom/android/nfc/DeviceHost;
    .param p3, "nfcService"    # Lcom/android/nfc/NfcService;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 176
    invoke-direct {p0}, Lqcom/nfc/IQNfcSecureElementManager$Stub;-><init>()V

    .line 91
    iput-boolean v7, p0, Lcom/android/nfc/QSecureElementManager;->mIsSentUnicastReception:Z

    .line 94
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mMultiReceptionMap:Ljava/util/HashMap;

    .line 100
    iput-object v8, p0, Lcom/android/nfc/QSecureElementManager;->mWaitOMACheckCert:Ljava/lang/Object;

    .line 101
    iput-boolean v7, p0, Lcom/android/nfc/QSecureElementManager;->mHasOMACert:Z

    .line 217
    new-instance v4, Lcom/android/nfc/QSecureElementManager$1;

    invoke-direct {v4, p0}, Lcom/android/nfc/QSecureElementManager$1;-><init>(Lcom/android/nfc/QSecureElementManager;)V

    iput-object v4, p0, Lcom/android/nfc/QSecureElementManager;->setDefaultIsoDepRouteReceiver:Landroid/content/BroadcastReceiver;

    .line 237
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mSEToOpenAPDUGateMap:Ljava/util/HashMap;

    .line 177
    sput-object p0, Lcom/android/nfc/QSecureElementManager;->sService:Lcom/android/nfc/QSecureElementManager;

    .line 178
    const-string v4, "persist.nfc.smartcard.isis"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "mIsisConfig":Ljava/lang/String;
    const-string v4, "nfc:QSecureElementManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persist.nfc.smartcard.isis = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-eqz v1, :cond_0

    const-string v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    :cond_0
    const-string v4, "nfc:QSecureElementManager"

    const-string v5, "unicast mode set"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-object v4, Lcom/android/nfc/QSecureElementManager;->unicastReceptionMode:Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/android/nfc/QSecureElementManager;->defaultTransactionEventReceptionMode:Ljava/lang/Boolean;

    .line 188
    :goto_0
    iput-object p1, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    .line 189
    new-instance v4, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    iget-object v5, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    .line 190
    iput-object p2, p0, Lcom/android/nfc/QSecureElementManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 191
    iget-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    const-string v5, "QSecureElementManager_prefs"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    sput-object v4, Lcom/android/nfc/QSecureElementManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 192
    sget-object v4, Lcom/android/nfc/QSecureElementManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    sput-object v4, Lcom/android/nfc/QSecureElementManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 194
    new-instance v4, Lcom/android/nfc/NfceeAccessControl;

    iget-object v5, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/nfc/NfceeAccessControl;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    .line 195
    iput-object p3, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    .line 196
    new-instance v4, Lcom/android/nfc/QSecureElementManager$MyCallback;

    invoke-direct {v4, p0}, Lcom/android/nfc/QSecureElementManager$MyCallback;-><init>(Lcom/android/nfc/QSecureElementManager;)V

    iput-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;

    .line 197
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mIActivityManager:Landroid/app/IActivityManager;

    .line 199
    iget-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 200
    .local v2, "mPowerManager":Landroid/os/PowerManager;
    const/4 v4, 0x1

    const-string v5, "NfcService:mEeWakeLock"

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 203
    iget-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 204
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "android.hardware.nfc.hce"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/nfc/QSecureElementManager;->mIsHceCapable:Z

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    .local v0, "intentFilterSetDefaultIsoDepRoute":Landroid/content/IntentFilter;
    const-string v4, "com.android.nfc.action.GET_DEFAULT_ISO_DEP_ROUTE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v4, "com.android.nfc.action.SET_DEFAULT_ISO_DEP_ROUTE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    iget-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/nfc/QSecureElementManager;->setDefaultIsoDepRouteReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "android.permission.NFC_ENABLE"

    invoke-virtual {v4, v5, v0, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 214
    invoke-static {}, Lcom/android/nfc/cardemulation/MultiSeManager;->getInstance()Lcom/android/nfc/cardemulation/MultiSeManager;

    move-result-object v4

    sput-object v4, Lcom/android/nfc/QSecureElementManager;->mMultiSeManager:Lcom/android/nfc/cardemulation/MultiSeManager;

    .line 215
    return-void

    .line 184
    .end local v0    # "intentFilterSetDefaultIsoDepRoute":Landroid/content/IntentFilter;
    .end local v2    # "mPowerManager":Landroid/os/PowerManager;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const-string v4, "nfc:QSecureElementManager"

    const-string v5, "multicast mode set"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sget-object v4, Lcom/android/nfc/QSecureElementManager;->multiReceptionMode:Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/android/nfc/QSecureElementManager;->defaultTransactionEventReceptionMode:Ljava/lang/Boolean;

    goto/16 :goto_0
.end method

.method private _open(Landroid/os/IBinder;)I
    .locals 7
    .param p1, "b"    # Landroid/os/IBinder;

    .prologue
    .line 1164
    iget-object v5, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    monitor-enter v5

    .line 1165
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1166
    const/4 v1, -0x6

    monitor-exit v5

    .line 1201
    :goto_0
    return v1

    .line 1168
    :cond_0
    iget-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v4, :cond_1

    .line 1170
    const/4 v1, -0x1

    monitor-exit v5

    goto :goto_0

    .line 1202
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1172
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mOpenEe:Lcom/android/nfc/QSecureElementManager$OpenSecureElement;

    if-eqz v4, :cond_2

    .line 1173
    const/4 v1, -0x2

    monitor-exit v5

    goto :goto_0

    .line 1176
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mSEToOpenAPDUGateMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/nfc/QSecureElementManager;->getCallingPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1177
    .local v3, "seName":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 1178
    new-instance v3, Ljava/lang/String;

    .end local v3    # "seName":Ljava/lang/String;
    const-string v4, "eSE1"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1180
    .restart local v3    # "seName":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v4, v3}, Lcom/android/nfc/DeviceHost;->getNfceeId(Ljava/lang/String;)I

    move-result v2

    .line 1182
    .local v2, "nfceeId":I
    invoke-virtual {p0, v2}, Lcom/android/nfc/QSecureElementManager;->doOpenSecureElementConnection(I)I

    move-result v1

    .line 1183
    .local v1, "handle":I
    if-gez v1, :cond_4

    .line 1184
    monitor-exit v5

    goto :goto_0

    .line 1188
    :cond_4
    new-instance v4, Lcom/android/nfc/QSecureElementManager$OpenSecureElement;

    invoke-static {}, Lcom/android/nfc/QSecureElementManager;->getCallingPid()I

    move-result v6

    invoke-direct {v4, p0, v6, v1, p1}, Lcom/android/nfc/QSecureElementManager$OpenSecureElement;-><init>(Lcom/android/nfc/QSecureElementManager;IILandroid/os/IBinder;)V

    iput-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mOpenEe:Lcom/android/nfc/QSecureElementManager$OpenSecureElement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1190
    :try_start_2
    iget-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mOpenEe:Lcom/android/nfc/QSecureElementManager$OpenSecureElement;

    const/4 v6, 0x0

    invoke-interface {p1, v4, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1201
    :goto_1
    :try_start_3
    monitor-exit v5

    goto :goto_0

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mOpenEe:Lcom/android/nfc/QSecureElementManager$OpenSecureElement;

    invoke-virtual {v4}, Lcom/android/nfc/QSecureElementManager$OpenSecureElement;->binderDied()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private _transceive([B)[B
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1117
    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 1118
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1119
    new-instance v0, Ljava/io/IOException;

    const-string v2, "NFC is not enabled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1121
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mOpenEe:Lcom/android/nfc/QSecureElementManager$OpenSecureElement;

    if-nez v0, :cond_1

    .line 1122
    new-instance v0, Ljava/io/IOException;

    const-string v2, "NFC EE is not open"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1124
    :cond_1
    invoke-static {}, Lcom/android/nfc/QSecureElementManager;->getCallingPid()I

    move-result v0

    iget-object v2, p0, Lcom/android/nfc/QSecureElementManager;->mOpenEe:Lcom/android/nfc/QSecureElementManager$OpenSecureElement;

    iget v2, v2, Lcom/android/nfc/QSecureElementManager$OpenSecureElement;->pid:I

    if-eq v0, v2, :cond_2

    .line 1125
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Wrong PID"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1127
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1129
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mOpenEe:Lcom/android/nfc/QSecureElementManager$OpenSecureElement;

    iget v0, v0, Lcom/android/nfc/QSecureElementManager$OpenSecureElement;->handle:I

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/QSecureElementManager;->doTransceive(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/QSecureElementManager$MyCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/QSecureElementManager;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/NfcService;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/QSecureElementManager;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/nfc/QSecureElementManager;)Lcom/android/nfc/DeviceHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/QSecureElementManager;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/nfc/QSecureElementManager;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/QSecureElementManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/nfc/QSecureElementManager;->sendSeBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/nfc/QSecureElementManager;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/QSecureElementManager;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->defaultTransactionEventReceptionMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/nfc/QSecureElementManager;->multiReceptionMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/nfc/QSecureElementManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/QSecureElementManager;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/nfc/QSecureElementManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$800()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/nfc/QSecureElementManager;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private checkCertificatesFromSim(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 697
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 698
    .local v0, "checkCertificateIntent":Landroid/content/Intent;
    const-string v3, "org.simalliance.openmobileapi.service.ACTION_CHECK_CERT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    const-string v3, "org.simalliance.openmobileapi.service"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    const-string v3, "org.simalliance.openmobileapi.service.EXTRA_SE_NAME"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    const-string v3, "org.simalliance.openmobileapi.service.EXTRA_PKG"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    iget-object v3, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 704
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/nfc/QSecureElementManager;->mWaitOMACheckCert:Ljava/lang/Object;

    .line 705
    iput-boolean v2, p0, Lcom/android/nfc/QSecureElementManager;->mHasOMACert:Z

    .line 707
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mWaitOMACheckCert:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :try_start_1
    iget-object v3, p0, Lcom/android/nfc/QSecureElementManager;->mWaitOMACheckCert:Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 709
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 714
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/nfc/QSecureElementManager;->mWaitOMACheckCert:Ljava/lang/Object;

    .line 716
    iget-boolean v3, p0, Lcom/android/nfc/QSecureElementManager;->mHasOMACert:Z

    if-eqz v3, :cond_0

    .line 717
    const/4 v2, 0x1

    .line 719
    :cond_0
    return v2

    .line 709
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 710
    :catch_0
    move-exception v1

    .line 712
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "nfc:QSecureElementManager"

    const-string v4, "interruped."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkX509CertificatesFromSim(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 726
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 727
    .local v0, "checkCertificateIntent":Landroid/content/Intent;
    const-string v3, "org.simalliance.openmobileapi.service.ACTION_CHECK_X509"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    const-string v3, "org.simalliance.openmobileapi.service"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    const-string v3, "org.simalliance.openmobileapi.service.EXTRA_SE_NAME"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    const-string v3, "org.simalliance.openmobileapi.service.EXTRA_PKG"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    iget-object v3, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 733
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/nfc/QSecureElementManager;->mWaitOMACheckCert:Ljava/lang/Object;

    .line 734
    iput-boolean v2, p0, Lcom/android/nfc/QSecureElementManager;->mHasOMACert:Z

    .line 736
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mWaitOMACheckCert:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :try_start_1
    iget-object v3, p0, Lcom/android/nfc/QSecureElementManager;->mWaitOMACheckCert:Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 738
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/nfc/QSecureElementManager;->mWaitOMACheckCert:Ljava/lang/Object;

    .line 745
    iget-boolean v3, p0, Lcom/android/nfc/QSecureElementManager;->mHasOMACert:Z

    if-eqz v3, :cond_0

    .line 746
    const/4 v2, 0x1

    .line 748
    :cond_0
    return v2

    .line 738
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 739
    :catch_0
    move-exception v1

    .line 741
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "nfc:QSecureElementManager"

    const-string v4, "interruped."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableAfterUserConfirm(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 687
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/ConfirmNfcEnableActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 688
    .local v0, "dialogIntent":Landroid/content/Intent;
    const-string v1, "com.android.nfc.action.EXTRA_PKG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 691
    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 692
    return-void
.end method

.method public static getInstance()Lcom/android/nfc/QSecureElementManager;
    .locals 1

    .prologue
    .line 1258
    sget-object v0, Lcom/android/nfc/QSecureElementManager;->sService:Lcom/android/nfc/QSecureElementManager;

    return-object v0
.end method

.method private restoreHostPresence()V
    .locals 4

    .prologue
    .line 1060
    const-string v2, "nfc:QSecureElementManager"

    const-string v3, "restoreHostPresence()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v2, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1062
    iget-object v2, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v0, 0x1

    .line 1063
    .local v0, "hciUiState":I
    iget-object v2, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x1

    .line 1071
    .local v1, "nfccUiState":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/QSecureElementManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2, v0, v1}, Lcom/android/nfc/DeviceHost;->updateHostPresence(II)V

    .line 1072
    return-void

    .line 1064
    .end local v0    # "hciUiState":I
    .end local v1    # "nfccUiState":I
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1065
    iget-object v2, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v0, 0x2

    .line 1066
    .restart local v0    # "hciUiState":I
    iget-object v2, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    .restart local v1    # "nfccUiState":I
    goto :goto_0

    .line 1068
    .end local v0    # "hciUiState":I
    .end local v1    # "nfccUiState":I
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v0, 0x2

    .line 1069
    .restart local v0    # "hciUiState":I
    iget-object v2, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    .restart local v1    # "nfccUiState":I
    goto :goto_0
.end method

.method private sendSeBroadcast(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    .line 273
    return-void
.end method

.method private writeEeException(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1050
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1051
    .local v0, "p":Landroid/os/Bundle;
    const-string v1, "e"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1052
    const-string v1, "m"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    return-object v0
.end method

.method private writeNoException()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 1044
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1045
    .local v0, "p":Landroid/os/Bundle;
    const-string v1, "e"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1046
    return-object v0
.end method


# virtual methods
.method _nfcEeClose(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "callingPid"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1224
    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 1225
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mSEToOpenAPDUGateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1228
    new-instance v0, Ljava/io/IOException;

    const-string v2, "NFC adapter is disabled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1230
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mOpenEe:Lcom/android/nfc/QSecureElementManager$OpenSecureElement;

    if-nez v0, :cond_1

    .line 1231
    new-instance v0, Ljava/io/IOException;

    const-string v2, "NFC EE closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1233
    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mOpenEe:Lcom/android/nfc/QSecureElementManager$OpenSecureElement;

    iget v0, v0, Lcom/android/nfc/QSecureElementManager$OpenSecureElement;->pid:I

    if-eq p1, v0, :cond_2

    .line 1234
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Wrong PID"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1236
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mOpenEe:Lcom/android/nfc/QSecureElementManager$OpenSecureElement;

    iget-object v0, v0, Lcom/android/nfc/QSecureElementManager$OpenSecureElement;->binder:Landroid/os/IBinder;

    if-eq v0, p2, :cond_3

    .line 1237
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Wrong binder handle"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1240
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mOpenEe:Lcom/android/nfc/QSecureElementManager$OpenSecureElement;

    const/4 v2, 0x0

    invoke-interface {p2, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1242
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mOpenEe:Lcom/android/nfc/QSecureElementManager$OpenSecureElement;

    iget v0, v0, Lcom/android/nfc/QSecureElementManager$OpenSecureElement;->handle:I

    invoke-virtual {p0, v0}, Lcom/android/nfc/QSecureElementManager;->doDisconnect(I)V

    .line 1243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mOpenEe:Lcom/android/nfc/QSecureElementManager$OpenSecureElement;

    .line 1245
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->isRfInterfaceActivated()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1246
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1248
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1249
    return-void
.end method

.method public close(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1208
    iget-object v2, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1211
    :try_start_0
    invoke-static {}, Lcom/android/nfc/QSecureElementManager;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v2, p2}, Lcom/android/nfc/QSecureElementManager;->_nfcEeClose(ILandroid/os/IBinder;)V

    .line 1212
    invoke-direct {p0}, Lcom/android/nfc/QSecureElementManager;->writeNoException()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1216
    .local v1, "result":Landroid/os/Bundle;
    :goto_0
    return-object v1

    .line 1213
    .end local v1    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 1214
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/nfc/QSecureElementManager;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "result":Landroid/os/Bundle;
    goto :goto_0
.end method

.method public commitOffHostService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/util/List;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "bannerResId"    # I
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 993
    .local p6, "aidGroupDescriptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "aidGroups":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/AidGroup;>;"
    sget-object v0, Lcom/android/nfc/QSecureElementManager;->mMultiSeManager:Lcom/android/nfc/cardemulation/MultiSeManager;

    if-eqz v0, :cond_0

    .line 994
    sget-object v0, Lcom/android/nfc/QSecureElementManager;->mMultiSeManager:Lcom/android/nfc/cardemulation/MultiSeManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/nfc/cardemulation/MultiSeManager;->multiSeCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/util/List;)Z

    .line 997
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public deleteOffHostService(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;

    .prologue
    .line 1004
    sget-object v0, Lcom/android/nfc/QSecureElementManager;->mMultiSeManager:Lcom/android/nfc/cardemulation/MultiSeManager;

    if-eqz v0, :cond_0

    .line 1005
    sget-object v0, Lcom/android/nfc/QSecureElementManager;->mMultiSeManager:Lcom/android/nfc/cardemulation/MultiSeManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/MultiSeManager;->deleteOffHostService(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1007
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public deliverSeIntent(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 908
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;

    const/16 v0, 0x13

    invoke-virtual {p0, v0, p2}, Lcom/android/nfc/QSecureElementManager;->sendMessage(ILjava/lang/Object;)V

    .line 909
    return-void
.end method

.method public disableCardEmulationMode(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/nfc/QSecureElementManager;->checkCertificatesFromSim(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 832
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No cerficates from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;

    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/QSecureElementManager;->sendMessage(ILjava/lang/Object;)V

    .line 840
    const/4 v0, 0x1

    return v0
.end method

.method public disableClfAidFilterCondition(B)Z
    .locals 2
    .param p1, "filterConditionTag"    # B

    .prologue
    .line 979
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 980
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;

    const/16 v1, 0x1b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 981
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 982
    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;

    invoke-virtual {v1, v0}, Lcom/android/nfc/QSecureElementManager$MyCallback;->sendMessage(Landroid/os/Message;)V

    .line 984
    const/4 v1, 0x1

    return v1
.end method

.method doDisconnect(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1157
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doDisconnect(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1159
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1161
    return-void

    .line 1159
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doOpenSecureElementConnection(I)I
    .locals 2
    .param p1, "nfceeId"    # I

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1135
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doOpenSecureElementConnection(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1137
    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doTransceive(I[B)[B
    .locals 2
    .param p1, "handle"    # I
    .param p2, "cmd"    # [B

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1144
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/QSecureElementManager;->doTransceiveNoLock(I[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1146
    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doTransceiveNoLock(I[B)[B
    .locals 1
    .param p1, "handle"    # I
    .param p2, "cmd"    # [B

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doTransceive(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public enableCardEmulationMode(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 810
    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 811
    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/nfc/QSecureElementManager;->checkCertificatesFromSim(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 812
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No cerficates from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 817
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 819
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 820
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;

    const/16 v1, 0x16

    iput v1, v0, Landroid/os/Message;->what:I

    .line 821
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 822
    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;

    invoke-virtual {v1, v0}, Lcom/android/nfc/QSecureElementManager$MyCallback;->sendMessage(Landroid/os/Message;)V

    .line 823
    const/4 v1, 0x1

    return v1
.end method

.method public enableClfAidFilterCondition(B)Z
    .locals 2
    .param p1, "filterConditionTag"    # B

    .prologue
    .line 965
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 966
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;

    const/16 v1, 0x1a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 967
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 968
    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;

    invoke-virtual {v1, v0}, Lcom/android/nfc/QSecureElementManager$MyCallback;->sendMessage(Landroid/os/Message;)V

    .line 970
    const/4 v1, 0x1

    return v1
.end method

.method public enableMultiReception(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 872
    const-string v0, "SIM"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/QSecureElementManager;->checkX509CertificatesFromSim(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 874
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No cerficates from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 881
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mMultiReceptionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mMultiReceptionMap:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    return-void
.end method

.method public enableNfcController(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 763
    invoke-direct {p0, p1}, Lcom/android/nfc/QSecureElementManager;->enableAfterUserConfirm(Ljava/lang/String;)V

    .line 764
    return-void
.end method

.method public getActiveSecureElement(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 847
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    return-object v0
.end method

.method public getCallback()Lcom/android/nfc/QNfcService$HandlerCallback;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;

    return-object v0
.end method

.method public getLMRT(Ljava/lang/String;)[B
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getLMRT()[B

    move-result-object v0

    return-object v0
.end method

.method public getOffHostServices(Ljava/lang/String;Lqcom/nfc/IQNfcSecureElementManagerCallbacks;)Z
    .locals 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callbacks"    # Lqcom/nfc/IQNfcSecureElementManagerCallbacks;

    .prologue
    .line 1015
    :try_start_0
    sget-object v1, Lcom/android/nfc/QSecureElementManager;->mMultiSeManager:Lcom/android/nfc/cardemulation/MultiSeManager;

    if-eqz v1, :cond_1

    .line 1016
    sget-object v1, Lcom/android/nfc/QSecureElementManager;->mMultiSeManager:Lcom/android/nfc/cardemulation/MultiSeManager;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/nfc/cardemulation/MultiSeManager;->getOffHostServiceForPackage(Ljava/lang/String;)Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;

    move-result-object v15

    .line 1017
    .local v15, "appPackage":Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    if-eqz v15, :cond_2

    .line 1018
    iget-object v1, v15, Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;->mOffHostServices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 1019
    .local v20, "offHostServiceEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1020
    .local v4, "seName":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;

    .line 1021
    .local v19, "offHostService":Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1022
    .local v6, "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mApduServiceInfo:Lcom/android/nfc/cardemulation/QApduServiceInfo;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/nfc/cardemulation/AidGroup;

    .line 1023
    .local v14, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mAidGroupDescriptions:Ljava/util/HashMap;

    invoke-virtual {v14}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1037
    .end local v4    # "seName":Ljava/lang/String;
    .end local v6    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v15    # "appPackage":Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v19    # "offHostService":Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;
    .end local v20    # "offHostServiceEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;>;"
    :catch_0
    move-exception v16

    .line 1038
    .local v16, "e":Ljava/lang/Exception;
    const-string v1, "nfc:QSecureElementManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOffHostServices() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    .end local v16    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v1, 0x1

    return v1

    .line 1025
    .restart local v4    # "seName":Ljava/lang/String;
    .restart local v6    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "appPackage":Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    .restart local v18    # "i$":Ljava/util/Iterator;
    .restart local v19    # "offHostService":Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;
    .restart local v20    # "offHostServiceEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;>;"
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mApduServiceInfo:Lcom/android/nfc/cardemulation/QApduServiceInfo;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mBannerId:I

    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;->mApduServiceInfo:Lcom/android/nfc/cardemulation/QApduServiceInfo;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/QApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v1, p2

    invoke-interface/range {v1 .. v7}, Lqcom/nfc/IQNfcSecureElementManagerCallbacks;->onGetOffHostService(ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 1034
    .end local v4    # "seName":Ljava/lang/String;
    .end local v6    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "appPackage":Lcom/android/nfc/cardemulation/MultiSeManager$AppPackage;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v19    # "offHostService":Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;
    .end local v20    # "offHostServiceEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/MultiSeManager$OffHostService;>;"
    :cond_1
    const-string v1, "nfc:QSecureElementManager"

    const-string v2, "getOffHostServices() MultiSeManager is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_2
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p2

    invoke-interface/range {v7 .. v13}, Lqcom/nfc/IQNfcSecureElementManagerCallbacks;->onGetOffHostService(ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public isCardEmulationEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 799
    iget v1, p0, Lcom/android/nfc/QSecureElementManager;->mEeRoutingState:I

    if-ne v1, v0, :cond_0

    .line 800
    const/4 v0, 0x0

    .line 802
    :cond_0
    return v0
.end method

.method public isSeEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 890
    iget-object v3, p0, Lcom/android/nfc/QSecureElementManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost;->getSecureElementList()Ljava/lang/String;

    move-result-object v2

    .line 891
    .local v2, "seListWithComma":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 892
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 893
    .local v1, "seList":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz v1, :cond_1

    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 895
    aget-object v3, v1, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 896
    const/4 v3, 0x1

    .line 899
    .end local v0    # "i":I
    .end local v1    # "seList":[Ljava/lang/String;
    :goto_1
    return v3

    .line 893
    .restart local v0    # "i":I
    .restart local v1    # "seList":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 899
    .end local v0    # "i":I
    .end local v1    # "seList":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public multiSeControlCmd([BI)Z
    .locals 2
    .param p1, "ppse_rsp"    # [B
    .param p2, "op_code"    # I

    .prologue
    .line 778
    const-string v0, "nfc:QSecureElementManager"

    const-string v1, "multiSeControlCmd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost;->multiSeControlCmd([BI)Z

    .line 780
    const/4 v0, 0x1

    return v0
.end method

.method public multiSeRegisterAid(Ljava/util/List;Landroid/content/ComponentName;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .param p2, "paymentService"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 769
    .local p1, "aid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "seName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "priority":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "powerState":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "nfc:QSecureElementManager"

    const-string v1, "multiSeRegisterAid()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    sget-object v0, Lcom/android/nfc/QSecureElementManager;->mMultiSeManager:Lcom/android/nfc/cardemulation/MultiSeManager;

    if-eqz v0, :cond_0

    .line 771
    sget-object v0, Lcom/android/nfc/QSecureElementManager;->mMultiSeManager:Lcom/android/nfc/cardemulation/MultiSeManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/cardemulation/MultiSeManager;->multiSeRegisterAid(Ljava/util/List;Landroid/content/ComponentName;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    .line 773
    const/4 v0, 0x1

    .line 775
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCheckCertResult(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 918
    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mWaitOMACheckCert:Ljava/lang/Object;

    monitor-enter v1

    .line 919
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mWaitOMACheckCert:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 920
    if-eqz p2, :cond_1

    .line 921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/QSecureElementManager;->mHasOMACert:Z

    .line 925
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mWaitOMACheckCert:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 927
    :cond_0
    monitor-exit v1

    .line 928
    return-void

    .line 923
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/QSecureElementManager;->mHasOMACert:Z

    goto :goto_0

    .line 927
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCardEmulationAidSelected([B)V
    .locals 1
    .param p1, "dataBuf"    # [B

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/android/nfc/QSecureElementManager;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/QSecureElementManager;->sendMessage(ILjava/lang/Object;)V

    .line 677
    return-void
.end method

.method public onRfInterfaceDeactivated()V
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;

    const/16 v0, 0x1c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/QSecureElementManager;->sendMessage(ILjava/lang/Object;)V

    .line 682
    return-void
.end method

.method public open(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1077
    iget-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1080
    iget-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v5, 0x2

    if-gt v4, v5, :cond_0

    .line 1081
    iget-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    .line 1082
    .local v1, "hciUiState":I
    iget-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    .line 1083
    .local v2, "nfccUiState":I
    iget-object v4, p0, Lcom/android/nfc/QSecureElementManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v4, v1, v2}, Lcom/android/nfc/DeviceHost;->updateHostPresence(II)V

    .line 1087
    .end local v1    # "hciUiState":I
    .end local v2    # "nfccUiState":I
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/nfc/QSecureElementManager;->_open(Landroid/os/IBinder;)I

    move-result v0

    .line 1088
    .local v0, "handle":I
    if-gez v0, :cond_1

    .line 1089
    const-string v4, "NFCEE open exception."

    invoke-direct {p0, v0, v4}, Lcom/android/nfc/QSecureElementManager;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 1090
    .local v3, "result":Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/android/nfc/QSecureElementManager;->restoreHostPresence()V

    .line 1094
    :goto_0
    return-object v3

    .line 1092
    .end local v3    # "result":Landroid/os/Bundle;
    :cond_1
    invoke-direct {p0}, Lcom/android/nfc/QSecureElementManager;->writeNoException()Landroid/os/Bundle;

    move-result-object v3

    .restart local v3    # "result":Landroid/os/Bundle;
    goto :goto_0
.end method

.method public selectSEToOpenApduGate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 937
    const-string v0, "eSE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 938
    const-string v0, "nfc:QSecureElementManager"

    const-string v1, "selectSEToOpenApduGate() invalid secure element for APDU Gate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :goto_0
    return-void

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mSEToOpenAPDUGateMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/nfc/QSecureElementManager;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 667
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 668
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 669
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 670
    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;

    invoke-virtual {v1, v0}, Lcom/android/nfc/QSecureElementManager$MyCallback;->sendMessage(Landroid/os/Message;)V

    .line 671
    return-void
.end method

.method public setActiveSecureElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 855
    const-string v0, "SIM"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/QSecureElementManager;->checkCertificatesFromSim(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 857
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No cerficates from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, p2}, Lcom/android/nfc/QSecureElementManager;->sendMessage(ILjava/lang/Object;)V

    .line 864
    return-void
.end method

.method public setClfAidFilterList([B)Z
    .locals 2
    .param p1, "filterList"    # [B

    .prologue
    .line 949
    if-nez p1, :cond_0

    .line 950
    const-string v0, "nfc:QSecureElementManager"

    const-string v1, "setClfAidFilterList() filterList should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const/4 v0, 0x0

    .line 956
    :goto_0
    return v0

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;

    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/QSecureElementManager;->sendMessage(ILjava/lang/Object;)V

    .line 956
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public transceive(Ljava/lang/String;[B)Landroid/os/Bundle;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "data_in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1102
    iget-object v3, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1107
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/nfc/QSecureElementManager;->_transceive([B)[B

    move-result-object v1

    .line 1108
    .local v1, "out":[B
    invoke-direct {p0}, Lcom/android/nfc/QSecureElementManager;->writeNoException()Landroid/os/Bundle;

    move-result-object v2

    .line 1109
    .local v2, "result":Landroid/os/Bundle;
    const-string v3, "out"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    .end local v1    # "out":[B
    :goto_0
    return-object v2

    .line 1110
    .end local v2    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 1111
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/nfc/QSecureElementManager;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .restart local v2    # "result":Landroid/os/Bundle;
    goto :goto_0
.end method

.method public updateCardEmulationRoute(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "route"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 788
    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 789
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 790
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;

    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    .line 791
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 792
    iget-object v1, p0, Lcom/android/nfc/QSecureElementManager;->mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;

    invoke-virtual {v1, v0}, Lcom/android/nfc/QSecureElementManager$MyCallback;->sendMessage(Landroid/os/Message;)V

    .line 793
    const/4 v1, 0x1

    return v1
.end method

.method public updateDefaultOffHostRoute(Ljava/lang/String;)V
    .locals 1
    .param p1, "seName"    # Ljava/lang/String;

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/android/nfc/QSecureElementManager;->mHandler:Lcom/android/nfc/QSecureElementManager$MyCallback;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/QSecureElementManager;->sendMessage(ILjava/lang/Object;)V

    .line 1254
    return-void
.end method

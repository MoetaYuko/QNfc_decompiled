.class public Lcom/android/nfc/beam/BeamManager;
.super Ljava/lang/Object;
.source "BeamManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/beam/BeamManager$1;,
        Lcom/android/nfc/beam/BeamManager$Singleton;
    }
.end annotation


# static fields
.field private static final ACTION_WHITELIST_DEVICE:Ljava/lang/String; = "android.btopp.intent.action.WHITELIST_DEVICE"

.field private static final DBG:Z = false

.field public static final MSG_BEAM_COMPLETE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BeamManager"


# instance fields
.field private mBeamInProgress:Z

.field private final mCallback:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNfcService:Lcom/android/nfc/NfcService;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    .line 59
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mNfcService:Lcom/android/nfc/NfcService;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/beam/BeamManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/beam/BeamManager$1;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/nfc/beam/BeamManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/nfc/beam/BeamManager;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/nfc/beam/BeamManager$Singleton;->INSTANCE:Lcom/android/nfc/beam/BeamManager;

    return-object v0
.end method

.method public static whitelistOppDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.WHITELIST_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 159
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 160
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 140
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_2

    .line 141
    iget-object v3, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 142
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 143
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 146
    .local v0, "success":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 147
    iget-object v2, p0, Lcom/android/nfc/beam/BeamManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 151
    .end local v0    # "success":Z
    :cond_0
    :goto_1
    return v1

    .line 143
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    move v0, v2

    .line 145
    goto :goto_0

    :cond_2
    move v1, v2

    .line 151
    goto :goto_1
.end method

.method public isBeamInProgress()Z
    .locals 2

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    monitor-exit v1

    return v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startBeamReceive(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 74
    iget-object v7, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 76
    :try_start_0
    iget-boolean v8, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    if-eqz v8, :cond_0

    .line 77
    const-string v4, "BeamManager"

    const-string v6, "startBeamReceive mBeamInProgress is true so return busy "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    monitor-exit v7

    move v4, v5

    .line 101
    :goto_0
    return v4

    .line 79
    :cond_0
    if-nez p2, :cond_2

    .line 80
    const-string v5, "BeamManager"

    const-string v8, "startBeamReceive set mBeamInProgress false "

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 85
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    if-eqz p2, :cond_3

    iget-object v2, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 88
    .local v2, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    :goto_2
    if-eqz p2, :cond_4

    iget-boolean v0, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    .line 90
    .local v0, "carrierActivating":Z
    :goto_3
    invoke-static {v2, v0, v6}, Lcom/android/nfc/beam/BeamTransferRecord;->forBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v3

    .line 94
    .local v3, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/android/nfc/beam/BeamReceiveService;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v1, "receiveIntent":Landroid/content/Intent;
    const-string v5, "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    const-string v5, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    new-instance v6, Landroid/os/Messenger;

    iget-object v7, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    invoke-direct {v6, v7}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 99
    if-eqz v2, :cond_1

    invoke-static {p1, v2}, Lcom/android/nfc/beam/BeamManager;->whitelistOppDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 100
    :cond_1
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_0

    .line 83
    .end local v0    # "carrierActivating":Z
    .end local v1    # "receiveIntent":Landroid/content/Intent;
    .end local v2    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :cond_2
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    goto :goto_1

    .line 85
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_3
    move-object v2, v6

    .line 87
    goto :goto_2

    .restart local v2    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    move v0, v4

    .line 88
    goto :goto_3
.end method

.method public startBeamSend(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;[Landroid/net/Uri;Landroid/os/UserHandle;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "outgoingHandoverData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .param p3, "uris"    # [Landroid/net/Uri;
    .param p4, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 108
    iget-object v6, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 109
    :try_start_0
    iget-boolean v7, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    if-eqz v7, :cond_0

    .line 111
    const-string v4, "BeamManager"

    const-string v7, "startBeamSend mBeamInProgress is true so return busy "

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    monitor-exit v6

    move v4, v5

    .line 135
    :goto_0
    return v4

    .line 113
    :cond_0
    if-nez p2, :cond_1

    .line 114
    const-string v5, "BeamManager"

    const-string v7, "startBeamSend set mBeamInProgress false "

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 119
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 122
    .local v1, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    :goto_2
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    .line 124
    .local v0, "carrierActivating":Z
    :goto_3
    invoke-static {v1, v0, p3}, Lcom/android/nfc/beam/BeamTransferRecord;->forBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v3

    .line 129
    .local v3, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/android/nfc/beam/BeamSendService;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v2, "sendIntent":Landroid/content/Intent;
    sget-object v5, Lcom/android/nfc/beam/BeamSendService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 132
    const-string v5, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    new-instance v6, Landroid/os/Messenger;

    iget-object v7, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    invoke-direct {v6, v7}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p1, v2, p4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_0

    .line 117
    .end local v0    # "carrierActivating":Z
    .end local v1    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "sendIntent":Landroid/content/Intent;
    .end local v3    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :cond_1
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    goto :goto_1

    .line 119
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 121
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .restart local v1    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    move v0, v4

    .line 122
    goto :goto_3
.end method

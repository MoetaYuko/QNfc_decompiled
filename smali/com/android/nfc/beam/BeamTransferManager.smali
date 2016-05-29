.class public Lcom/android/nfc/beam/BeamTransferManager;
.super Ljava/lang/Object;
.source "BeamTransferManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/beam/BeamTransferManager$Callback;
    }
.end annotation


# static fields
.field static final ACTION_STOP_BLUETOOTH_TRANSFER:Ljava/lang/String; = "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

.field static final ACTION_WHITELIST_DEVICE:Ljava/lang/String; = "android.btopp.intent.action.WHITELIST_DEVICE"

.field public static final ALIVE_CHECK_MS:I = 0xea60

.field static final BEAM_DIR:Ljava/lang/String; = "beam"

.field static final DATA_LINK_TYPE_BLUETOOTH:I = 0x1

.field static final DBG:Ljava/lang/Boolean;

.field static final MSG_NEXT_TRANSFER_TIMER:I = 0x0

.field static final MSG_TRANSFER_SUCCESS:I = 0x2

.field static final MSG_TRANSFER_TIMEOUT:I = 0x1

.field static final STATE_CANCELLED:I = 0x6

.field static final STATE_CANCELLING:I = 0x7

.field static final STATE_FAILED:I = 0x4

.field static final STATE_IN_PROGRESS:I = 0x1

.field static final STATE_NEW:I = 0x0

.field static final STATE_SUCCESS:I = 0x5

.field static final STATE_W4_MEDIA_SCANNER:I = 0x3

.field static final STATE_W4_NEXT_TRANSFER:I = 0x2

.field static final TAG:Ljava/lang/String; = "BeamTransferManager"

.field static final WAIT_FOR_NEXT_TRANSFER_MS:I = 0xfa0


# instance fields
.field mBluetoothTransferId:I

.field final mCallback:Lcom/android/nfc/beam/BeamTransferManager$Callback;

.field mCalledBack:Z

.field final mCancelIntent:Landroid/app/PendingIntent;

.field final mContext:Landroid/content/Context;

.field mCurrentCount:I

.field mDataLinkType:I

.field final mHandler:Landroid/os/Handler;

.field final mHandoverPowerManager:Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;

.field final mIncoming:Z

.field private mIsHwBeam:Z

.field mMediaUris:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mMimeTypes:Ljava/util/HashMap;
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

.field final mNotificationManager:Landroid/app/NotificationManager;

.field mOutgoingUris:[Landroid/net/Uri;

.field mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mProgress:F

.field final mRemoteActivating:Z

.field final mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field final mRemoteMac:Ljava/lang/String;

.field final mSourceAddress:Ljava/lang/String;

.field mStartTime:Ljava/lang/Long;

.field mState:I

.field mSuccessCount:I

.field mTotalCount:I

.field final mTransferId:I

.field mTransferMimeTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mUrisScanned:I

.field public transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;ZZ)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/beam/BeamTransferManager$Callback;
    .param p3, "pendingTransfer"    # Lcom/android/nfc/beam/BeamTransferRecord;
    .param p4, "incoming"    # Z
    .param p5, "isHwBeam"    # Z

    .prologue
    .line 224
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 225
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    .line 226
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/beam/BeamTransferManager;->mCallback:Lcom/android/nfc/beam/BeamTransferManager$Callback;

    .line 227
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/nfc/beam/BeamTransferRecord;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 228
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/nfc/beam/BeamTransferRecord;->remoteMacAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteMac:Ljava/lang/String;

    .line 229
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    .line 230
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/nfc/beam/BeamTransferRecord;->id:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    .line 231
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    .line 232
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mDataLinkType:I

    .line 233
    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/android/nfc/beam/BeamTransferRecord;->remoteActivating:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteActivating:Z

    .line 234
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    .line 236
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    if-eqz v2, :cond_1

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    array-length v2, v2

    :goto_0
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    .line 238
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    .line 239
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    .line 240
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    .line 243
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferMimeTypes:Ljava/util/ArrayList;

    .line 244
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    .line 245
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    .line 246
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mMediaUris:Ljava/util/HashMap;

    .line 249
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mCancelIntent:Landroid/app/PendingIntent;

    .line 250
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/beam/BeamTransferManager;->mIsHwBeam:Z

    .line 252
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    .line 253
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    .line 254
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    .line 255
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mOutgoingUris:[Landroid/net/Uri;

    .line 256
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    .line 258
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    if-lez v2, :cond_0

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 261
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 265
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mSourceAddress:Ljava/lang/String;

    .line 266
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/BeamTransferManager;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;

    .line 267
    new-instance v3, Lcom/android/nfc/transferhistory/NfcTransferInfo;

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-string v12, ""

    const/4 v13, 0x2

    const/4 v14, 0x2

    const/4 v15, 0x1

    const-wide/16 v16, 0x0

    invoke-direct/range {v3 .. v17}, Lcom/android/nfc/transferhistory/NfcTransferInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIIJ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    .line 271
    return-void

    .line 236
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 240
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZIZLcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceAddress"    # Ljava/lang/String;
    .param p3, "incoming"    # Z
    .param p4, "notificationId"    # I
    .param p5, "isHwBeam"    # Z
    .param p6, "handoverPowerManager"    # Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;

    .prologue
    .line 182
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 183
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    .line 184
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->mCallback:Lcom/android/nfc/beam/BeamTransferManager$Callback;

    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    .line 187
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    .line 190
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    .line 191
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    .line 192
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferMimeTypes:Ljava/util/ArrayList;

    .line 193
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    .line 194
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    .line 195
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->mMediaUris:Ljava/util/HashMap;

    .line 196
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/beam/BeamTransferManager;->mSourceAddress:Ljava/lang/String;

    .line 197
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteMac:Ljava/lang/String;

    .line 198
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteActivating:Z

    .line 199
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    .line 200
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    .line 201
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    .line 202
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->mCancelIntent:Landroid/app/PendingIntent;

    .line 203
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    .line 204
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/beam/BeamTransferManager;->mIsHwBeam:Z

    .line 205
    if-nez p5, :cond_1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 206
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 207
    .local v2, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->mSourceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 211
    .end local v2    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :goto_0
    new-instance v3, Lcom/android/nfc/transferhistory/NfcTransferInfo;

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-string v12, ""

    const/4 v13, 0x2

    const/4 v14, 0x2

    const/4 v15, 0x1

    const-wide/16 v16, 0x0

    invoke-direct/range {v3 .. v17}, Lcom/android/nfc/transferhistory/NfcTransferInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIIJ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    .line 214
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    if-lez v3, :cond_0

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 217
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 219
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/beam/BeamTransferManager;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;

    .line 220
    return-void

    .line 187
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 209
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_0
.end method

.method static checkMediaStorage(Ljava/io/File;)Z
    .locals 4
    .param p0, "path"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 767
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 769
    const-string v1, "BeamTransferManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not dir or not mkdir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :goto_0
    return v0

    .line 772
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 774
    :cond_1
    const-string v1, "BeamTransferManager"

    const-string v2, "External storage not mounted, can\'t store file."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static generateMultiplePath(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "beamRoot"    # Ljava/lang/String;

    .prologue
    .line 802
    const-string v1, "yyyy-MM-dd"

    .line 803
    .local v1, "format":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 804
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "beam-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 805
    .local v3, "newPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 806
    .local v2, "newFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 807
    .local v0, "count":I
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 808
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "beam-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 810
    new-instance v2, Ljava/io/File;

    .end local v2    # "newFile":Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 811
    .restart local v2    # "newFile":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 813
    :cond_0
    return-object v2
.end method

.method static generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 780
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 781
    .local v1, "dotIndex":I
    const/4 v3, 0x0

    .line 782
    .local v3, "extension":Ljava/lang/String;
    const/4 v4, 0x0

    .line 783
    .local v4, "fileNameWithoutExtension":Ljava/lang/String;
    if-gez v1, :cond_0

    .line 784
    const-string v3, ""

    .line 785
    move-object v4, p1

    .line 790
    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 791
    .local v2, "dstFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 792
    .local v0, "count":I
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 793
    new-instance v2, Ljava/io/File;

    .end local v2    # "dstFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 795
    .restart local v2    # "dstFile":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 787
    .end local v0    # "count":I
    .end local v2    # "dstFile":Ljava/io/File;
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 788
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 797
    .restart local v0    # "count":I
    .restart local v2    # "dstFile":Ljava/io/File;
    :cond_1
    return-object v2
.end method

.method private sendBluetoothCancelIntentAndUpdateState()V
    .locals 3

    .prologue
    .line 422
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .local v0, "cancelIntent":Landroid/content/Intent;
    const-string v1, "android.nfc.handover.intent.extra.TRANSFER_ID"

    iget v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 424
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 425
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 426
    return-void
.end method

.method private setTransferInfo()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 559
    const-string v1, ""

    .line 560
    .local v1, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 561
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "path":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 562
    .restart local v1    # "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 563
    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setMimeType(Ljava/lang/String;)V

    .line 566
    :cond_0
    const-string v2, ""

    if-eq v2, v1, :cond_2

    .line 567
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 568
    .local v0, "file":Ljava/io/File;
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFilePath(Ljava/lang/String;)V

    .line 569
    const-string v2, ""

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, ""

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 570
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFileName(Ljava/lang/String;)V

    .line 573
    :cond_1
    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 574
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFileSize(J)V

    .line 578
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    iget-boolean v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIsHwBeam:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_3

    .line 579
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFriendlyName(Ljava/lang/String;)V

    .line 581
    :cond_3
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setTransferDir(I)V

    .line 582
    return-void
.end method


# virtual methods
.method buildCancelIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 723
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 725
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    .line 729
    const-string v4, "android.nfc.handover.intent.extra.ADDRESS"

    iget v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mDataLinkType:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    :goto_1
    const-string v4, "com.android.nfc.handover.extra.INCOMING"

    iget-boolean v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 737
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 740
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1

    .line 729
    .end local v1    # "pi":Landroid/app/PendingIntent;
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteMac:Ljava/lang/String;

    goto :goto_0

    .line 732
    :cond_1
    const-string v2, "android.nfc.handover.intent.extra.ADDRESS"

    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSourceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    move v2, v3

    .line 735
    goto :goto_2
.end method

.method buildDialogShowIntent()Landroid/app/PendingIntent;
    .locals 6

    .prologue
    .line 745
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 746
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    .line 747
    const-string v2, "com.android.nfc.handover.extra.SOURCE_ADDRESS"

    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/nfc/handover/HandoverTransferDialog;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 753
    const-string v2, "com.android.nfc.handover.extra.transferinfo.notifyId"

    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 754
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    if-eqz v2, :cond_0

    .line 755
    const-string v2, "com.android.nfc.handover.extra.transferinfo.devicename"

    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-virtual {v3}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-virtual {v2}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 757
    const-string v2, "com.android.nfc.handover.extra.transferinfo.filename"

    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-virtual {v3}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    const-string v2, "com.android.nfc.handover.extra.transferinfo.filesize"

    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-virtual {v3}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFileSize()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 761
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 762
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1

    .line 749
    .end local v1    # "pi":Landroid/app/PendingIntent;
    :cond_1
    const-string v2, "com.android.nfc.handover.extra.SOURCE_ADDRESS"

    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSourceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method buildViewIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 709
    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    .line 719
    :goto_0
    return-object v3

    .line 711
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .local v3, "viewIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 714
    .local v0, "filePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMediaUris:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 715
    .local v1, "mediaUri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 717
    .local v2, "uri":Landroid/net/Uri;
    :goto_1
    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    const v4, 0x10008000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 715
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1
.end method

.method public cancel()V
    .locals 5

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 419
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 400
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 403
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 404
    sget-object v3, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "BeamTransferManager"

    const-string v4, "cancel delete file sucess"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 406
    :cond_2
    sget-object v3, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "BeamTransferManager"

    const-string v4, "cancel delete file failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 412
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_3
    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 414
    invoke-direct {p0}, Lcom/android/nfc/beam/BeamTransferManager;->sendBluetoothCancelIntentAndUpdateState()V

    goto :goto_0

    .line 416
    :cond_4
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_0
.end method

.method declared-synchronized failed()V
    .locals 5

    .prologue
    .line 377
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 392
    :goto_0
    monitor-exit p0

    return-void

    .line 379
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 381
    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 382
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 385
    sget-object v3, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "BeamTransferManager"

    const-string v4, "cancel delete file sucess"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 377
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 387
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_2
    :try_start_2
    sget-object v3, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "BeamTransferManager"

    const-string v4, "cancel delete file failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 391
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_3
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 326
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 328
    :cond_0
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    .line 329
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 330
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    .line 331
    sget-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BeamTransferManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer success, uri and mimeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    .line 333
    if-nez p3, :cond_2

    .line 334
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/nfc/beam/MimeTypeUtil;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    .line 336
    :cond_2
    if-eqz p3, :cond_4

    .line 337
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 351
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    if-ne v0, v1, :cond_8

    .line 352
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v0, :cond_6

    .line 353
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->processFiles()V

    goto :goto_0

    .line 340
    :cond_4
    sget-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "BeamTransferManager"

    const-string v1, "Could not get mimeType for file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 343
    :cond_5
    const-string v0, "BeamTransferManager"

    const-string v1, "Handover transfer failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->failed()V

    goto :goto_0

    .line 355
    :cond_6
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    if-lez v0, :cond_7

    const/4 v0, 0x5

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_0

    :cond_7
    const/4 v0, 0x4

    goto :goto_2

    .line 358
    :cond_8
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 359
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v0, 0x5

    .line 666
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_3

    .line 668
    iget-boolean v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v3, :cond_1

    .line 670
    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 671
    const-string v1, "BeamTransferManager"

    const-string v3, "The received file mimeType is null, so mUris.size() == 0, but uris count is not 0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    :goto_0
    move v0, v2

    .line 690
    :goto_1
    return v0

    .line 675
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->processFiles()V

    goto :goto_0

    .line 678
    :cond_1
    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    if-lez v3, :cond_2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 681
    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v2, :cond_6

    .line 683
    sget-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "BeamTransferManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transfer timed out for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 690
    :cond_5
    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    .line 686
    :cond_6
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 687
    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_3
.end method

.method public isRunning()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 364
    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 365
    const/4 v0, 0x0

    .line 367
    :cond_0
    return v0
.end method

.method public declared-synchronized onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 694
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BeamTransferManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scan completed, path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_0
    if-eqz p2, :cond_1

    .line 696
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMediaUris:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :cond_1
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    .line 699
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 702
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    :cond_2
    monitor-exit p0

    return-void

    .line 694
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method processFiles()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    .line 588
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 589
    .local v4, "extRoot":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "beam"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    .local v1, "beamPath":Ljava/io/File;
    invoke-static {v1}, Lcom/android/nfc/beam/BeamTransferManager;->checkMediaStorage(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 592
    :cond_0
    const-string v9, "BeamTransferManager"

    const-string v10, "Media storage not valid or no uris received."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {p0, v12}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 663
    :cond_1
    :goto_0
    return-void

    .line 597
    :cond_2
    iget-object v9, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 598
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "beam"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/nfc/beam/BeamTransferManager;->generateMultiplePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 599
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v9

    if-nez v9, :cond_3

    .line 600
    const-string v9, "BeamTransferManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to create multiple path "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-virtual {p0, v12}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_0

    .line 606
    :cond_3
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v9, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_8

    .line 607
    iget-object v9, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 608
    .local v8, "uri":Landroid/net/Uri;
    iget-object v9, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 610
    .local v6, "mimeType":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 612
    .local v7, "srcFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/nfc/beam/BeamTransferManager;->generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 614
    .local v2, "dstFile":Ljava/io/File;
    const-string v9, "BeamTransferManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Renaming from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 606
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 620
    :cond_5
    invoke-virtual {v7, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 621
    sget-object v9, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "BeamTransferManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to rename from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_6
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 626
    :catch_0
    move-exception v3

    .line 627
    .local v3, "ee":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 632
    .end local v3    # "ee":Ljava/lang/Exception;
    :cond_7
    iget-object v9, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    iget-object v9, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    sget-object v9, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "BeamTransferManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Did successful rename from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 644
    .end local v2    # "dstFile":Ljava/io/File;
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "srcFile":Ljava/io/File;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_8
    iget-object v9, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_1

    iget-object v9, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 646
    iget-object v9, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 647
    .restart local v6    # "mimeType":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 648
    const-string v9, "image/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "video/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "audio/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 651
    :cond_9
    iget-object v9, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v0, v9, [Ljava/lang/String;

    .line 652
    .local v0, "arrayPaths":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v10, v9, v11, p0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 654
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto/16 :goto_0

    .line 657
    .end local v0    # "arrayPaths":[Ljava/lang/String;
    :cond_a
    const/4 v9, 0x5

    invoke-virtual {p0, v9}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto/16 :goto_0
.end method

.method public declared-synchronized setBluetoothTransferId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, -0x1

    .line 317
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    if-ne v0, v1, :cond_0

    if-eq p1, v1, :cond_0

    .line 318
    iput p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    .line 319
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/android/nfc/beam/BeamTransferManager;->sendBluetoothCancelIntentAndUpdateState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :cond_0
    monitor-exit p0

    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setObjectCount(I)V
    .locals 0
    .param p1, "objectCount"    # I

    .prologue
    .line 372
    iput p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    .line 373
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    .line 287
    const-string v0, "BeamTransferManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BeamTransferManager start and mIncoming is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-nez v0, :cond_0

    .line 290
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mDataLinkType:I

    sget v1, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-ne v0, v1, :cond_0

    .line 291
    const-string v0, "BeamTransferManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothOppHandover start mRemoteDevice, mUris, mRemoteActivating:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteActivating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v0, Lcom/android/nfc/beam/BluetoothOppHandover;

    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteActivating:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/nfc/beam/BluetoothOppHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/util/ArrayList;Z)V

    invoke-virtual {v0}, Lcom/android/nfc/beam/BluetoothOppHandover;->start()V

    goto :goto_0
.end method

.method public updateFileProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    iput p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    .line 308
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 313
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_0
.end method

.method public updateNotification()V
    .locals 18

    .prologue
    .line 429
    new-instance v5, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 430
    .local v5, "notBuilder":Landroid/app/Notification$Builder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1060059

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 432
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v5, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 433
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 435
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v14, :cond_5

    .line 436
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v15, 0x7f080003

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, "beamString":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_b

    .line 442
    :cond_0
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 443
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v14, :cond_6

    const v14, 0x1080081

    :goto_1
    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 445
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 446
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 448
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v14, :cond_1

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/beam/BeamTransferManager;->buildDialogShowIntent()Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 451
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v14, :cond_8

    .line 452
    sget-wide v6, Lcom/android/nfc/handover/TransmitClient;->mCurrLen:J

    .line 453
    .local v6, "mc":J
    sget-wide v8, Lcom/android/nfc/handover/TransmitClient;->fileLength:J

    .line 454
    .local v8, "mt":J
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-lez v14, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-eqz v14, :cond_7

    .line 455
    const-wide/16 v14, 0x64

    mul-long/2addr v14, v6

    div-long/2addr v14, v8

    long-to-int v10, v14

    .line 456
    .local v10, "progress":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .local v12, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 458
    const/16 v14, 0x25

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 460
    const/16 v14, 0x64

    const-wide/16 v16, 0x64

    mul-long v16, v16, v6

    div-long v16, v16, v8

    move-wide/from16 v0, v16

    long-to-int v15, v0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v14, v15, v0}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 509
    .end local v6    # "mc":J
    .end local v8    # "mt":J
    .end local v10    # "progress":I
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v15, 0x3

    if-le v14, v15, :cond_3

    .line 510
    new-instance v4, Landroid/content/Intent;

    const-string v14, "com.android.nfc.handover.action.HANDOVER_TRANSFER_FINISH_DAILOG"

    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const-string v15, "com.android.nfc.permission.ACCESS_INTERFACE"

    invoke-virtual {v14, v4, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 517
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    move/from16 v16, v0

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v17

    invoke-virtual/range {v14 .. v17}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 518
    :cond_4
    return-void

    .line 438
    .end local v2    # "beamString":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v15, 0x7f080004

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "beamString":Ljava/lang/String;
    goto/16 :goto_0

    .line 443
    :cond_6
    const v14, 0x1080088

    goto/16 :goto_1

    .line 462
    .restart local v6    # "mc":J
    .restart local v8    # "mt":J
    :cond_7
    const-string v14, "0%"

    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 463
    const/16 v14, 0x64

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v14, v15, v0}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_2

    .line 466
    .end local v6    # "mc":J
    .end local v8    # "mt":J
    :cond_8
    const/4 v10, 0x0

    .line 467
    .local v10, "progress":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    if-lez v14, :cond_9

    .line 468
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    int-to-float v15, v15

    div-float v11, v14, v15

    .line 469
    .local v11, "progressUnit":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    int-to-float v14, v14

    mul-float/2addr v14, v11

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    mul-float/2addr v15, v11

    add-float v10, v14, v15

    .line 471
    .end local v11    # "progressUnit":F
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    if-lez v14, :cond_a

    const/4 v14, 0x0

    cmpl-float v14, v10, v14

    if-lez v14, :cond_a

    .line 472
    const/16 v14, 0x64

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float/2addr v15, v10

    float-to-int v15, v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v14, v15, v0}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto/16 :goto_2

    .line 474
    :cond_a
    const/16 v14, 0x64

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v14, v15, v0}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto/16 :goto_2

    .line 478
    .end local v10    # "progress":F
    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v15, 0x5

    if-ne v14, v15, :cond_d

    .line 479
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 480
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v14, :cond_c

    const v14, 0x1080082

    :goto_3
    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 482
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v15, 0x7f080005

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 483
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v15, 0x7f080005

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 485
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v14, :cond_2

    .line 486
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v15, 0x7f080009

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/beam/BeamTransferManager;->buildViewIntent()Landroid/content/Intent;

    move-result-object v13

    .line 488
    .local v13, "viewIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v15, v13, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 491
    .local v3, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_2

    .line 480
    .end local v3    # "contentIntent":Landroid/app/PendingIntent;
    .end local v13    # "viewIntent":Landroid/content/Intent;
    :cond_c
    const v14, 0x1080089

    goto :goto_3

    .line 493
    :cond_d
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_f

    .line 494
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 495
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v14, :cond_e

    const v14, 0x1080082

    :goto_4
    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 497
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v15, 0x7f080006

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 498
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v15, 0x7f080006

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_2

    .line 495
    :cond_e
    const v14, 0x1080089

    goto :goto_4

    .line 499
    :cond_f
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v15, 0x6

    if-eq v14, v15, :cond_10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v15, 0x7

    if-ne v14, v15, :cond_4

    .line 500
    :cond_10
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 501
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v14, :cond_11

    const v14, 0x1080082

    :goto_5
    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 503
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v15, 0x7f080007

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 504
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v15, 0x7f080007

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_2

    .line 501
    :cond_11
    const v14, 0x1080089

    goto :goto_5
.end method

.method updateStateAndNotification(I)V
    .locals 5
    .param p1, "newState"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x1

    .line 521
    iput p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    .line 524
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 525
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 531
    :cond_0
    invoke-direct {p0}, Lcom/android/nfc/beam/BeamTransferManager;->setTransferInfo()V

    .line 532
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->updateNotification()V

    .line 534
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    :cond_1
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCalledBack:Z

    if-nez v0, :cond_4

    .line 536
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIsHwBeam:Z

    if-eqz v0, :cond_2

    .line 537
    const-string v0, "BeamTransferManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;

    if-eqz v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->resetHandoverTimer()V

    .line 540
    const-string v0, "BeamTransferManager"

    const-string v2, "RESET POWER MANAGER "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_2
    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCalledBack:Z

    .line 545
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCallback:Lcom/android/nfc/beam/BeamTransferManager$Callback;

    if-eqz v0, :cond_3

    .line 546
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCallback:Lcom/android/nfc/beam/BeamTransferManager$Callback;

    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-ne v0, v4, :cond_5

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIsHwBeam:Z

    invoke-interface {v2, p0, v0, v3}, Lcom/android/nfc/beam/BeamTransferManager$Callback;->onTransferComplete(Lcom/android/nfc/beam/BeamTransferManager;ZZ)V

    .line 548
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    iget v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-ne v2, v4, :cond_6

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setTransferResult(I)V

    .line 550
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v0, :cond_4

    .line 552
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/nfc/transferhistory/DataBaseUtils;->insertHistoryIntoDB(Lcom/android/nfc/transferhistory/NfcTransferInfo;Landroid/content/Context;)V

    .line 556
    :cond_4
    return-void

    .line 546
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 548
    :cond_6
    const/4 v1, 0x2

    goto :goto_1
.end method

.method whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 274
    sget-object v1, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BeamTransferManager"

    const-string v2, "Whitelisting BluetoothDevice for BT OPP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.WHITELIST_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 277
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 278
    return-void
.end method

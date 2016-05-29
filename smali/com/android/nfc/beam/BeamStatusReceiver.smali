.class public Lcom/android/nfc/beam/BeamStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BeamStatusReceiver.java"


# static fields
.field public static final ACTION_CANCEL_HANDOVER_TRANSFER:Ljava/lang/String; = "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

.field private static final ACTION_HANDOVER_STARTED:Ljava/lang/String; = "android.nfc.handover.intent.action.HANDOVER_STARTED"

.field private static final ACTION_STOP_BLUETOOTH_TRANSFER:Ljava/lang/String; = "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

.field private static final ACTION_TRANSFER_DONE:Ljava/lang/String; = "android.nfc.handover.intent.action.TRANSFER_DONE"

.field private static final ACTION_TRANSFER_PROGRESS:Ljava/lang/String; = "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

.field public static final BEAM_STATUS_PERMISSION:Ljava/lang/String; = "android.permission.NFC_HANDOVER_STATUS"

.field private static final DBG:Z = true

.field public static final DIRECTION_INCOMING:I = 0x0

.field public static final DIRECTION_OUTGOING:I = 0x1

.field public static final EXTRA_ADDRESS:Ljava/lang/String; = "android.nfc.handover.intent.extra.ADDRESS"

.field public static final EXTRA_BEAM_BUNDLE_TRANSFER:Ljava/lang/String; = "transfer"

.field public static final EXTRA_BEAM_IS_HWBEAM:Ljava/lang/String; = "isHwBeam"

.field public static final EXTRA_DEVICE_NAME:Ljava/lang/String; = "com.android.nfc.handover.extra.transferinfo.devicename"

.field public static final EXTRA_FILE_NAME:Ljava/lang/String; = "com.android.nfc.handover.extra.transferinfo.filename"

.field public static final EXTRA_FILE_SIZE:Ljava/lang/String; = "com.android.nfc.handover.extra.transferinfo.filesize"

.field private static final EXTRA_HANDOVER_DATA_LINK_TYPE:Ljava/lang/String; = "android.nfc.handover.intent.extra.HANDOVER_DATA_LINK_TYPE"

.field public static final EXTRA_INCOMING:Ljava/lang/String; = "com.android.nfc.handover.extra.INCOMING"

.field public static final EXTRA_NOTIFY_ID:Ljava/lang/String; = "com.android.nfc.handover.extra.transferinfo.notifyId"

.field private static final EXTRA_OBJECT_COUNT:Ljava/lang/String; = "android.nfc.handover.intent.extra.OBJECT_COUNT"

.field public static final EXTRA_SOURCE_ADDRESS:Ljava/lang/String; = "com.android.nfc.handover.extra.SOURCE_ADDRESS"

.field public static final EXTRA_TRANSFER_ID:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_ID"

.field private static final EXTRA_TRANSFER_MIMETYPE:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_MIME_TYPE"

.field private static final EXTRA_TRANSFER_PROGRESS:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_PROGRESS"

.field private static final EXTRA_TRANSFER_STATUS:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_STATUS"

.field private static final EXTRA_TRANSFER_URI:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_URI"

.field public static final HANDOVER_TRANSFER_STATUS_FAILURE:I = 0x1

.field public static final HANDOVER_TRANSFER_STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BeamStatusReceiver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPreviousAction:Ljava/lang/String;

.field private final mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transferManager"    # Lcom/android/nfc/beam/BeamTransferManager;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mPreviousAction:Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    .line 116
    return-void
.end method

.method private handleTransferEvent(Landroid/content/Intent;I)V
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "deviceType"    # I

    .prologue
    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "action":Ljava/lang/String;
    const-string v20, "android.nfc.handover.intent.extra.TRANSFER_ID"

    const/16 v21, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 210
    .local v9, "id":I
    const-string v20, "android.nfc.handover.intent.extra.ADDRESS"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 212
    .local v15, "sourceAddress":Ljava/lang/String;
    if-nez v15, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 216
    .local v4, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v4, v15}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v13

    .line 217
    .local v13, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    .line 219
    .local v14, "remoteName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 222
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v9, v0, :cond_0

    .line 223
    const/16 v20, 0x1

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 224
    const-string v20, "BeamStatusReceiver"

    const-string v21, "Didn\'t find transfer, stopping"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v5, Landroid/content/Intent;

    const-string v20, "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v5, "cancelIntent":Landroid/content/Intent;
    const-string v20, "android.nfc.handover.intent.extra.TRANSFER_ID"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 233
    .end local v5    # "cancelIntent":Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/android/nfc/beam/BeamTransferManager;->setBluetoothTransferId(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFileName()Ljava/lang/String;

    move-result-object v11

    .line 237
    .local v11, "name":Ljava/lang/String;
    if-eqz v11, :cond_3

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 238
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v9}, Lcom/android/nfc/transferhistory/DataBaseUtils;->getFileNameFromBtopp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFileName(Ljava/lang/String;)V

    .line 241
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFriendlyName(Ljava/lang/String;)V

    .line 242
    const-string v20, "android.nfc.handover.intent.extra.TRANSFER_URI"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 244
    .local v19, "uris":Ljava/lang/String;
    if-eqz v19, :cond_5

    .line 245
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 246
    .local v18, "urii":Landroid/net/Uri;
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v7, "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    move-object/from16 v20, v0

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFileName(Ljava/lang/String;)V

    .line 252
    .end local v7    # "file":Ljava/io/File;
    .end local v18    # "urii":Landroid/net/Uri;
    :cond_5
    const-string v20, "android.nfc.handover.intent.action.TRANSFER_DONE"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 253
    const-string v20, "android.nfc.handover.intent.extra.TRANSFER_STATUS"

    const/16 v21, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 255
    .local v8, "handoverStatus":I
    if-nez v8, :cond_7

    .line 256
    const-string v20, "android.nfc.handover.intent.extra.TRANSFER_URI"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 257
    .local v17, "uriString":Ljava/lang/String;
    const-string v20, "android.nfc.handover.intent.extra.TRANSFER_MIME_TYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 258
    .local v10, "mimeType":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 259
    .local v16, "uri":Landroid/net/Uri;
    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_6

    .line 260
    new-instance v20, Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    .line 262
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2, v10}, Lcom/android/nfc/beam/BeamTransferManager;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v16    # "uri":Landroid/net/Uri;
    .end local v17    # "uriString":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Lcom/android/nfc/beam/BeamTransferManager;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    .end local v8    # "handoverStatus":I
    :cond_8
    const-string v20, "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 267
    const-string v20, "android.nfc.handover.intent.extra.TRANSFER_PROGRESS"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v12

    .line 268
    .local v12, "progress":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/nfc/beam/BeamTransferManager;->updateFileProgress(F)V

    goto/16 :goto_0

    .line 269
    .end local v12    # "progress":F
    :cond_9
    const-string v20, "android.nfc.handover.intent.action.HANDOVER_STARTED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 270
    const-string v20, "android.nfc.handover.intent.extra.OBJECT_COUNT"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 271
    .local v6, "count":I
    if-lez v6, :cond_0

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/android/nfc/beam/BeamTransferManager;->setObjectCount(I)V

    goto/16 :goto_0
.end method

.method private isSender()Z
    .locals 5

    .prologue
    .line 200
    iget-object v2, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mContext:Landroid/content/Context;

    const-string v3, "MyPrefsFile"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 201
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v2, "isSender"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 202
    .local v0, "isSender":Z
    return v0
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 3

    .prologue
    .line 184
    const-string v1, "BeamStatusReceiver"

    const-string v2, "getIntentFilter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.handover.intent.action.TRANSFER_DONE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v1, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v1, "android.nfc.handover.intent.action.HANDOVER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v1, "ACTION_FAST_CONNECTION_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v1, "ACTION_FAST_CONNECTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v1, "com.android.nfc.handover.action.ACTION_NOT_ENOUGH_FREE_SPACE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.nfc.handover.intent.extra.HANDOVER_DATA_LINK_TYPE"

    const/4 v6, 0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 124
    .local v1, "dataLinkType":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "androidhwext:style/Theme.Emui"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 125
    .local v4, "themeID":I
    invoke-virtual {p1, v4}, Landroid/content/Context;->setTheme(I)V

    .line 127
    const-string v5, "mode"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 128
    .local v2, "mode":I
    const-string v5, "BeamStatusReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mFastConReceiver mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v5, "BeamStatusReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v5, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 132
    iget-object v5, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    if-eqz v5, :cond_0

    .line 133
    iget-object v5, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v5}, Lcom/android/nfc/beam/BeamTransferManager;->cancel()V

    .line 134
    iget-object v5, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    iget-object v5, v5, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFailedReason(I)V

    .line 179
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mPreviousAction:Ljava/lang/String;

    .line 181
    return-void

    .line 136
    :cond_1
    const-string v5, "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.nfc.handover.intent.action.TRANSFER_DONE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.nfc.handover.intent.action.HANDOVER_STARTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 139
    :cond_2
    invoke-direct {p0, p2, v1}, Lcom/android/nfc/beam/BeamStatusReceiver;->handleTransferEvent(Landroid/content/Intent;I)V

    goto :goto_0

    .line 140
    :cond_3
    const-string v5, "ACTION_FAST_CONNECTION_SUCCESS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 142
    iget-object v5, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mPreviousAction:Ljava/lang/String;

    const-string v6, "ACTION_FAST_CONNECTION_SUCCESS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 146
    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    .line 147
    const v5, 0x7f080045

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 148
    :cond_4
    const/4 v5, 0x3

    if-ne v2, v5, :cond_5

    .line 149
    invoke-direct {p0}, Lcom/android/nfc/beam/BeamStatusReceiver;->isSender()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 150
    const v5, 0x7f080046

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 152
    :cond_5
    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    .line 153
    const v5, 0x7f080048

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 156
    :cond_6
    const-string v5, "ACTION_FAST_CONNECTION_FAILED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 158
    iget-object v5, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mPreviousAction:Ljava/lang/String;

    const-string v6, "ACTION_FAST_CONNECTION_FAILED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 172
    :cond_7
    :goto_1
    const-string v5, "reason"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 173
    .local v3, "reason":I
    const-string v5, "BeamStatusReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mFastConReceiver reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 162
    .end local v3    # "reason":I
    :cond_8
    const/4 v5, 0x1

    if-ne v2, v5, :cond_9

    .line 163
    const v5, 0x7f080047

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 164
    :cond_9
    const/4 v5, 0x3

    if-ne v2, v5, :cond_a

    .line 165
    invoke-direct {p0}, Lcom/android/nfc/beam/BeamStatusReceiver;->isSender()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 166
    const v5, 0x7f080047

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 168
    :cond_a
    const/4 v5, 0x2

    if-ne v2, v5, :cond_7

    .line 169
    const v5, 0x7f080049

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 174
    :cond_b
    const-string v5, "com.android.nfc.handover.action.ACTION_NOT_ENOUGH_FREE_SPACE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 175
    const v5, 0x7f080033

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

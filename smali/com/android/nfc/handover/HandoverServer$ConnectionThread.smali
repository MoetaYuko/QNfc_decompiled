.class Lcom/android/nfc/handover/HandoverServer$ConnectionThread;
.super Ljava/lang/Thread;
.source "HandoverServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private final mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final synthetic this$0:Lcom/android/nfc/handover/HandoverServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/HandoverServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V
    .locals 1
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    .line 172
    const-string v0, "HandoverServer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 173
    iput-object p2, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 174
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 178
    sget-object v17, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "HandoverServer"

    const-string v18, "starting connection thread"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 183
    .local v4, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 184
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v14, v0, Lcom/android/nfc/handover/HandoverServer;->mServerRunning:Z

    .line 185
    .local v14, "running":Z
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getLocalMiu()I

    move-result v17

    move/from16 v0, v17

    new-array v12, v0, [B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 189
    .local v12, "partial":[B
    const/4 v8, 0x0

    .local v8, "handoverRequestMsg":Landroid/nfc/NdefMessage;
    move-object v9, v8

    .end local v8    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .local v9, "handoverRequestMsg":Landroid/nfc/NdefMessage;
    move-object v5, v4

    .line 190
    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .local v5, "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    if-eqz v14, :cond_e

    .line 191
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v15

    .line 192
    .local v15, "size":I
    if-gez v15, :cond_6

    move-object v8, v9

    .line 258
    .end local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v15    # "size":I
    .restart local v8    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    :cond_1
    :goto_1
    :try_start_4
    sget-object v17, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "HandoverServer"

    const-string v18, "about to close"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 264
    :goto_2
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v4, v5

    .line 269
    .end local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v12    # "partial":[B
    .end local v14    # "running":Z
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_3
    sget-object v17, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_3

    const-string v17, "HandoverServer"

    const-string v18, "finished connection thread"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_3
    return-void

    .line 185
    :catchall_0
    move-exception v17

    :try_start_6
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v17
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 254
    :catch_0
    move-exception v6

    .line 255
    .local v6, "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    sget-object v17, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_4

    const-string v17, "HandoverServer"

    const-string v18, "IOException"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 258
    :cond_4
    :try_start_9
    sget-object v17, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_5

    const-string v17, "HandoverServer"

    const-string v18, "about to close"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 264
    :goto_5
    :try_start_a
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3

    .line 265
    :catch_1
    move-exception v17

    goto :goto_3

    .line 195
    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v12    # "partial":[B
    .restart local v14    # "running":Z
    .restart local v15    # "size":I
    :cond_6
    const/16 v17, 0x0

    :try_start_b
    move/from16 v0, v17

    invoke-virtual {v5, v12, v0, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 198
    :try_start_c
    new-instance v8, Landroid/nfc/NdefMessage;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_c
    .catch Landroid/nfc/FormatException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 203
    .end local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v8    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    :goto_6
    if-eqz v8, :cond_d

    .line 204
    :try_start_d
    invoke-static {}, Lcom/android/nfc/beam/BeamManager;->getInstance()Lcom/android/nfc/beam/BeamManager;

    move-result-object v2

    .line 206
    .local v2, "beamManager":Lcom/android/nfc/beam/BeamManager;
    invoke-virtual {v2}, Lcom/android/nfc/beam/BeamManager;->isBeamInProgress()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer;->mCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/nfc/handover/HandoverServer$Callback;->onHandoverBusy()V

    goto/16 :goto_1

    .line 254
    .end local v2    # "beamManager":Lcom/android/nfc/beam/BeamManager;
    .end local v8    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v15    # "size":I
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 199
    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v15    # "size":I
    :catch_3
    move-exception v17

    move-object v8, v9

    .end local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v8    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    goto :goto_6

    .line 212
    .restart local v2    # "beamManager":Lcom/android/nfc/beam/BeamManager;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/nfc/handover/HandoverDataParser;->getIncomingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;

    move-result-object v7

    .line 214
    .local v7, "handoverData":Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    if-nez v7, :cond_9

    .line 215
    const-string v17, "HandoverServer"

    const-string v18, "Failed to create handover response"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_1

    .line 257
    .end local v2    # "beamManager":Lcom/android/nfc/beam/BeamManager;
    .end local v7    # "handoverData":Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    .end local v8    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v15    # "size":I
    :catchall_1
    move-exception v17

    move-object v4, v5

    .line 258
    .end local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "partial":[B
    .end local v14    # "running":Z
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_7
    :try_start_e
    sget-object v18, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_8

    const-string v18, "HandoverServer"

    const-string v19, "about to close"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 264
    :goto_8
    :try_start_f
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 267
    :goto_9
    throw v17

    .line 221
    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "beamManager":Lcom/android/nfc/beam/BeamManager;
    .restart local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "handoverData":Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    .restart local v8    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v12    # "partial":[B
    .restart local v14    # "running":Z
    .restart local v15    # "size":I
    :cond_9
    const/4 v11, 0x0

    .line 222
    .local v11, "offset":I
    :try_start_10
    iget-object v0, v7, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;->handoverSelect:Landroid/nfc/NdefMessage;

    move-object/from16 v17, v0

    if-nez v17, :cond_a

    .line 223
    sget-object v17, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v17, "HandoverServer"

    const-string v18, "handoverSelect is a null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 227
    :cond_a
    iget-object v0, v7, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;->handoverSelect:Landroid/nfc/NdefMessage;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v3

    .line 228
    .local v3, "buffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v13

    .line 229
    .local v13, "remoteMiu":I
    :goto_a
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_b

    .line 230
    array-length v0, v3

    move/from16 v17, v0

    sub-int v17, v17, v11

    move/from16 v0, v17

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 231
    .local v10, "length":I
    add-int v17, v11, v10

    move/from16 v0, v17

    invoke-static {v3, v11, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v16

    .line 232
    .local v16, "tmpBuffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 233
    add-int/2addr v11, v10

    .line 234
    goto :goto_a

    .line 236
    .end local v10    # "length":I
    .end local v16    # "tmpBuffer":[B
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer;->mCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/nfc/handover/HandoverServer$Callback;->onHandoverRequestReceived()V

    .line 238
    iget-object v0, v7, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;->handoverData:Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v17, v0

    # getter for: Lcom/android/nfc/handover/HandoverServer;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/nfc/handover/HandoverServer;->access$100(Lcom/android/nfc/handover/HandoverServer;)Landroid/content/Context;

    move-result-object v17

    iget-object v0, v7, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;->handoverData:Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/nfc/beam/BeamManager;->startBeamReceive(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer;->mCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/nfc/handover/HandoverServer$Callback;->onHandoverBusy()V

    goto/16 :goto_1

    .line 246
    :cond_c
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 249
    .end local v2    # "beamManager":Lcom/android/nfc/beam/BeamManager;
    .end local v3    # "buffer":[B
    .end local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "handoverData":Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    .end local v11    # "offset":I
    .end local v13    # "remoteMiu":I
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_b
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 250
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v14, v0, Lcom/android/nfc/handover/HandoverServer;->mServerRunning:Z

    .line 251
    monitor-exit v18

    move-object v9, v8

    .end local v8    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    move-object v5, v4

    .line 252
    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_0

    .line 251
    .end local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    :catchall_2
    move-exception v17

    monitor-exit v18
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    throw v17
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 257
    .end local v8    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v12    # "partial":[B
    .end local v14    # "running":Z
    .end local v15    # "size":I
    :catchall_3
    move-exception v17

    goto/16 :goto_7

    .line 265
    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v12    # "partial":[B
    .restart local v14    # "running":Z
    :catch_4
    move-exception v17

    move-object v4, v5

    .line 268
    .end local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_3

    .line 265
    .end local v8    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v12    # "partial":[B
    .end local v14    # "running":Z
    :catch_5
    move-exception v18

    goto/16 :goto_9

    .line 260
    :catch_6
    move-exception v18

    goto/16 :goto_8

    .restart local v6    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v17

    goto/16 :goto_5

    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v12    # "partial":[B
    .restart local v14    # "running":Z
    :catch_8
    move-exception v17

    goto/16 :goto_2

    .restart local v15    # "size":I
    :cond_d
    move-object v4, v5

    .end local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_b

    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v15    # "size":I
    .restart local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    :cond_e
    move-object v8, v9

    .end local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v8    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    goto/16 :goto_1
.end method

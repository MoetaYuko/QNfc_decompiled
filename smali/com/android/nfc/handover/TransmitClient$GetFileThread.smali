.class Lcom/android/nfc/handover/TransmitClient$GetFileThread;
.super Landroid/os/AsyncTask;
.source "TransmitClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/TransmitClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetFileThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/TransmitClient$GetFileThread$UpdateFileProgressTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private configInfo:Lcom/android/nfc/handover/ConfigInfo;

.field private fileNum:I

.field private ip:Ljava/lang/String;

.field private isSendProgress:Z

.field private mTimer:Ljava/util/Timer;

.field private progress:Landroid/content/Intent;

.field private receiveFileNum:I

.field final synthetic this$0:Lcom/android/nfc/handover/TransmitClient;


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/TransmitClient;Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;)V
    .locals 3
    .param p2, "configinfo"    # Lcom/android/nfc/handover/ConfigInfo;
    .param p3, "iPAddress"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 170
    iput-object p1, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 164
    iput v2, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->receiveFileNum:I

    .line 172
    iput-object p3, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->ip:Ljava/lang/String;

    .line 173
    iput v2, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->fileNum:I

    .line 174
    iput-object p2, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    .line 175
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->mTimer:Ljava/util/Timer;

    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->progress:Landroid/content/Intent;

    .line 177
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->progress:Landroid/content/Intent;

    const-string v1, "com.android.nfc.handover.action.HANDOVER_TRANSFER_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iput-boolean v2, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->isSendProgress:Z

    .line 179
    # setter for: Lcom/android/nfc/handover/TransmitClient;->isCancelFile:Z
    invoke-static {p1, v2}, Lcom/android/nfc/handover/TransmitClient;->access$002(Lcom/android/nfc/handover/TransmitClient;Z)Z

    .line 180
    return-void
.end method

.method private cancelTimer()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 495
    const-string v0, "TransmitClient"

    const-string v1, "mTimer is cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    return-void
.end method

.method private deleteRedundance(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 250
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    const-string v1, "TransmitClient"

    const-string v2, "delete faild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "ee":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private downloadByHttp(Landroid/net/Uri;Lcom/android/nfc/handover/FileInfo;)Ljava/io/File;
    .locals 22
    .param p1, "mSourceURI"    # Landroid/net/Uri;
    .param p2, "file"    # Lcom/android/nfc/handover/FileInfo;

    .prologue
    .line 264
    const-string v16, "TransmitClient"

    const-string v17, "downloadByHttp is begin"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v4, 0x0

    .line 266
    .local v4, "conn":Ljava/net/HttpURLConnection;
    const/4 v9, 0x0

    .line 267
    .local v9, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 268
    .local v2, "bufInputStream":Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    .line 269
    .local v7, "fileOutputStream":Ljava/io/FileOutputStream;
    const-wide/16 v16, 0x0

    sput-wide v16, Lcom/android/nfc/handover/TransmitClient;->fileLength:J

    .line 270
    const/4 v13, 0x0

    .line 273
    .local v13, "targetFile":Ljava/io/File;
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Llibcore/net/NetworkSecurityPolicy;->setCleartextTrafficPermitted(Z)V

    .line 274
    const-string v16, "TransmitClient"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "downloadByHttp / Set setCleartextTrafficPermitted = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " for okhttp ConnectionSpec to CLEARTEXT"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :try_start_0
    new-instance v15, Ljava/net/URL;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 278
    .local v15, "url":Ljava/net/URL;
    sget-object v16, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual/range {v15 .. v16}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 279
    const/16 v16, 0x1388

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 280
    const/16 v16, 0x7530

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 281
    const-string v16, "Connection"

    const-string v17, "Close"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->isConnection(Ljava/net/HttpURLConnection;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 284
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->reConnect(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 287
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/nfc/handover/TransmitClient;->isConnected:Z

    move/from16 v16, v0

    if-nez v16, :cond_5

    .line 289
    const-string v16, "TransmitClient"

    const-string v17, "is not Connect server, stop receive files"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_25
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    const/16 v16, 0x0

    .line 373
    if-eqz v2, :cond_1

    .line 375
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 382
    :cond_1
    :goto_0
    if-eqz v9, :cond_2

    .line 384
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 390
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 392
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 398
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 399
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 404
    .end local v15    # "url":Ljava/net/URL;
    :cond_4
    :goto_3
    return-object v16

    .line 376
    .restart local v15    # "url":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 378
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 385
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 386
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 393
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 394
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 293
    .end local v5    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_4
    const-string v16, "TransmitClient"

    const-string v17, "receive file is start"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_25
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 294
    if-eqz v4, :cond_f

    .line 296
    :try_start_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_25
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v9

    .line 303
    :try_start_6
    const-string v16, "Content-Length"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 304
    .local v10, "len":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sput-wide v16, Lcom/android/nfc/handover/TransmitClient;->fileLength:J
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_25
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 307
    const/4 v12, 0x0

    .line 309
    .local v12, "stat":Landroid/os/StatFs;
    :try_start_7
    new-instance v12, Landroid/os/StatFs;

    .end local v12    # "stat":Landroid/os/StatFs;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_25
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 314
    .restart local v12    # "stat":Landroid/os/StatFs;
    :try_start_8
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSize()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual {v12}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x4

    sub-long v18, v18, v20

    mul-long v16, v16, v18

    sget-wide v18, Lcom/android/nfc/handover/TransmitClient;->fileLength:J

    cmp-long v16, v16, v18

    if-gez v16, :cond_f

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    move-object/from16 v16, v0

    # getter for: Lcom/android/nfc/handover/TransmitClient;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/android/nfc/handover/TransmitClient;->access$200(Lcom/android/nfc/handover/TransmitClient;)Landroid/content/Context;

    move-result-object v16

    new-instance v17, Landroid/content/Intent;

    const-string v18, "com.android.nfc.handover.action.ACTION_NOT_ENOUGH_FREE_SPACE"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v18, "com.android.nfc.permission.ACCESS_INTERFACE"

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 318
    const-string v16, "TransmitClient"

    const-string v17, "Receive File aborted - not enough free space"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_25
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 319
    const/16 v16, 0x0

    .line 373
    if-eqz v2, :cond_6

    .line 375
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    .line 382
    :cond_6
    :goto_4
    if-eqz v9, :cond_7

    .line 384
    :try_start_a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    .line 390
    :cond_7
    :goto_5
    if-eqz v7, :cond_8

    .line 392
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    .line 398
    :cond_8
    :goto_6
    if-eqz v4, :cond_4

    .line 399
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    .line 297
    .end local v10    # "len":Ljava/lang/String;
    .end local v12    # "stat":Landroid/os/StatFs;
    :catch_3
    move-exception v5

    .line 298
    .local v5, "e":Ljava/lang/NumberFormatException;
    :try_start_c
    const-string v16, "TransmitClient"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "NumberFormatException e ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_25
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 299
    const/16 v16, 0x0

    .line 373
    if-eqz v2, :cond_9

    .line 375
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 382
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    :goto_7
    if-eqz v9, :cond_a

    .line 384
    :try_start_e
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 390
    :cond_a
    :goto_8
    if-eqz v7, :cond_b

    .line 392
    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    .line 398
    :cond_b
    :goto_9
    if-eqz v4, :cond_4

    .line 399
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    .line 376
    .restart local v5    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v5

    .line 378
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 385
    .end local v5    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 386
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 393
    .end local v5    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 394
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 310
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v10    # "len":Ljava/lang/String;
    :catch_7
    move-exception v5

    .line 311
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :try_start_10
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_25
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 312
    const/16 v16, 0x0

    .line 373
    if-eqz v2, :cond_c

    .line 375
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    .line 382
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :cond_c
    :goto_a
    if-eqz v9, :cond_d

    .line 384
    :try_start_12
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    .line 390
    :cond_d
    :goto_b
    if-eqz v7, :cond_e

    .line 392
    :try_start_13
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    .line 398
    :cond_e
    :goto_c
    if-eqz v4, :cond_4

    .line 399
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    .line 376
    .restart local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v5

    .line 378
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 385
    .end local v5    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v5

    .line 386
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 393
    .end local v5    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v5

    .line 394
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 376
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v12    # "stat":Landroid/os/StatFs;
    :catch_b
    move-exception v5

    .line 378
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 385
    .end local v5    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v5

    .line 386
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 393
    .end local v5    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v5

    .line 394
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 325
    .end local v5    # "e":Ljava/io/IOException;
    .end local v10    # "len":Ljava/lang/String;
    .end local v12    # "stat":Landroid/os/StatFs;
    :cond_f
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    move-object/from16 v16, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/nfc/handover/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v17

    # invokes: Lcom/android/nfc/handover/TransmitClient;->generateUniqueFile(Ljava/lang/String;)Ljava/io/File;
    invoke-static/range {v16 .. v17}, Lcom/android/nfc/handover/TransmitClient;->access$300(Lcom/android/nfc/handover/TransmitClient;Ljava/lang/String;)Ljava/io/File;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_25
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result-object v13

    .line 327
    if-nez v13, :cond_13

    .line 328
    const/16 v16, 0x0

    .line 373
    if-eqz v2, :cond_10

    .line 375
    :try_start_15
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    .line 382
    :cond_10
    :goto_d
    if-eqz v9, :cond_11

    .line 384
    :try_start_16
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_f

    .line 390
    :cond_11
    :goto_e
    if-eqz v7, :cond_12

    .line 392
    :try_start_17
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_10

    .line 398
    :cond_12
    :goto_f
    if-eqz v4, :cond_4

    .line 399
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    .line 376
    :catch_e
    move-exception v5

    .line 378
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 385
    .end local v5    # "e":Ljava/io/IOException;
    :catch_f
    move-exception v5

    .line 386
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 393
    .end local v5    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v5

    .line 394
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 331
    .end local v5    # "e":Ljava/io/IOException;
    :cond_13
    :try_start_18
    const-string v16, "TransmitClient"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "downloadByHttp targetFile = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_25
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 333
    .end local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v8, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_19
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v16, 0x4000

    move/from16 v0, v16

    invoke-direct {v3, v9, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_26
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 334
    .end local v2    # "bufInputStream":Ljava/io/BufferedInputStream;
    .local v3, "bufInputStream":Ljava/io/BufferedInputStream;
    const/16 v16, 0x4000

    :try_start_1a
    move/from16 v0, v16

    new-array v14, v0, [B

    .line 335
    .local v14, "tmpBuf":[B
    const/4 v11, 0x0

    .line 336
    .local v11, "n":I
    const-wide/16 v16, 0x0

    sput-wide v16, Lcom/android/nfc/handover/TransmitClient;->mCurrLen:J

    .line 337
    :goto_10
    invoke-virtual {v3, v14}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v11

    if-ltz v11, :cond_1e

    .line 338
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->isSendProgress:Z

    move/from16 v16, v0

    if-eqz v16, :cond_14

    .line 339
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->sendFileProgressBroadcast()V

    .line 341
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    move-object/from16 v16, v0

    # getter for: Lcom/android/nfc/handover/TransmitClient;->isCancelFile:Z
    invoke-static/range {v16 .. v16}, Lcom/android/nfc/handover/TransmitClient;->access$000(Lcom/android/nfc/handover/TransmitClient;)Z

    move-result v16

    if-eqz v16, :cond_19

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    # setter for: Lcom/android/nfc/handover/TransmitClient;->isCancelFile:Z
    invoke-static/range {v16 .. v17}, Lcom/android/nfc/handover/TransmitClient;->access$002(Lcom/android/nfc/handover/TransmitClient;Z)Z

    .line 343
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->deleteRedundance(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_14
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 344
    const/16 v16, 0x0

    .line 373
    if-eqz v3, :cond_15

    .line 375
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_11

    .line 382
    :cond_15
    :goto_11
    if-eqz v9, :cond_16

    .line 384
    :try_start_1c
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_12

    .line 390
    :cond_16
    :goto_12
    if-eqz v8, :cond_17

    .line 392
    :try_start_1d
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_13

    .line 398
    :cond_17
    :goto_13
    if-eqz v4, :cond_18

    .line 399
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_18
    move-object v7, v8

    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufInputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_3

    .line 376
    .end local v2    # "bufInputStream":Ljava/io/BufferedInputStream;
    .end local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_11
    move-exception v5

    .line 378
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 385
    .end local v5    # "e":Ljava/io/IOException;
    :catch_12
    move-exception v5

    .line 386
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 393
    .end local v5    # "e":Ljava/io/IOException;
    :catch_13
    move-exception v5

    .line 394
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 346
    .end local v5    # "e":Ljava/io/IOException;
    :cond_19
    const/16 v16, 0x0

    :try_start_1e
    move/from16 v0, v16

    invoke-virtual {v8, v14, v0, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 347
    sget-wide v16, Lcom/android/nfc/handover/TransmitClient;->mCurrLen:J

    int-to-long v0, v11

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    sput-wide v16, Lcom/android/nfc/handover/TransmitClient;->mCurrLen:J
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_14
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    goto :goto_10

    .line 360
    .end local v11    # "n":I
    .end local v14    # "tmpBuf":[B
    :catch_14
    move-exception v5

    move-object v7, v8

    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 361
    .end local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    .end local v15    # "url":Ljava/net/URL;
    .restart local v2    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_14
    if-eqz v13, :cond_2c

    :try_start_1f
    invoke-virtual {v13}, Ljava/io/File;->exists()Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    move-result v16

    if-eqz v16, :cond_2c

    .line 363
    :try_start_20
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v16

    if-nez v16, :cond_1a

    .line 364
    const-string v16, "TransmitClient"

    const-string v17, "delete faild"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1b
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 369
    :cond_1a
    :goto_15
    const/16 v16, 0x0

    .line 373
    if-eqz v2, :cond_1b

    .line 375
    :try_start_21
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_1c

    .line 382
    :cond_1b
    :goto_16
    if-eqz v9, :cond_1c

    .line 384
    :try_start_22
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1d

    .line 390
    :cond_1c
    :goto_17
    if-eqz v7, :cond_1d

    .line 392
    :try_start_23
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1e

    .line 398
    :cond_1d
    :goto_18
    if-eqz v4, :cond_4

    .line 399
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    .line 350
    .end local v2    # "bufInputStream":Ljava/io/BufferedInputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "n":I
    .restart local v14    # "tmpBuf":[B
    .restart local v15    # "url":Ljava/net/URL;
    :cond_1e
    :try_start_24
    sget-wide v16, Lcom/android/nfc/handover/TransmitClient;->mCurrLen:J

    sget-wide v18, Lcom/android/nfc/handover/TransmitClient;->fileLength:J

    cmp-long v16, v16, v18

    if-nez v16, :cond_23

    .line 352
    const-string v16, "TransmitClient"

    const-string v17, "downloadByHttp receive file succee"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_14
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    .line 373
    if-eqz v3, :cond_1f

    .line 375
    :try_start_25
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_15

    .line 382
    :cond_1f
    :goto_19
    if-eqz v9, :cond_20

    .line 384
    :try_start_26
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_16

    .line 390
    :cond_20
    :goto_1a
    if-eqz v8, :cond_21

    .line 392
    :try_start_27
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_17

    .line 398
    :cond_21
    :goto_1b
    if-eqz v4, :cond_22

    .line 399
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_22
    move-object v7, v8

    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufInputStream":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v13

    goto/16 :goto_3

    .line 376
    .end local v2    # "bufInputStream":Ljava/io/BufferedInputStream;
    .end local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_15
    move-exception v5

    .line 378
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 385
    .end local v5    # "e":Ljava/io/IOException;
    :catch_16
    move-exception v5

    .line 386
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a

    .line 393
    .end local v5    # "e":Ljava/io/IOException;
    :catch_17
    move-exception v5

    .line 394
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    .line 356
    .end local v5    # "e":Ljava/io/IOException;
    :cond_23
    :try_start_28
    const-string v16, "TransmitClient"

    const-string v17, "downloadByHttp receive error"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->deleteRedundance(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_14
    .catchall {:try_start_28 .. :try_end_28} :catchall_2

    .line 358
    const/16 v16, 0x0

    .line 373
    if-eqz v3, :cond_24

    .line 375
    :try_start_29
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_18

    .line 382
    :cond_24
    :goto_1c
    if-eqz v9, :cond_25

    .line 384
    :try_start_2a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_19

    .line 390
    :cond_25
    :goto_1d
    if-eqz v8, :cond_26

    .line 392
    :try_start_2b
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_1a

    .line 398
    :cond_26
    :goto_1e
    if-eqz v4, :cond_27

    .line 399
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_27
    move-object v7, v8

    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufInputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_3

    .line 376
    .end local v2    # "bufInputStream":Ljava/io/BufferedInputStream;
    .end local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_18
    move-exception v5

    .line 378
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c

    .line 385
    .end local v5    # "e":Ljava/io/IOException;
    :catch_19
    move-exception v5

    .line 386
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    .line 393
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1a
    move-exception v5

    .line 394
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e

    .line 366
    .end local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v11    # "n":I
    .end local v14    # "tmpBuf":[B
    .end local v15    # "url":Ljava/net/URL;
    .restart local v2    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1b
    move-exception v6

    .line 367
    .local v6, "e1":Ljava/lang/Exception;
    :try_start_2c
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    goto/16 :goto_15

    .line 373
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e1":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    :goto_1f
    if-eqz v2, :cond_28

    .line 375
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_22

    .line 382
    :cond_28
    :goto_20
    if-eqz v9, :cond_29

    .line 384
    :try_start_2e
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_23

    .line 390
    :cond_29
    :goto_21
    if-eqz v7, :cond_2a

    .line 392
    :try_start_2f
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_24

    .line 398
    :cond_2a
    :goto_22
    if-eqz v4, :cond_2b

    .line 399
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2b
    throw v16

    .line 376
    .restart local v5    # "e":Ljava/io/IOException;
    :catch_1c
    move-exception v5

    .line 378
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_16

    .line 385
    :catch_1d
    move-exception v5

    .line 386
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_17

    .line 393
    :catch_1e
    move-exception v5

    .line 394
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_18

    .line 371
    :cond_2c
    :try_start_30
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    .line 373
    if-eqz v2, :cond_2d

    .line 375
    :try_start_31
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_1f

    .line 382
    :cond_2d
    :goto_23
    if-eqz v9, :cond_2e

    .line 384
    :try_start_32
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_20

    .line 390
    :cond_2e
    :goto_24
    if-eqz v7, :cond_2f

    .line 392
    :try_start_33
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_21

    .line 398
    :cond_2f
    :goto_25
    if-eqz v4, :cond_30

    .line 399
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 403
    :cond_30
    const-string v16, "TransmitClient"

    const-string v17, "downloadByHttp is end"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v13

    .line 404
    goto/16 :goto_3

    .line 376
    :catch_1f
    move-exception v5

    .line 378
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    .line 385
    :catch_20
    move-exception v5

    .line 386
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24

    .line 393
    :catch_21
    move-exception v5

    .line 394
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25

    .line 376
    .end local v5    # "e":Ljava/io/IOException;
    :catch_22
    move-exception v5

    .line 378
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20

    .line 385
    .end local v5    # "e":Ljava/io/IOException;
    :catch_23
    move-exception v5

    .line 386
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 393
    .end local v5    # "e":Ljava/io/IOException;
    :catch_24
    move-exception v5

    .line 394
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    .line 373
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v16

    move-object v7, v8

    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1f

    .end local v2    # "bufInputStream":Ljava/io/BufferedInputStream;
    .end local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v16

    move-object v7, v8

    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufInputStream":Ljava/io/BufferedInputStream;
    goto :goto_1f

    .line 360
    .end local v15    # "url":Ljava/net/URL;
    :catch_25
    move-exception v5

    goto/16 :goto_14

    .end local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "url":Ljava/net/URL;
    :catch_26
    move-exception v5

    move-object v7, v8

    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_14
.end method

.method private downloadFiles(Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;)Z
    .locals 15
    .param p1, "configinfo"    # Lcom/android/nfc/handover/ConfigInfo;
    .param p2, "iPAddress"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string v12, "TransmitClient"

    const-string v13, "downloadFiles is begin"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v9, 0x0

    .line 188
    .local v9, "mConfigFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 189
    .local v4, "fileinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/handover/ConfigInfo;->getmServerPort()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/handover/ConfigInfo;->getmFileInfo()Lcom/android/nfc/handover/FileInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/nfc/handover/FileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 191
    .local v1, "configUri":Landroid/net/Uri;
    const-string v12, "TransmitClient"

    const-string v13, "get configUri"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/handover/ConfigInfo;->getmFileInfo()Lcom/android/nfc/handover/FileInfo;

    move-result-object v12

    invoke-direct {p0, v1, v12}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->downloadByHttp(Landroid/net/Uri;Lcom/android/nfc/handover/FileInfo;)Ljava/io/File;

    move-result-object v9

    .line 195
    if-eqz v9, :cond_5

    .line 196
    const/4 v6, 0x0

    .line 198
    .local v6, "inStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local v6    # "inStream":Ljava/io/FileInputStream;
    .local v7, "inStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v7}, Lcom/android/nfc/handover/TransmitClient;->getFileInfoByXml(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v4

    .line 200
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v12

    if-gtz v12, :cond_2

    .line 201
    :cond_0
    const/4 v12, 0x0

    .line 209
    if-eqz v7, :cond_1

    .line 211
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 246
    .end local v7    # "inStream":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    return v12

    .line 212
    .restart local v7    # "inStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 214
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 203
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    iput v12, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->fileNum:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 209
    if-eqz v7, :cond_3

    .line 211
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 221
    :cond_3
    :goto_1
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->isSendProgress:Z

    .line 223
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/nfc/handover/FileInfo;

    .line 224
    .local v10, "mfileinfo":Lcom/android/nfc/handover/FileInfo;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x231c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lcom/android/nfc/handover/FileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 226
    .local v11, "uri":Landroid/net/Uri;
    const-string v12, "TransmitClient"

    const-string v13, "downloadFiles ,Uri "

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0, v11, v10}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->downloadByHttp(Landroid/net/Uri;Lcom/android/nfc/handover/FileInfo;)Ljava/io/File;

    move-result-object v3

    .line 229
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_6

    .line 230
    iget v12, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->receiveFileNum:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->receiveFileNum:I

    .line 232
    const-string v12, "TransmitClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "file.getAbsolutePath() == "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 234
    .local v8, "intent":Landroid/content/Intent;
    const-string v12, "com.android.nfc.handover.action.HANDOVER_TRANSFER_DONE"

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v12, "com.android.nfc.handover.extra.HANDOVER_TRANSFER_STATUS"

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    const-string v12, "com.android.nfc.handover.extra.HANDOVER_TRANSFER_URI"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object v12, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    # invokes: Lcom/android/nfc/handover/TransmitClient;->sendBroadcast(Landroid/content/Intent;)V
    invoke-static {v12, v8}, Lcom/android/nfc/handover/TransmitClient;->access$100(Lcom/android/nfc/handover/TransmitClient;Landroid/content/Intent;)V

    .line 242
    const-string v12, "TransmitClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "receiveFileNum = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->receiveFileNum:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 212
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "mfileinfo":Lcom/android/nfc/handover/FileInfo;
    .end local v11    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 214
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 206
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "inStream":Ljava/io/FileInputStream;
    .restart local v6    # "inStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    .line 207
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    const/4 v12, 0x0

    .line 209
    if-eqz v6, :cond_1

    .line 211
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 212
    :catch_3
    move-exception v2

    .line 214
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 209
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_4
    if-eqz v6, :cond_4

    .line 211
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 215
    :cond_4
    :goto_5
    throw v12

    .line 212
    :catch_4
    move-exception v2

    .line 214
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 219
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "inStream":Ljava/io/FileInputStream;
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 239
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "inStream":Ljava/io/FileInputStream;
    .restart local v10    # "mfileinfo":Lcom/android/nfc/handover/FileInfo;
    .restart local v11    # "uri":Landroid/net/Uri;
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 245
    .end local v3    # "file":Ljava/io/File;
    .end local v10    # "mfileinfo":Lcom/android/nfc/handover/FileInfo;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_7
    const-string v12, "TransmitClient"

    const-string v13, "downloadFiles is end"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 209
    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v12

    move-object v6, v7

    .end local v7    # "inStream":Ljava/io/FileInputStream;
    .restart local v6    # "inStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 206
    .end local v6    # "inStream":Ljava/io/FileInputStream;
    .restart local v7    # "inStream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v6, v7

    .end local v7    # "inStream":Ljava/io/FileInputStream;
    .restart local v6    # "inStream":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private isConnection(Ljava/net/HttpURLConnection;)Z
    .locals 5
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 409
    if-nez p1, :cond_0

    .line 424
    :goto_0
    return v1

    .line 413
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 414
    iget-object v3, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/nfc/handover/TransmitClient;->isConnected:Z

    .line 416
    const-string v3, "TransmitClient"

    const-string v4, "connect is ok"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 417
    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    iput-boolean v1, v2, Lcom/android/nfc/handover/TransmitClient;->isConnected:Z

    .line 421
    const-string v2, "TransmitClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isConnection IOException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private isReceiveSucceed()Z
    .locals 2

    .prologue
    .line 465
    iget v0, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->fileNum:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->fileNum:I

    iget v1, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->receiveFileNum:I

    if-ne v0, v1, :cond_0

    .line 466
    const/4 v0, 0x1

    .line 468
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reConnect(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 9
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 428
    const/4 v5, 0x1

    .line 431
    .local v5, "retryTimes":I
    :goto_0
    const/4 v2, 0x0

    .line 433
    .local v2, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    sget-object v6, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {p1, v6}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 434
    const/16 v6, 0x1388

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 435
    const/16 v6, 0x7530

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 436
    const-string v6, "Connection"

    const-string v7, "Close"

    invoke-virtual {v2, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_1
    const-string v6, "TransmitClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connect "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " times"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-direct {p0, v2}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->isConnection(Ljava/net/HttpURLConnection;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 445
    iget-object v6, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/nfc/handover/TransmitClient;->isConnected:Z

    .line 453
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    :goto_2
    return-object v2

    .line 437
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v4

    .line 439
    .local v4, "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 448
    .end local v4    # "e1":Ljava/io/IOException;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 449
    const/16 v6, 0xa

    if-le v5, v6, :cond_1

    .line 451
    const-string v6, "TransmitClient"

    const-string v7, "connect is error"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v6, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/nfc/handover/TransmitClient;->isConnected:Z

    .line 453
    const/4 v2, 0x0

    goto :goto_2

    .line 456
    :cond_1
    const-wide/16 v6, 0x3e8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 457
    :catch_1
    move-exception v3

    .line 458
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "TransmitClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reConnect IOException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private sendFileProgressBroadcast()V
    .locals 6

    .prologue
    .line 472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->isSendProgress:Z

    .line 473
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/nfc/handover/TransmitClient$GetFileThread$UpdateFileProgressTask;

    iget-object v2, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->progress:Landroid/content/Intent;

    invoke-direct {v1, p0, v2}, Lcom/android/nfc/handover/TransmitClient$GetFileThread$UpdateFileProgressTask;-><init>(Lcom/android/nfc/handover/TransmitClient$GetFileThread;Landroid/content/Intent;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 474
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 160
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 502
    iget-object v2, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    iget-object v3, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->ip:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->downloadFiles(Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;)Z

    move-result v1

    .line 503
    .local v1, "success":Z
    invoke-direct {p0}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->cancelTimer()V

    .line 505
    invoke-direct {p0}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->isReceiveSucceed()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 508
    const-string v2, "TransmitClient"

    const-string v3, "isReceiveSucceed ACTION_HANDOVER_TRANSFER_FINISG"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 510
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.nfc.handover.action.HANDOVER_TRANSFER_FINISH"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    iget-object v2, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    # invokes: Lcom/android/nfc/handover/TransmitClient;->sendBroadcast(Landroid/content/Intent;)V
    invoke-static {v2, v0}, Lcom/android/nfc/handover/TransmitClient;->access$100(Lcom/android/nfc/handover/TransmitClient;Landroid/content/Intent;)V

    .line 522
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 515
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v2, "TransmitClient"

    const-string v3, "is not ReceiveSucceed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 517
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.nfc.handover.action.HANDOVER_TRANSFER_DONE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    const-string v2, "com.android.nfc.handover.extra.HANDOVER_TRANSFER_STATUS"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    iget-object v2, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    # invokes: Lcom/android/nfc/handover/TransmitClient;->sendBroadcast(Landroid/content/Intent;)V
    invoke-static {v2, v0}, Lcom/android/nfc/handover/TransmitClient;->access$100(Lcom/android/nfc/handover/TransmitClient;Landroid/content/Intent;)V

    goto :goto_0
.end method

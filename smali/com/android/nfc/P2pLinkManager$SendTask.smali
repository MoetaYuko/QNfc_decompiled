.class final Lcom/android/nfc/P2pLinkManager$SendTask;
.super Landroid/os/AsyncTask;
.source "P2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SendTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field handoverClient:Lcom/android/nfc/handover/HandoverClient;

.field nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

.field snepClient:Lcom/android/nfc/snep/SnepClient;

.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .locals 0

    .prologue
    .line 972
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method doHandover([Landroid/net/Uri;Landroid/os/UserHandle;)I
    .locals 24
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 980
    invoke-static {}, Lcom/android/nfc/beam/BeamManager;->getInstance()Lcom/android/nfc/beam/BeamManager;

    move-result-object v4

    .line 982
    .local v4, "beamManager":Lcom/android/nfc/beam/BeamManager;
    if-eqz p1, :cond_1

    .line 983
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_1

    .line 985
    aget-object v20, p1, v10

    if-eqz v20, :cond_5

    sget-object v20, Lcom/android/nfc/P2pLinkManager;->CTS_URI:Ljava/lang/String;

    aget-object v21, p1, v10

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 986
    const/4 v8, 0x0

    .line 987
    .local v8, "file":Ljava/io/File;
    const/4 v15, 0x0

    .line 988
    .local v15, "out":Ljava/io/FileOutputStream;
    const/4 v11, 0x0

    .line 990
    .local v11, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v9, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "sdcard"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "image_to_share.jpg"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    .end local v8    # "file":Ljava/io/File;
    .local v9, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 992
    const-string v20, "NfcP2pLinkManager"

    const-string v21, "doHandover file.exists"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v20

    aput-object v20, p1, v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1007
    if-eqz v15, :cond_0

    :try_start_2
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1011
    :cond_0
    :goto_1
    if-eqz v11, :cond_1

    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1020
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "i":I
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v15    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :goto_2
    invoke-virtual {v4}, Lcom/android/nfc/beam/BeamManager;->isBeamInProgress()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1021
    const/16 v20, 0x3

    .line 1096
    :goto_3
    return v20

    .line 996
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "i":I
    .restart local v11    # "in":Ljava/io/InputStream;
    .restart local v15    # "out":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_4
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 997
    .end local v15    # "out":Ljava/io/FileOutputStream;
    .local v16, "out":Ljava/io/FileOutputStream;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    const-string v21, "image_to_share.jpg"

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 998
    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v6, v0, [B

    .line 999
    .local v6, "buffer":[B
    const/4 v12, 0x0

    .line 1000
    .local v12, "len":I
    :goto_4
    invoke-virtual {v11, v6}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v12, v0, :cond_6

    .line 1001
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v6, v1, v12}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    .line 1003
    .end local v6    # "buffer":[B
    .end local v12    # "len":I
    :catch_0
    move-exception v7

    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/FileOutputStream;
    .restart local v15    # "out":Ljava/io/FileOutputStream;
    move-object v8, v9

    .line 1004
    .end local v9    # "file":Ljava/io/File;
    .local v7, "e":Ljava/io/IOException;
    .restart local v8    # "file":Ljava/io/File;
    :goto_5
    :try_start_6
    const-string v20, "NfcP2pLinkManager"

    const-string v21, "doHandover write failed"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1007
    if-eqz v15, :cond_3

    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1011
    :cond_3
    :goto_6
    if-eqz v11, :cond_4

    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1015
    .end local v7    # "e":Ljava/io/IOException;
    :cond_4
    :goto_7
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v20

    aput-object v20, p1, v10

    .line 983
    .end local v8    # "file":Ljava/io/File;
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v15    # "out":Ljava/io/FileOutputStream;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1007
    .restart local v6    # "buffer":[B
    .restart local v9    # "file":Ljava/io/File;
    .restart local v11    # "in":Ljava/io/InputStream;
    .restart local v12    # "len":I
    .restart local v16    # "out":Ljava/io/FileOutputStream;
    :cond_6
    if-eqz v16, :cond_7

    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 1011
    :cond_7
    :goto_8
    if-eqz v11, :cond_8

    :try_start_a
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :cond_8
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/FileOutputStream;
    .restart local v15    # "out":Ljava/io/FileOutputStream;
    move-object v8, v9

    .line 1013
    .end local v9    # "file":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    goto :goto_7

    .line 1012
    .end local v8    # "file":Ljava/io/File;
    .end local v15    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v16    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v20

    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/FileOutputStream;
    .restart local v15    # "out":Ljava/io/FileOutputStream;
    move-object v8, v9

    .line 1014
    .end local v9    # "file":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    goto :goto_7

    .line 1006
    .end local v6    # "buffer":[B
    .end local v12    # "len":I
    :catchall_0
    move-exception v20

    .line 1007
    :goto_9
    if-eqz v15, :cond_9

    :try_start_b
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 1011
    :cond_9
    :goto_a
    if-eqz v11, :cond_a

    :try_start_c
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 1013
    :cond_a
    :goto_b
    throw v20

    .line 1024
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "i":I
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v15    # "out":Ljava/io/FileOutputStream;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # invokes: Lcom/android/nfc/P2pLinkManager;->setFastConn(Z)V
    invoke-static/range {v20 .. v21}, Lcom/android/nfc/P2pLinkManager;->access$000(Lcom/android/nfc/P2pLinkManager;Z)V

    .line 1025
    invoke-static/range {p1 .. p1}, Lcom/android/nfc/P2pLinkManager;->checkIsFastConnect([Landroid/net/Uri;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # invokes: Lcom/android/nfc/P2pLinkManager;->setFastConn(Z)V
    invoke-static/range {v20 .. v21}, Lcom/android/nfc/P2pLinkManager;->access$000(Lcom/android/nfc/P2pLinkManager;Z)V

    .line 1027
    invoke-static/range {p1 .. p1}, Lcom/android/nfc/P2pLinkManager;->getFastConnectType([Landroid/net/Uri;)I

    move-result v14

    .line 1028
    .local v14, "mode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # invokes: Lcom/android/nfc/P2pLinkManager;->setSender(Z)V
    invoke-static/range {v20 .. v21}, Lcom/android/nfc/P2pLinkManager;->access$100(Lcom/android/nfc/P2pLinkManager;Z)V

    .line 1029
    const-string v20, "NfcP2pLinkManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mode  ,for fastconnection:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    if-gtz v14, :cond_c

    .line 1031
    const/16 v20, 0x1

    goto/16 :goto_3

    .line 1033
    :cond_c
    const/16 v18, 0x0

    .line 1034
    .local v18, "response":Landroid/nfc/NdefMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/android/nfc/handover/HandoverDataParser;->createFastConHandoverRequest(I)Landroid/nfc/NdefMessage;

    move-result-object v17

    .line 1035
    .local v17, "request":Landroid/nfc/NdefMessage;
    if-eqz v17, :cond_e

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/HandoverClient;->sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v18

    .line 1039
    :cond_d
    if-nez v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/nfc/snep/SnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v19

    .line 1044
    .local v19, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    invoke-virtual/range {v19 .. v19}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v18

    .line 1047
    .end local v19    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :cond_e
    if-eqz v18, :cond_10

    .line 1048
    const-string v20, "NfcP2pLinkManager"

    const-string v21, "doFastConHandover"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/HandoverDataParser;->doFastConHandover(Landroid/nfc/NdefMessage;)V

    .line 1050
    new-instance v13, Lcom/android/nfc/beam/BeamStatusReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v13, v0, v1}, Lcom/android/nfc/beam/BeamStatusReceiver;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager;)V

    .line 1051
    .local v13, "mBeamStatusReceiver":Lcom/android/nfc/beam/BeamStatusReceiver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual {v13}, Lcom/android/nfc/beam/BeamStatusReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v21

    const-string v22, "android.permission.NFC_HANDOVER_STATUS"

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1096
    .end local v13    # "mBeamStatusReceiver":Lcom/android/nfc/beam/BeamStatusReceiver;
    .end local v14    # "mode":I
    :cond_f
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 1054
    .restart local v14    # "mode":I
    :cond_10
    if-nez v17, :cond_11

    .line 1055
    const/16 v20, 0x1

    goto/16 :goto_3

    .line 1057
    :cond_11
    const/16 v20, 0x2

    goto/16 :goto_3

    .line 1060
    .end local v14    # "mode":I
    .end local v17    # "request":Landroid/nfc/NdefMessage;
    .end local v18    # "response":Landroid/nfc/NdefMessage;
    :cond_12
    const-string v20, "NfcP2pLinkManager"

    const-string v21, "createHandoverRequestMessage"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const/16 v18, 0x0

    .line 1062
    .restart local v18    # "response":Landroid/nfc/NdefMessage;
    const/16 v17, 0x0

    .line 1063
    .restart local v17    # "request":Landroid/nfc/NdefMessage;
    const/16 v20, 0x1

    sget-boolean v21, Lcom/android/nfc/handover/Constants;->supportHWBeam:Z

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverRequestMessage([Landroid/net/Uri;)Landroid/nfc/NdefMessage;

    move-result-object v17

    .line 1069
    :goto_c
    if-eqz v17, :cond_15

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/HandoverClient;->sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v18

    .line 1073
    :cond_13
    if-nez v18, :cond_16

    .line 1074
    const/16 v20, 0x2

    goto/16 :goto_3

    .line 1066
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverRequestMessage()Landroid/nfc/NdefMessage;

    move-result-object v17

    goto :goto_c

    .line 1077
    :cond_15
    const/16 v20, 0x2

    goto/16 :goto_3

    .line 1080
    :cond_16
    if-eqz v18, :cond_f

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/HandoverDataParser;->isHwBeamConnectting(Landroid/nfc/NdefMessage;)Z

    move-result v20

    if-nez v20, :cond_17

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/handover/HandoverDataParser;->getOutgoingHandoverData(Landroid/nfc/NdefMessage;[Landroid/net/Uri;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v5

    .line 1084
    .local v5, "bluetoothHandoverData":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v5, :cond_f

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v4, v0, v5, v1, v2}, Lcom/android/nfc/beam/BeamManager;->startBeamSend(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;[Landroid/net/Uri;Landroid/os/UserHandle;)Z

    move-result v20

    if-nez v20, :cond_f

    .line 1087
    const/16 v20, 0x3

    goto/16 :goto_3

    .line 1091
    .end local v5    # "bluetoothHandoverData":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    :cond_17
    const/16 v20, 0x3

    goto/16 :goto_3

    .line 1008
    .end local v17    # "request":Landroid/nfc/NdefMessage;
    .end local v18    # "response":Landroid/nfc/NdefMessage;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "i":I
    .restart local v11    # "in":Ljava/io/InputStream;
    .restart local v15    # "out":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v20

    goto/16 :goto_1

    .line 1012
    :catch_3
    move-exception v20

    goto/16 :goto_2

    .line 1008
    .end local v15    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v12    # "len":I
    .restart local v16    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v20

    goto/16 :goto_8

    .end local v6    # "buffer":[B
    .end local v9    # "file":Ljava/io/File;
    .end local v12    # "len":I
    .end local v16    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "e":Ljava/io/IOException;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v15    # "out":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v20

    goto/16 :goto_6

    .line 1012
    :catch_6
    move-exception v20

    goto/16 :goto_7

    .line 1008
    .end local v7    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v21

    goto/16 :goto_a

    .line 1012
    :catch_8
    move-exception v21

    goto/16 :goto_b

    .line 1006
    .end local v8    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    :catchall_1
    move-exception v20

    move-object v8, v9

    .end local v9    # "file":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    goto/16 :goto_9

    .end local v8    # "file":Ljava/io/File;
    .end local v15    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v16    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v20

    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/FileOutputStream;
    .restart local v15    # "out":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9    # "file":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    goto/16 :goto_9

    .line 1003
    :catch_9
    move-exception v7

    goto/16 :goto_5

    .end local v8    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    :catch_a
    move-exception v7

    move-object v8, v9

    .end local v9    # "file":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    goto/16 :goto_5
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 972
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$SendTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    const/4 v12, 0x0

    .line 1113
    const/4 v3, 0x0

    .line 1115
    .local v3, "result":Z
    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v10

    .line 1116
    :try_start_0
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget v9, v9, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_0

    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget v9, v9, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v11, 0x4

    if-eq v9, v11, :cond_2

    .line 1117
    :cond_0
    monitor-exit v10

    .line 1188
    :cond_1
    :goto_0
    return-object v12

    .line 1119
    :cond_2
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v2, v9, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 1120
    .local v2, "m":Landroid/nfc/NdefMessage;
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v5, v9, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 1121
    .local v5, "uris":[Landroid/net/Uri;
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v8, v9, Lcom/android/nfc/P2pLinkManager;->mUserHandle:Landroid/os/UserHandle;

    .line 1122
    .local v8, "userHandle":Landroid/os/UserHandle;
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v9, v9, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    iput-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    .line 1123
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v9, v9, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    iput-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 1124
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v9, v9, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    iput-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 1125
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1129
    .local v6, "time":J
    if-eqz v5, :cond_3

    .line 1130
    const-string v9, "NfcP2pLinkManager"

    const-string v10, "Trying handover request"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :try_start_1
    invoke-virtual {p0, v5, v8}, Lcom/android/nfc/P2pLinkManager$SendTask;->doHandover([Landroid/net/Uri;Landroid/os/UserHandle;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 1133
    .local v1, "handoverResult":I
    packed-switch v1, :pswitch_data_0

    .line 1154
    .end local v1    # "handoverResult":I
    :cond_3
    :goto_1
    if-nez v3, :cond_4

    if-eqz v2, :cond_4

    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v9, :cond_4

    .line 1155
    const-string v9, "NfcP2pLinkManager"

    const-string v10, "Sending ndef via SNEP"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/android/nfc/P2pLinkManager$SendTask;->doSnepProtocol(Landroid/nfc/NdefMessage;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    .line 1158
    .local v4, "snepResult":I
    packed-switch v4, :pswitch_data_1

    .line 1171
    :pswitch_0
    const/4 v3, 0x0

    .line 1178
    .end local v4    # "snepResult":I
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    if-eqz v9, :cond_5

    .line 1179
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    invoke-virtual {v9, v2}, Lcom/android/nfc/ndefpush/NdefPushClient;->push(Landroid/nfc/NdefMessage;)Z

    move-result v3

    .line 1182
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v6, v10, v6

    .line 1183
    const-string v9, "NfcP2pLinkManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SendTask result="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", time ms="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    if-eqz v3, :cond_1

    .line 1185
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v9, v2, v6, v7}, Lcom/android/nfc/P2pLinkManager;->onSendComplete(Landroid/nfc/NdefMessage;J)V

    goto/16 :goto_0

    .line 1125
    .end local v2    # "m":Landroid/nfc/NdefMessage;
    .end local v5    # "uris":[Landroid/net/Uri;
    .end local v6    # "time":J
    .end local v8    # "userHandle":Landroid/os/UserHandle;
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 1135
    .restart local v1    # "handoverResult":I
    .restart local v2    # "m":Landroid/nfc/NdefMessage;
    .restart local v5    # "uris":[Landroid/net/Uri;
    .restart local v6    # "time":J
    .restart local v8    # "userHandle":Landroid/os/UserHandle;
    :pswitch_1
    const/4 v3, 0x1

    .line 1136
    goto :goto_1

    .line 1138
    :pswitch_2
    const/4 v3, 0x0

    .line 1139
    goto :goto_1

    .line 1141
    :pswitch_3
    const/4 v3, 0x0

    .line 1142
    :try_start_4
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v9}, Lcom/android/nfc/P2pLinkManager;->onHandoverUnsupported()V

    goto :goto_1

    .line 1149
    .end local v1    # "handoverResult":I
    :catch_0
    move-exception v0

    .line 1150
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_1

    .line 1145
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "handoverResult":I
    :pswitch_4
    const/4 v3, 0x0

    .line 1146
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v9}, Lcom/android/nfc/P2pLinkManager;->onHandoverBusy()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1160
    .end local v1    # "handoverResult":I
    .restart local v4    # "snepResult":I
    :pswitch_5
    const/4 v3, 0x1

    .line 1161
    goto :goto_2

    .line 1163
    :pswitch_6
    const/4 v3, 0x0

    .line 1164
    goto :goto_2

    .line 1167
    :pswitch_7
    :try_start_5
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v9}, Lcom/android/nfc/P2pLinkManager;->onHandoverHwBeamConnectting()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1173
    .end local v4    # "snepResult":I
    :catch_1
    move-exception v0

    .line 1174
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_2

    .line 1133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1158
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method doSnepProtocol(Landroid/nfc/NdefMessage;)I
    .locals 1
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1100
    if-eqz p1, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v0, p1}, Lcom/android/nfc/snep/SnepClient;->put(Landroid/nfc/NdefMessage;)V

    .line 1102
    const/4 v0, 0x0

    .line 1104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.class Lcom/android/nfc/handover/P2PHandoverClientSession$5;
.super Landroid/content/BroadcastReceiver;
.source "P2PHandoverClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/P2PHandoverClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/P2PHandoverClientSession;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 864
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 865
    .local v1, "action":Ljava/lang/String;
    const-string v12, "com.android.nfc.handover.extra.SOURCE_ADDRESS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 866
    .local v8, "sourceAddress":Ljava/lang/String;
    new-instance v5, Landroid/util/Pair;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v5, v8, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 867
    .local v5, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v12, "P2PHandoverClientSession"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mHandoverReceiver onReceive action= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const-string v12, "P2PHandoverClientSession"

    const-string v13, "mHandoverReceiver onReceive sourceAddress."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const-string v12, "P2PHandoverClientSession"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mHandoverReceiver onReceive transmitKeyString= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitKeyString:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const-string v12, "com.android.nfc.p2phandover.action.CLOSE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 873
    const-string v12, "P2PHandoverClientSession"

    const-string v13, "ACTION_CLOSE_HANDOVER_TRANSFER"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/P2PHandover;->getHandoverManager()Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitKeyString:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/nfc/handover/HandoverDataParser;->getOrCreateHandoverTransfer(Ljava/lang/String;ZZ)Lcom/android/nfc/beam/BeamTransferManager;

    move-result-object v9

    .line 875
    .local v9, "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    if-eqz v9, :cond_0

    .line 876
    iget-object v12, v9, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->remoteName:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$2100(Lcom/android/nfc/handover/P2PHandoverClientSession;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFriendlyName(Ljava/lang/String;)V

    .line 877
    iget-object v12, v9, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-static {v13}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v13

    iget-object v13, v13, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    invoke-static {v13}, Lcom/android/nfc/handover/TransmitClient;->getFileName(Lcom/android/nfc/handover/ConfigInfo;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFileName(Ljava/lang/String;)V

    .line 878
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v12, v13, v14}, Lcom/android/nfc/beam/BeamTransferManager;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    .line 880
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitCancel()V
    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$2200(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    .line 881
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/P2PHandover;->getHandoverManager()Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v12

    iget-object v12, v12, Lcom/android/nfc/handover/HandoverDataParser;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    .end local v9    # "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    :cond_1
    :goto_0
    return-void

    .line 885
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitKeyString:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 889
    const-string v12, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 891
    const-string v12, "P2PHandoverClientSession"

    const-string v13, " ACTION_CANCEL_HANDOVER_TRANSFER getOrCreateHandoverTransfer "

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/P2PHandover;->getHandoverManager()Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v8, v13, v14}, Lcom/android/nfc/handover/HandoverDataParser;->getOrCreateHandoverTransfer(Ljava/lang/String;ZZ)Lcom/android/nfc/beam/BeamTransferManager;

    move-result-object v9

    .line 893
    .restart local v9    # "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    if-eqz v9, :cond_3

    .line 894
    iget-object v12, v9, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->remoteName:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$2100(Lcom/android/nfc/handover/P2PHandoverClientSession;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFriendlyName(Ljava/lang/String;)V

    .line 895
    iget-object v12, v9, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-static {v13}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v13

    iget-object v13, v13, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    invoke-static {v13}, Lcom/android/nfc/handover/TransmitClient;->getFileName(Lcom/android/nfc/handover/ConfigInfo;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFileName(Ljava/lang/String;)V

    .line 896
    iget-object v12, v9, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFailedReason(I)V

    .line 897
    invoke-virtual {v9}, Lcom/android/nfc/beam/BeamTransferManager;->cancel()V

    .line 899
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitCancel()V
    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$2200(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    .line 900
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/P2PHandover;->getHandoverManager()Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v12

    iget-object v12, v12, Lcom/android/nfc/handover/HandoverDataParser;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 901
    .end local v9    # "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    :cond_4
    const-string v12, "com.android.nfc.handover.action.HANDOVER_TRANSFER_DONE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "com.android.nfc.handover.action.HANDOVER_TRANSFER_PROGRESS"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 902
    :cond_5
    const/4 v3, 0x0

    .line 903
    .local v3, "fileName":Ljava/lang/String;
    const-string v12, "com.android.nfc.handover.action.HANDOVER_TRANSFER_DONE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 904
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v12

    iget-object v12, v12, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    invoke-static {v12}, Lcom/android/nfc/handover/TransmitClient;->getFileName(Lcom/android/nfc/handover/ConfigInfo;)Ljava/lang/String;

    move-result-object v3

    .line 906
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/P2PHandover;->getHandoverManager()Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v8, v13, v14}, Lcom/android/nfc/handover/HandoverDataParser;->getOrCreateHandoverTransfer(Ljava/lang/String;ZZ)Lcom/android/nfc/beam/BeamTransferManager;

    move-result-object v9

    .line 908
    .restart local v9    # "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    if-nez v9, :cond_7

    .line 909
    const-string v12, "P2PHandoverClientSession"

    const-string v13, "transfer == null;"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    new-instance v2, Landroid/content/Intent;

    const-string v12, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 912
    .local v2, "cancelIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$800(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/content/Context;

    move-result-object v12

    const-string v13, "com.android.nfc.permission.ACCESS_INTERFACE"

    invoke-virtual {v12, v2, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 916
    .end local v2    # "cancelIntent":Landroid/content/Intent;
    :cond_7
    iget-object v12, v9, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->remoteName:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$2100(Lcom/android/nfc/handover/P2PHandoverClientSession;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFriendlyName(Ljava/lang/String;)V

    .line 917
    iget-object v12, v9, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-virtual {v12, v3}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFileName(Ljava/lang/String;)V

    .line 919
    const-string v12, "com.android.nfc.handover.action.HANDOVER_TRANSFER_DONE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 920
    const-string v12, "com.android.nfc.handover.extra.HANDOVER_TRANSFER_STATUS"

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 921
    .local v4, "handoverStatus":I
    if-nez v4, :cond_b

    .line 922
    const-string v12, "com.android.nfc.handover.extra.HANDOVER_TRANSFER_URI"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 923
    .local v11, "uriString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/P2PHandover;->getHandoverManager()Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v12

    iget-object v12, v12, Lcom/android/nfc/handover/HandoverDataParser;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;

    invoke-virtual {v12}, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->resetHandoverTimer()V

    .line 924
    const-string v12, "P2PHandoverClientSession"

    const-string v13, "mHandoverPowerManager resetHandoverTimer()"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    if-eqz v11, :cond_a

    .line 926
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 927
    .local v10, "uri":Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_8

    .line 928
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 931
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/P2PHandover;->getHandoverManager()Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$800(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v13, v10}, Lcom/android/nfc/handover/HandoverDataParser;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 933
    .local v6, "mimeType":Ljava/lang/String;
    const-string v12, "P2PHandoverClientSession"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mimeType == "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    if-eqz v6, :cond_9

    .line 935
    const/4 v12, 0x1

    invoke-virtual {v9, v12, v10, v6}, Lcom/android/nfc/beam/BeamTransferManager;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 937
    :cond_9
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v10, v13}, Lcom/android/nfc/beam/BeamTransferManager;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 941
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_a
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v12, v13, v14}, Lcom/android/nfc/beam/BeamTransferManager;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 944
    .end local v11    # "uriString":Ljava/lang/String;
    :cond_b
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v12, v13, v14}, Lcom/android/nfc/beam/BeamTransferManager;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitComplete()V
    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$2300(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    .line 946
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/P2PHandover;->getHandoverManager()Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v12

    iget-object v12, v12, Lcom/android/nfc/handover/HandoverDataParser;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/P2PHandover;->getHandoverManager()Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/HandoverDataParser;->cleanupTransfers()V

    goto/16 :goto_0

    .line 949
    .end local v4    # "handoverStatus":I
    :cond_c
    const-string v12, "com.android.nfc.handover.action.HANDOVER_TRANSFER_PROGRESS"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 951
    const-string v12, "P2PHandoverClientSession"

    const-string v13, "Enter Handover receiver  transfer progress"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/4 v7, 0x0

    .line 953
    .local v7, "progress":F
    invoke-virtual {v9, v7}, Lcom/android/nfc/beam/BeamTransferManager;->updateFileProgress(F)V

    goto/16 :goto_0

    .line 955
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v7    # "progress":F
    .end local v9    # "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    :cond_d
    const-string v12, "com.android.nfc.handover.action.HANDOVER_TRANSFER_FINISH"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 956
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # invokes: Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitComplete()V
    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$2300(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/P2PHandover;->getHandoverManager()Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v12

    iget-object v12, v12, Lcom/android/nfc/handover/HandoverDataParser;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    # getter for: Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;
    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/P2PHandover;->getHandoverManager()Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/HandoverDataParser;->cleanupTransfers()V

    goto/16 :goto_0
.end method

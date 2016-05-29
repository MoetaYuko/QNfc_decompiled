.class Lcom/android/nfc/handover/WiFiHandover$4;
.super Landroid/content/BroadcastReceiver;
.source "WiFiHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/WiFiHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/WiFiHandover;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/WiFiHandover;)V
    .locals 0

    .prologue
    .line 1691
    iput-object p1, p0, Lcom/android/nfc/handover/WiFiHandover$4;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1696
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1697
    .local v0, "action":Ljava/lang/String;
    const-string v9, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1699
    const-string v9, "com.android.nfc.handover.extra.SOURCE_ADDRESS"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1700
    .local v5, "sourceAddress":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/nfc/handover/WiFiHandover$4;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;
    invoke-static {v9}, Lcom/android/nfc/handover/WiFiHandover;->access$900(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v5, v10, v11}, Lcom/android/nfc/handover/HandoverDataParser;->getOrCreateHandoverTransfer(Ljava/lang/String;ZZ)Lcom/android/nfc/beam/BeamTransferManager;

    move-result-object v6

    .line 1702
    .local v6, "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    if-eqz v6, :cond_0

    .line 1703
    iget-object v9, v6, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    iget-object v10, p0, Lcom/android/nfc/handover/WiFiHandover$4;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mConfigInfo:Lcom/android/nfc/handover/ConfigInfo;
    invoke-static {v10}, Lcom/android/nfc/handover/WiFiHandover;->access$1000(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/ConfigInfo;

    move-result-object v10

    invoke-static {v10}, Lcom/android/nfc/handover/TransmitClient;->getFileName(Lcom/android/nfc/handover/ConfigInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFileName(Ljava/lang/String;)V

    .line 1704
    iget-object v9, v6, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFailedReason(I)V

    .line 1705
    invoke-virtual {v6}, Lcom/android/nfc/beam/BeamTransferManager;->cancel()V

    .line 1707
    :cond_0
    iget-object v9, p0, Lcom/android/nfc/handover/WiFiHandover$4;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForSoftAP:Lcom/android/nfc/handover/TransmitManager;
    invoke-static {v9}, Lcom/android/nfc/handover/WiFiHandover;->access$1100(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1708
    iget-object v9, p0, Lcom/android/nfc/handover/WiFiHandover$4;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForSoftAP:Lcom/android/nfc/handover/TransmitManager;
    invoke-static {v9}, Lcom/android/nfc/handover/WiFiHandover;->access$1100(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/nfc/handover/TransmitManager;->cancelFileTransmit()V

    .line 1711
    :cond_1
    iget-object v9, p0, Lcom/android/nfc/handover/WiFiHandover$4;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForWifiSTA:Lcom/android/nfc/handover/TransmitManager;
    invoke-static {v9}, Lcom/android/nfc/handover/WiFiHandover;->access$1200(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1712
    iget-object v9, p0, Lcom/android/nfc/handover/WiFiHandover$4;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForWifiSTA:Lcom/android/nfc/handover/TransmitManager;
    invoke-static {v9}, Lcom/android/nfc/handover/WiFiHandover;->access$1200(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/nfc/handover/TransmitManager;->cancelFileTransmit()V

    .line 1781
    .end local v5    # "sourceAddress":Ljava/lang/String;
    .end local v6    # "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    :cond_2
    :goto_0
    return-void

    .line 1715
    :cond_3
    const-string v9, "com.android.nfc.handover.action.HANDOVER_TRANSFER_DONE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "com.android.nfc.handover.action.HANDOVER_TRANSFER_PROGRESS"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1718
    :cond_4
    iget-object v9, p0, Lcom/android/nfc/handover/WiFiHandover$4;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;
    invoke-static {v9}, Lcom/android/nfc/handover/WiFiHandover;->access$900(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/nfc/handover/HandoverDataParser;->cleanupTransfers()V

    .line 1719
    const-string v9, "com.android.nfc.handover.extra.SOURCE_ADDRESS"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1721
    .restart local v5    # "sourceAddress":Ljava/lang/String;
    const/4 v2, 0x1

    .line 1722
    .local v2, "incoming":Z
    iget-object v9, p0, Lcom/android/nfc/handover/WiFiHandover$4;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;
    invoke-static {v9}, Lcom/android/nfc/handover/WiFiHandover;->access$900(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v2, v10}, Lcom/android/nfc/handover/HandoverDataParser;->getOrCreateHandoverTransfer(Ljava/lang/String;ZZ)Lcom/android/nfc/beam/BeamTransferManager;

    move-result-object v6

    .line 1724
    .restart local v6    # "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    if-nez v6, :cond_5

    .line 1729
    const-string v9, "WiFiHandover"

    const-string v10, "transfer == null;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1737
    :cond_5
    iget-object v9, v6, Lcom/android/nfc/beam/BeamTransferManager;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    iget-object v10, p0, Lcom/android/nfc/handover/WiFiHandover$4;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mConfigInfo:Lcom/android/nfc/handover/ConfigInfo;
    invoke-static {v10}, Lcom/android/nfc/handover/WiFiHandover;->access$1000(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/ConfigInfo;

    move-result-object v10

    invoke-static {v10}, Lcom/android/nfc/handover/TransmitClient;->getFileName(Lcom/android/nfc/handover/ConfigInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFileName(Ljava/lang/String;)V

    .line 1738
    const-string v9, "com.android.nfc.handover.action.HANDOVER_TRANSFER_DONE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1739
    const-string v9, "com.android.nfc.handover.extra.HANDOVER_TRANSFER_STATUS"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1741
    .local v1, "handoverStatus":I
    iget-object v9, p0, Lcom/android/nfc/handover/WiFiHandover$4;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;
    invoke-static {v9}, Lcom/android/nfc/handover/WiFiHandover;->access$900(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v9

    iget-object v9, v9, Lcom/android/nfc/handover/HandoverDataParser;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;

    invoke-virtual {v9}, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->resetHandoverTimer()V

    .line 1743
    const-string v9, "WiFiHandover"

    const-string v10, "mHandoverPowerManager resetHandoverTimer() "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    if-nez v1, :cond_9

    .line 1745
    const-string v9, "com.android.nfc.handover.extra.HANDOVER_TRANSFER_URI"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1747
    .local v8, "uriString":Ljava/lang/String;
    if-eqz v8, :cond_8

    .line 1748
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1749
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6

    .line 1750
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 1753
    :cond_6
    iget-object v9, p0, Lcom/android/nfc/handover/WiFiHandover$4;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v9}, Lcom/android/nfc/handover/WiFiHandover;->getHandoverManager()Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v9

    iget-object v10, p0, Lcom/android/nfc/handover/WiFiHandover$4;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/nfc/handover/WiFiHandover;->access$1300(Lcom/android/nfc/handover/WiFiHandover;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Lcom/android/nfc/handover/HandoverDataParser;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 1755
    .local v3, "mimeType":Ljava/lang/String;
    const-string v9, "WiFiHandover"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mimeType == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    if-eqz v3, :cond_7

    .line 1757
    const-string v9, "WiFiHandover"

    const-string v10, "finishTransfer "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    const/4 v9, 0x1

    invoke-virtual {v6, v9, v7, v3}, Lcom/android/nfc/beam/BeamTransferManager;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1760
    :cond_7
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v7, v10}, Lcom/android/nfc/beam/BeamTransferManager;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1763
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_8
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v10, v11}, Lcom/android/nfc/beam/BeamTransferManager;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1766
    .end local v8    # "uriString":Ljava/lang/String;
    :cond_9
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v10, v11}, Lcom/android/nfc/beam/BeamTransferManager;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1768
    .end local v1    # "handoverStatus":I
    :cond_a
    const-string v9, "com.android.nfc.handover.action.HANDOVER_TRANSFER_PROGRESS"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1770
    const-string v9, "WiFiHandover"

    const-string v10, "Enter Handover receiver  transfer progress"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    const/4 v4, 0x0

    .line 1772
    .local v4, "progress":F
    invoke-virtual {v6, v4}, Lcom/android/nfc/beam/BeamTransferManager;->updateFileProgress(F)V

    goto/16 :goto_0

    .line 1776
    .end local v2    # "incoming":Z
    .end local v4    # "progress":F
    .end local v5    # "sourceAddress":Ljava/lang/String;
    .end local v6    # "transfer":Lcom/android/nfc/beam/BeamTransferManager;
    :cond_b
    const-string v9, "com.android.nfc.handover.action.HANDOVER_TRANSFER_FINISH"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1778
    const-string v9, "WiFiHandover"

    const-string v10, "ACTION_HANDOVER_TRANSFER_FINISH  "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    iget-object v9, p0, Lcom/android/nfc/handover/WiFiHandover$4;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    iget-object v10, p0, Lcom/android/nfc/handover/WiFiHandover$4;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/nfc/handover/WiFiHandover;->access$1300(Lcom/android/nfc/handover/WiFiHandover;)Landroid/content/Context;

    move-result-object v10

    # invokes: Lcom/android/nfc/handover/WiFiHandover;->unRegisterHandoverReceiver(Landroid/content/Context;)V
    invoke-static {v9, v10}, Lcom/android/nfc/handover/WiFiHandover;->access$1400(Lcom/android/nfc/handover/WiFiHandover;Landroid/content/Context;)V

    goto/16 :goto_0
.end method

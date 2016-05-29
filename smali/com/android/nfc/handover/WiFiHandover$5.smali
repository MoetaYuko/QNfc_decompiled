.class Lcom/android/nfc/handover/WiFiHandover$5;
.super Landroid/os/Handler;
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
.field private staList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/nfc/handover/WiFiHandover;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/WiFiHandover;)V
    .locals 0

    .prologue
    .line 1791
    iput-object p1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    const/16 v5, 0x6b

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1797
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2003
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2004
    :cond_1
    :goto_1
    return-void

    .line 1800
    :pswitch_1
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$300(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1802
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$300(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/net/wifi/WifiManagerEx;->getApLinkedStaList(Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->staList:Ljava/util/List;
    :try_end_0
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1806
    :goto_2
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->staList:Ljava/util/List;

    if-nez v0, :cond_2

    .line 1807
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/WiFiHandover;->disableDevice()Z

    goto :goto_1

    .line 1803
    :catch_0
    move-exception v6

    .line 1804
    .local v6, "e":Lcom/huawei/android/util/NoExtAPIException;
    invoke-virtual {v6}, Lcom/huawei/android/util/NoExtAPIException;->printStackTrace()V

    goto :goto_2

    .line 1810
    .end local v6    # "e":Lcom/huawei/android/util/NoExtAPIException;
    :cond_2
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->staList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 1811
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->staList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mRemoteDeviceMac:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$1500(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1810
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1815
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/WiFiHandover;->disableDevice()Z

    goto :goto_0

    .line 1820
    .end local v7    # "i":I
    :pswitch_2
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # invokes: Lcom/android/nfc/handover/WiFiHandover;->getWifiAPState()I
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$1600(Lcom/android/nfc/handover/WiFiHandover;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 1821
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1823
    :cond_4
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$300(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    # setter for: Lcom/android/nfc/handover/WiFiHandover;->mDefault_APConfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v1}, Lcom/android/nfc/handover/WiFiHandover;->access$1702(Lcom/android/nfc/handover/WiFiHandover;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 1825
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$100(Lcom/android/nfc/handover/WiFiHandover;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1826
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # invokes: Lcom/android/nfc/handover/WiFiHandover;->createNewWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$1800(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    # invokes: Lcom/android/nfc/handover/WiFiHandover;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    invoke-static {v0, v1, v3}, Lcom/android/nfc/handover/WiFiHandover;->access$1900(Lcom/android/nfc/handover/WiFiHandover;Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 1828
    :cond_5
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # invokes: Lcom/android/nfc/handover/WiFiHandover;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    invoke-static {v0, v10, v3}, Lcom/android/nfc/handover/WiFiHandover;->access$1900(Lcom/android/nfc/handover/WiFiHandover;Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 1835
    :pswitch_3
    const-string v0, "WiFiHandover"

    const-string v1, "AP has started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # invokes: Lcom/android/nfc/handover/WiFiHandover;->getLocalMac()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$2100(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/nfc/handover/WiFiHandover;->access$2002(Lcom/android/nfc/handover/WiFiHandover;Ljava/lang/String;)Ljava/lang/String;

    .line 1837
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # setter for: Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I
    invoke-static {v0, v4}, Lcom/android/nfc/handover/WiFiHandover;->access$202(Lcom/android/nfc/handover/WiFiHandover;I)I

    .line 1838
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$100(Lcom/android/nfc/handover/WiFiHandover;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1839
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1844
    :pswitch_4
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$100(Lcom/android/nfc/handover/WiFiHandover;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1845
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1849
    :cond_6
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$900(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/HandoverDataParser;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/android/nfc/handover/HandoverDataParser;->sendFastConnectResult(II)V

    goto/16 :goto_0

    .line 1857
    :pswitch_5
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # invokes: Lcom/android/nfc/handover/WiFiHandover;->getApLinkedStaList()Ljava/util/List;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$2200(Lcom/android/nfc/handover/WiFiHandover;)Ljava/util/List;

    move-result-object v8

    .line 1859
    .local v8, "mLinkedStaList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 1860
    .local v9, "size":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v9, :cond_7

    .line 1861
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mRemoteDeviceMac:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$1500(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1860
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1866
    :cond_7
    const-string v0, "WiFiHandover"

    const-string v1, "this sta has disconnected AP,we should trun off AP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/WiFiHandover;->disableDevice()Z

    goto/16 :goto_0

    .line 1873
    .end local v7    # "i":I
    .end local v8    # "mLinkedStaList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .end local v9    # "size":I
    :pswitch_6
    const-string v0, "WiFiHandover"

    const-string v1, "AP buildHttpServer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForSoftAP:Lcom/android/nfc/handover/TransmitManager;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$1100(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForSoftAP:Lcom/android/nfc/handover/TransmitManager;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$1100(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # invokes: Lcom/android/nfc/handover/WiFiHandover;->getIpAddress(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/nfc/handover/WiFiHandover;->access$2300(Lcom/android/nfc/handover/WiFiHandover;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/TransmitManager;->buildHttpServer(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1881
    :pswitch_7
    const-string v0, "WiFiHandover"

    const-string v1, "ap receive file start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    monitor-enter p0

    .line 1883
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForSoftAP:Lcom/android/nfc/handover/TransmitManager;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$1100(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1884
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForSoftAP:Lcom/android/nfc/handover/TransmitManager;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$1100(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mConfigInfo:Lcom/android/nfc/handover/ConfigInfo;
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$1000(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/ConfigInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mRemoteDeviceMac:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/nfc/handover/WiFiHandover;->access$1500(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/nfc/handover/WiFiHandover;->getIpByMac(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/nfc/handover/WiFiHandover;->access$2400(Lcom/android/nfc/handover/WiFiHandover;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mRemoteDeviceMac:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/nfc/handover/WiFiHandover;->access$1500(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/nfc/handover/TransmitManager;->getFileUris(Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    :cond_8
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1891
    :pswitch_8
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # invokes: Lcom/android/nfc/handover/WiFiHandover;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    invoke-static {v0, v10, v2}, Lcom/android/nfc/handover/WiFiHandover;->access$1900(Lcom/android/nfc/handover/WiFiHandover;Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 1896
    :pswitch_9
    const-string v0, "WiFiHandover"

    const-string v1, "STA buildHttpServer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # setter for: Lcom/android/nfc/handover/WiFiHandover;->isStaTransmitFiles:Z
    invoke-static {v0, v3}, Lcom/android/nfc/handover/WiFiHandover;->access$802(Lcom/android/nfc/handover/WiFiHandover;Z)Z

    .line 1898
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForWifiSTA:Lcom/android/nfc/handover/TransmitManager;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$1200(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1899
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForWifiSTA:Lcom/android/nfc/handover/TransmitManager;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$1200(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # invokes: Lcom/android/nfc/handover/WiFiHandover;->getIpAddress(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/nfc/handover/WiFiHandover;->access$2300(Lcom/android/nfc/handover/WiFiHandover;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/TransmitManager;->buildHttpServer(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1905
    :pswitch_a
    const-string v0, "WiFiHandover"

    const-string v1, "sta receive file start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    monitor-enter p0

    .line 1907
    :try_start_2
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    const/4 v1, 0x1

    # setter for: Lcom/android/nfc/handover/WiFiHandover;->isStaTransmitFiles:Z
    invoke-static {v0, v1}, Lcom/android/nfc/handover/WiFiHandover;->access$802(Lcom/android/nfc/handover/WiFiHandover;Z)Z

    .line 1908
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForWifiSTA:Lcom/android/nfc/handover/TransmitManager;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$1200(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1909
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForWifiSTA:Lcom/android/nfc/handover/TransmitManager;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$1200(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mConfigInfo:Lcom/android/nfc/handover/ConfigInfo;
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$1000(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/ConfigInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    const/4 v3, 0x1

    # invokes: Lcom/android/nfc/handover/WiFiHandover;->getIpAddress(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/nfc/handover/WiFiHandover;->access$2300(Lcom/android/nfc/handover/WiFiHandover;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mRemoteDeviceMac:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/nfc/handover/WiFiHandover;->access$1500(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/nfc/handover/TransmitManager;->getFileUris(Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    :cond_9
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1915
    :pswitch_b
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # invokes: Lcom/android/nfc/handover/WiFiHandover;->setWifiSTAEnabled(Z)V
    invoke-static {v0, v3}, Lcom/android/nfc/handover/WiFiHandover;->access$2500(Lcom/android/nfc/handover/WiFiHandover;Z)V

    goto/16 :goto_0

    .line 1919
    :pswitch_c
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # invokes: Lcom/android/nfc/handover/WiFiHandover;->setWifiSTAEnabled(Z)V
    invoke-static {v0, v2}, Lcom/android/nfc/handover/WiFiHandover;->access$2500(Lcom/android/nfc/handover/WiFiHandover;Z)V

    goto/16 :goto_0

    .line 1923
    :pswitch_d
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # invokes: Lcom/android/nfc/handover/WiFiHandover;->connectToRemoteAp()V
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$2600(Lcom/android/nfc/handover/WiFiHandover;)V

    goto/16 :goto_0

    .line 1928
    :pswitch_e
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    monitor-enter v1

    .line 1929
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mConApNum:I
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$2700(Lcom/android/nfc/handover/WiFiHandover;)I

    move-result v0

    const/16 v2, 0xa

    if-gt v0, v2, :cond_a

    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$200(Lcom/android/nfc/handover/WiFiHandover;)I

    move-result v0

    if-eq v4, v0, :cond_a

    .line 1930
    const-string v0, "WiFiHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConApNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mConApNum:I
    invoke-static {v3}, Lcom/android/nfc/handover/WiFiHandover;->access$2700(Lcom/android/nfc/handover/WiFiHandover;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # invokes: Lcom/android/nfc/handover/WiFiHandover;->connectToRemoteAp()V
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$2600(Lcom/android/nfc/handover/WiFiHandover;)V

    .line 1932
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # operator++ for: Lcom/android/nfc/handover/WiFiHandover;->mConApNum:I
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$2708(Lcom/android/nfc/handover/WiFiHandover;)I

    .line 1934
    :cond_a
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 1940
    :pswitch_f
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # invokes: Lcom/android/nfc/handover/WiFiHandover;->getLocalMac()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$2100(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/nfc/handover/WiFiHandover;->access$2002(Lcom/android/nfc/handover/WiFiHandover;Ljava/lang/String;)Ljava/lang/String;

    .line 1942
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # invokes: Lcom/android/nfc/handover/WiFiHandover;->cancelScanAPTimer()V
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$600(Lcom/android/nfc/handover/WiFiHandover;)V

    .line 1943
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$100(Lcom/android/nfc/handover/WiFiHandover;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1944
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1952
    :pswitch_10
    iget-object v10, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    monitor-enter v10

    .line 1953
    :try_start_4
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$2800(Lcom/android/nfc/handover/WiFiHandover;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_b

    .line 1954
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    # setter for: Lcom/android/nfc/handover/WiFiHandover;->mTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/android/nfc/handover/WiFiHandover;->access$2802(Lcom/android/nfc/handover/WiFiHandover;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1957
    :cond_b
    :try_start_5
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$2800(Lcom/android/nfc/handover/WiFiHandover;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1958
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$2800(Lcom/android/nfc/handover/WiFiHandover;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/android/nfc/handover/WiFiHandover$ScanAPTimerTask;

    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-direct {v1, v2}, Lcom/android/nfc/handover/WiFiHandover$ScanAPTimerTask;-><init>(Lcom/android/nfc/handover/WiFiHandover;)V

    const-wide/16 v2, 0x1770

    const-wide/16 v4, 0x1770

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1968
    :cond_c
    :goto_5
    :try_start_6
    monitor-exit v10

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 1960
    :catch_1
    move-exception v6

    .line 1961
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_7
    const-string v0, "WiFiHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_5

    .line 1964
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    .line 1965
    .local v6, "e":Ljava/lang/IllegalStateException;
    const-string v0, "WiFiHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    .line 1990
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :pswitch_11
    const-string v0, "WiFiHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBeamState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I
    invoke-static {v2}, Lcom/android/nfc/handover/WiFiHandover;->access$200(Lcom/android/nfc/handover/WiFiHandover;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mSSID:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$500(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$200(Lcom/android/nfc/handover/WiFiHandover;)I

    move-result v0

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$200(Lcom/android/nfc/handover/WiFiHandover;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 1992
    const-string v0, "WiFiHandover"

    const-string v1, "we have scaned ap ,connect it and cancel timer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # setter for: Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I
    invoke-static {v0, v3}, Lcom/android/nfc/handover/WiFiHandover;->access$202(Lcom/android/nfc/handover/WiFiHandover;I)I

    .line 1994
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # invokes: Lcom/android/nfc/handover/WiFiHandover;->cancelScanAPTimer()V
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$600(Lcom/android/nfc/handover/WiFiHandover;)V

    .line 1995
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1797
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_3
        :pswitch_d
        :pswitch_b
        :pswitch_f
        :pswitch_e
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_5
        :pswitch_10
        :pswitch_11
        :pswitch_c
        :pswitch_8
        :pswitch_1
    .end packed-switch
.end method

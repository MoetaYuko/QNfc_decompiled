.class Lcom/android/nfc/handover/WiFiHandover$3;
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
    .line 1540
    iput-object p1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1545
    const-string v1, "WiFiHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWifiStaReceiver intent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1549
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    # setter for: Lcom/android/nfc/handover/WiFiHandover;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2, v1}, Lcom/android/nfc/handover/WiFiHandover;->access$402(Lcom/android/nfc/handover/WiFiHandover;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 1552
    const-string v1, "WiFiHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNetworkInfo.getState == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/nfc/handover/WiFiHandover;->access$400(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    const-string v1, "WiFiHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBeamState == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I
    invoke-static {v3}, Lcom/android/nfc/handover/WiFiHandover;->access$200(Lcom/android/nfc/handover/WiFiHandover;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/nfc/handover/WiFiHandover;->access$400(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 1558
    const-string v1, "wifiInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    .line 1559
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 1561
    const-string v1, "WiFiHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSSID == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mSSID:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/nfc/handover/WiFiHandover;->access$500(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1566
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # invokes: Lcom/android/nfc/handover/WiFiHandover;->cancelScanAPTimer()V
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$600(Lcom/android/nfc/handover/WiFiHandover;)V

    .line 1567
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    # setter for: Lcom/android/nfc/handover/WiFiHandover;->mNetworkId:I
    invoke-static {v1, v2}, Lcom/android/nfc/handover/WiFiHandover;->access$702(Lcom/android/nfc/handover/WiFiHandover;I)I

    .line 1568
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    const/4 v2, 0x2

    # setter for: Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I
    invoke-static {v1, v2}, Lcom/android/nfc/handover/WiFiHandover;->access$202(Lcom/android/nfc/handover/WiFiHandover;I)I

    .line 1569
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1611
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_1
    :goto_0
    return-void

    .line 1571
    .restart local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$200(Lcom/android/nfc/handover/WiFiHandover;)I

    move-result v1

    if-ne v5, v1, :cond_1

    .line 1572
    const-string v1, "WiFiHandover"

    const-string v2, "disconnect error ap"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/WiFiHandover;->disConnectCurrentAP()V

    .line 1575
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1578
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_3
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/nfc/handover/WiFiHandover;->access$400(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 1580
    const-string v1, "WiFiHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isStaTransmitFiles  == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->isStaTransmitFiles:Z
    invoke-static {v3}, Lcom/android/nfc/handover/WiFiHandover;->access$800(Lcom/android/nfc/handover/WiFiHandover;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->isStaTransmitFiles:Z
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$800(Lcom/android/nfc/handover/WiFiHandover;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1582
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    const/4 v2, 0x0

    # setter for: Lcom/android/nfc/handover/WiFiHandover;->isStaTransmitFiles:Z
    invoke-static {v1, v2}, Lcom/android/nfc/handover/WiFiHandover;->access$802(Lcom/android/nfc/handover/WiFiHandover;Z)Z

    .line 1583
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    const/4 v2, 0x4

    # setter for: Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I
    invoke-static {v1, v2}, Lcom/android/nfc/handover/WiFiHandover;->access$202(Lcom/android/nfc/handover/WiFiHandover;I)I

    .line 1584
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/WiFiHandover;->disableDevice()Z

    goto :goto_0

    .line 1588
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1590
    const-string v1, "wifi_state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 1592
    const-string v1, "WiFiHandover"

    const-string v2, "WIFI_STATE_CHANGED_ACTION,WifiManager.WIFI_STATE_ENABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x71

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1596
    :cond_5
    const-string v1, "wifi_state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_6

    .line 1598
    const-string v1, "WiFiHandover"

    const-string v2, "WIFI_STATE_CHANGED_ACTION,WIFI_STATE_DISABLING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x73

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1601
    :cond_6
    const-string v1, "wifi_state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 1603
    const-string v1, "WiFiHandover"

    const-string v2, "WIFI_STATE_CHANGED_ACTION,WIFI_STATE_DISABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1606
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1608
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x72

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

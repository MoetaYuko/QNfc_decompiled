.class Lcom/android/nfc/handover/WiFiHandover$1;
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
    .line 1223
    iput-object p1, p0, Lcom/android/nfc/handover/WiFiHandover$1;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 1227
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1229
    .local v0, "action":Ljava/lang/String;
    const-string v1, "WiFiHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSoftApReceiver intent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1231
    const-string v1, "wifi_state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 1234
    const-string v1, "WiFiHandover"

    const-string v2, "Soft AP has stared !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$1;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1258
    :cond_0
    :goto_0
    return-void

    .line 1237
    :cond_1
    const-string v1, "wifi_state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1240
    const-string v1, "WiFiHandover"

    const-string v2, "Soft AP is disabling !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$1;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x74

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1244
    :cond_2
    const-string v1, "android.net.wifi.WIFI_AP_STA_JOIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1247
    const-string v1, "WiFiHandover"

    const-string v2, "a STA join Soft AP !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$1;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1250
    :cond_3
    const-string v1, "android.net.wifi.WIFI_AP_STA_LEAVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1253
    const-string v1, "WiFiHandover"

    const-string v2, "a STA leave Soft AP !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$1;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$100(Lcom/android/nfc/handover/WiFiHandover;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1255
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$1;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x70

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

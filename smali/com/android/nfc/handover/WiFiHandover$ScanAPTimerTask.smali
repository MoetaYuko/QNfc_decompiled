.class public Lcom/android/nfc/handover/WiFiHandover$ScanAPTimerTask;
.super Ljava/util/TimerTask;
.source "WiFiHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/WiFiHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScanAPTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/WiFiHandover;


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/WiFiHandover;)V
    .locals 0

    .prologue
    .line 1502
    iput-object p1, p0, Lcom/android/nfc/handover/WiFiHandover$ScanAPTimerTask;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$ScanAPTimerTask;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$300(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1508
    const-string v0, "WiFiHandover"

    const-string v1, "ScanAPTimerTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$ScanAPTimerTask;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$300(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 1511
    :cond_0
    return-void
.end method

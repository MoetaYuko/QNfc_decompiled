.class Lcom/android/nfc/handover/WiFiHandover$2;
.super Ljava/lang/Object;
.source "WiFiHandover.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


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
    .line 1398
    iput-object p1, p0, Lcom/android/nfc/handover/WiFiHandover$2;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 1418
    const-string v0, "WiFiHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect ap is fail,reason is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$2;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    const/4 v1, 0x4

    # setter for: Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I
    invoke-static {v0, v1}, Lcom/android/nfc/handover/WiFiHandover;->access$202(Lcom/android/nfc/handover/WiFiHandover;I)I

    .line 1420
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$2;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    # getter for: Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1422
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 1404
    const-string v0, "WiFiHandover"

    const-string v1, "connect ap is success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    return-void
.end method

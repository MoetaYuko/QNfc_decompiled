.class Lcom/android/nfc/NfcService$2;
.super Landroid/content/BroadcastReceiver;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 3326
    iput-object p1, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

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

    .line 3329
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3330
    .local v0, "action":Ljava/lang/String;
    const-string v2, "org.codeaurora.intent.action.stk.activate_notify"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3332
    const-string v2, "NfcService"

    const-string v3, "recieved ProactiveActivate intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    const-string v2, "slot_id"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3334
    .local v1, "slot":I
    if-gt v1, v4, :cond_1

    .line 3335
    const-string v2, "NfcService"

    const-string v3, "malformed ProactiveActivate intent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    .end local v1    # "slot":I
    :cond_0
    :goto_0
    return-void

    .line 3337
    .restart local v1    # "slot":I
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/dhimpl/NativeNfcManager;

    int-to-byte v3, v1

    invoke-virtual {v2, v3}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doActivateSwp(B)Z

    goto :goto_0
.end method

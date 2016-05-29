.class Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;
.super Ljava/lang/Object;
.source "ConfirmConnectToWifiNetworkActivity.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->doConnect(Landroid/net/wifi/WifiManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    # invokes: Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->showFailToast()V
    invoke-static {v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->access$100(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    .line 121
    return-void
.end method

.method public onSuccess()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    iget-object v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    const v2, 0x7f08000e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    # getter for: Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->access$200(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 116
    return-void
.end method

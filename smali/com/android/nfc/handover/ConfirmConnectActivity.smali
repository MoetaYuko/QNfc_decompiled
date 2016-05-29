.class public Lcom/android/nfc/handover/ConfirmConnectActivity;
.super Landroid/app/Activity;
.source "ConfirmConnectActivity.java"


# instance fields
.field mAlert:Landroid/app/AlertDialog;

.field mDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0, v6}, Lcom/android/nfc/handover/ConfirmConnectActivity;->requestWindowFeature(I)Z

    .line 40
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 41
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 42
    .local v3, "launchIntent":Landroid/content/Intent;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    iput-object v5, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 43
    iget-object v5, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->finish()V

    .line 82
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 49
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "deviceName":Ljava/lang/String;
    :goto_1
    const v5, 0x7f080034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "confirmString":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080035

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080036

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/nfc/handover/ConfirmConnectActivity$2;

    invoke-direct {v7, p0}, Lcom/android/nfc/handover/ConfirmConnectActivity$2;-><init>(Lcom/android/nfc/handover/ConfirmConnectActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080037

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/nfc/handover/ConfirmConnectActivity$1;

    invoke-direct {v7, p0}, Lcom/android/nfc/handover/ConfirmConnectActivity$1;-><init>(Lcom/android/nfc/handover/ConfirmConnectActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    .line 81
    iget-object v5, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 49
    .end local v1    # "confirmString":Ljava/lang/String;
    .end local v2    # "deviceName":Ljava/lang/String;
    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 87
    iget-object v1, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.nfc.handover.action.DENY_CONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "denyIntent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    .end local v0    # "denyIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

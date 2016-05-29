.class public Lcom/android/nfc/handover/HandoverTransferDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "HandoverTransferDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DIALOG_RECEIVE_COMPLETE:I = 0x2

.field private static final DIALOG_RECEIVE_ONGOING:I = 0x1


# instance fields
.field private mDeviceName:Ljava/lang/String;

.field private mDeviceView:Landroid/widget/TextView;

.field private mFileName:Ljava/lang/String;

.field private mFileNameView:Landroid/widget/TextView;

.field private mFileSizeView:Landroid/widget/TextView;

.field private mNotityID:I

.field private mPara:Lcom/android/internal/app/AlertController$AlertParams;

.field private mPercentView:Landroid/widget/TextView;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSourceAddress:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private mWhichDialog:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mWhichDialog:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mView:Landroid/view/View;

    .line 35
    new-instance v0, Lcom/android/nfc/handover/HandoverTransferDialog$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/HandoverTransferDialog$1;-><init>(Lcom/android/nfc/handover/HandoverTransferDialog;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransferDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mView:Landroid/view/View;

    .line 79
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mView:Landroid/view/View;

    const v3, 0x7f0c0007

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mDeviceView:Landroid/widget/TextView;

    .line 80
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mView:Landroid/view/View;

    const v3, 0x7f0c0008

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mFileNameView:Landroid/widget/TextView;

    .line 81
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mView:Landroid/view/View;

    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mFileSizeView:Landroid/widget/TextView;

    .line 82
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransferDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 83
    .local v1, "receivedIntent":Landroid/content/Intent;
    const-string v2, "com.android.nfc.handover.extra.transferinfo.devicename"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mDeviceName:Ljava/lang/String;

    .line 84
    const-string v2, "com.android.nfc.handover.extra.transferinfo.filename"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mFileName:Ljava/lang/String;

    .line 85
    const-string v2, "com.android.nfc.handover.extra.SOURCE_ADDRESS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mSourceAddress:Ljava/lang/String;

    .line 86
    const-string v2, "com.android.nfc.handover.extra.transferinfo.notifyId"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mNotityID:I

    .line 87
    const-string v2, "com.android.nfc.handover.extra.transferinfo.filesize"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 88
    .local v0, "fileSize":I
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mDeviceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mDeviceView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mDeviceView:Landroid/widget/TextView;

    const v3, 0x7f080038

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mDeviceName:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/nfc/handover/HandoverTransferDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mFileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mFileNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mFileNameView:Landroid/widget/TextView;

    const v3, 0x7f080039

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mFileName:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/nfc/handover/HandoverTransferDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_1
    if-eqz v0, :cond_2

    .line 97
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mFileSizeView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mFileSizeView:Landroid/widget/TextView;

    const v3, 0x7f08003a

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransferDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    int-to-long v6, v0

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/nfc/handover/HandoverTransferDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mView:Landroid/view/View;

    return-object v2
.end method

.method private setUpDialog()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    .line 61
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f08003b

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverTransferDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 62
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mWhichDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f08003c

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverTransferDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 64
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 65
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f08003d

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverTransferDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 66
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 71
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverTransferDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 72
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransferDialog;->setupAlert()V

    .line 73
    return-void

    .line 68
    :cond_1
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mWhichDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 111
    packed-switch p2, :pswitch_data_0

    .line 135
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransferDialog;->finish()V

    .line 136
    return-void

    .line 113
    :pswitch_0
    iget v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mWhichDialog:I

    if-ne v2, v4, :cond_1

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.nfc.handover.extra.SOURCE_ADDRESS"

    iget-object v3, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mSourceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v2, "com.android.nfc.handover.extra.INCOMING"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    const-string v2, "com.android.nfc.permission.ACCESS_INTERFACE"

    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/handover/HandoverTransferDialog;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 120
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/HandoverTransferDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 122
    .local v1, "mNotificationManager":Landroid/app/NotificationManager;
    iget v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mNotityID:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 123
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mNotificationManager":Landroid/app/NotificationManager;
    :cond_1
    iget v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mWhichDialog:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 128
    :pswitch_1
    iget v2, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mWhichDialog:I

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v0, "transferFilter":Landroid/content/IntentFilter;
    const-string v1, "com.android.nfc.handover.action.HANDOVER_TRANSFER_FINISH_DAILOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.android.nfc.permission.ACCESS_INTERFACE"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/nfc/handover/HandoverTransferDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 57
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverTransferDialog;->setUpDialog()V

    .line 58
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransferDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransferDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 106
    return-void
.end method

.class public Lcom/android/nfc/ConfirmNfcEnableActivity;
.super Landroid/app/Activity;
.source "ConfirmNfcEnableActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/nfc/ConfirmNfcEnableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 42
    .local v1, "appContext":Landroid/content/Context;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x2

    invoke-direct {v2, p0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 43
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/nfc/ConfirmNfcEnableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 44
    .local v3, "launchIntent":Landroid/content/Intent;
    const-string v6, "com.android.nfc.action.EXTRA_PKG"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/nfc/ConfirmNfcEnableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 46
    .local v5, "res":Landroid/content/res/Resources;
    const-string v6, "Are you sure you want to enable NFC?"

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080017

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/nfc/ConfirmNfcEnableActivity$2;

    invoke-direct {v8, p0, v4, v1}, Lcom/android/nfc/ConfirmNfcEnableActivity$2;-><init>(Lcom/android/nfc/ConfirmNfcEnableActivity;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080018

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/nfc/ConfirmNfcEnableActivity$1;

    invoke-direct {v8, p0, v4}, Lcom/android/nfc/ConfirmNfcEnableActivity$1;-><init>(Lcom/android/nfc/ConfirmNfcEnableActivity;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 67
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 68
    return-void
.end method

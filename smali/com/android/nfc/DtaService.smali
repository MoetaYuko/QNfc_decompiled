.class public final Lcom/android/nfc/DtaService;
.super Landroid/app/Service;
.source "DtaService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "DtaService"


# instance fields
.field private service:Lcom/android/nfc/NfcService$DtaHelperService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/nfc/DtaService;->service:Lcom/android/nfc/NfcService$DtaHelperService;

    .line 19
    iput-object v0, p0, Lcom/android/nfc/DtaService;->service:Lcom/android/nfc/NfcService$DtaHelperService;

    .line 20
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    const-string v0, "DtaService"

    const-string v1, "onBind()\'ed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/android/nfc/DtaService;->service:Lcom/android/nfc/NfcService$DtaHelperService;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 24
    const-string v1, "DtaService"

    const-string v2, "onCreate()\'ed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 26
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    .line 27
    .local v0, "service":Lcom/android/nfc/NfcService;
    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getDtaHelperService()Lcom/android/nfc/NfcService$DtaHelperService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/DtaService;->service:Lcom/android/nfc/NfcService$DtaHelperService;

    .line 28
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "DtaService"

    const-string v1, "onDestroy()\'ed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/DtaService;->service:Lcom/android/nfc/NfcService$DtaHelperService;

    .line 46
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 47
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    const-string v0, "DtaService"

    const-string v1, "onUnbind()\'ed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

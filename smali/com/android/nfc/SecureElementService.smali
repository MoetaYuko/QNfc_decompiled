.class public final Lcom/android/nfc/SecureElementService;
.super Landroid/app/Service;
.source "SecureElementService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SeService"


# instance fields
.field private service:Lqcom/nfc/IQNfcSecureElementManager$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/nfc/SecureElementService;->service:Lqcom/nfc/IQNfcSecureElementManager$Stub;

    .line 21
    iput-object v0, p0, Lcom/android/nfc/SecureElementService;->service:Lqcom/nfc/IQNfcSecureElementManager$Stub;

    .line 22
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    const-string v0, "SeService"

    const-string v1, "onBind()\'ed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/android/nfc/SecureElementService;->service:Lqcom/nfc/IQNfcSecureElementManager$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 26
    const-string v1, "SeService"

    const-string v2, "onCreate()\'ed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 28
    invoke-static {}, Lcom/android/nfc/QNfcService;->getInstance()Lcom/android/nfc/QNfcService;

    move-result-object v0

    .line 29
    .local v0, "service":Lcom/android/nfc/QNfcService;
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/android/nfc/QNfcService;->getSecureElementManagerStub()Lqcom/nfc/IQNfcSecureElementManager$Stub;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/SecureElementService;->service:Lqcom/nfc/IQNfcSecureElementManager$Stub;

    .line 31
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "SeService"

    const-string v1, "onDestroy()\'ed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/SecureElementService;->service:Lqcom/nfc/IQNfcSecureElementManager$Stub;

    .line 49
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 50
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    const-string v0, "SeService"

    const-string v1, "onUnbind()\'ed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

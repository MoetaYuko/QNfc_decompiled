.class public Lcom/android/nfc/NfcService$InfoService;
.super Landroid/app/Service;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoService"
.end annotation


# instance fields
.field private myService:Landroid/nfc/IGetNFCByteArray$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3536
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 3537
    new-instance v0, Lcom/android/nfc/NfcService$InfoService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$InfoService$1;-><init>(Lcom/android/nfc/NfcService$InfoService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService$InfoService;->myService:Landroid/nfc/IGetNFCByteArray$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3562
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    iget-object v0, p0, Lcom/android/nfc/NfcService$InfoService;->myService:Landroid/nfc/IGetNFCByteArray$Stub;

    invoke-virtual {v0}, Landroid/nfc/IGetNFCByteArray$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 3568
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 3570
    return-void
.end method

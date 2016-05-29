.class public abstract Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;
.super Ljava/lang/Object;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NfcServiceExtentionHandler"
.end annotation


# instance fields
.field baseHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;Landroid/os/Handler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 2870
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;->setHandler(Landroid/os/Handler;)V

    return-void
.end method

.method private setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2873
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;->baseHandler:Landroid/os/Handler;

    .line 2874
    return-void
.end method


# virtual methods
.method protected abstract handleMessage(Landroid/os/Message;)V
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2882
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2883
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2884
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2885
    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;->sendMessage(Landroid/os/Message;)V

    .line 2886
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2876
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;->baseHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2877
    .local v0, "encapsulatingMessage":Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2878
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2879
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;->baseHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2880
    return-void
.end method

.class public abstract Lcom/android/nfc/QNfcService$HandlerCallback;
.super Ljava/lang/Object;
.source "QNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/QNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HandlerCallback"
.end annotation


# instance fields
.field private mHandler:Lcom/android/nfc/QNfcService$QNfcServiceHandler;

.field private what:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/QNfcService$HandlerCallback;->mHandler:Lcom/android/nfc/QNfcService$QNfcServiceHandler;

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/QNfcService$HandlerCallback;->what:I

    return-void
.end method

.method static synthetic access$202(Lcom/android/nfc/QNfcService$HandlerCallback;Lcom/android/nfc/QNfcService$QNfcServiceHandler;)Lcom/android/nfc/QNfcService$QNfcServiceHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/QNfcService$HandlerCallback;
    .param p1, "x1"    # Lcom/android/nfc/QNfcService$QNfcServiceHandler;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/nfc/QNfcService$HandlerCallback;->mHandler:Lcom/android/nfc/QNfcService$QNfcServiceHandler;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/nfc/QNfcService$HandlerCallback;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/QNfcService$HandlerCallback;
    .param p1, "x1"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/android/nfc/QNfcService$HandlerCallback;->what:I

    return p1
.end method


# virtual methods
.method protected abstract handleMessage(Landroid/os/Message;)V
.end method

.method sendMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 137
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 138
    .local v0, "encapsulatingMessage":Landroid/os/Message;
    iget v1, p0, Lcom/android/nfc/QNfcService$HandlerCallback;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 139
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Lcom/android/nfc/QNfcService$HandlerCallback;->mHandler:Lcom/android/nfc/QNfcService$QNfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/QNfcService$QNfcServiceHandler;->sendMessage(Landroid/os/Message;)V

    .line 141
    return-void
.end method

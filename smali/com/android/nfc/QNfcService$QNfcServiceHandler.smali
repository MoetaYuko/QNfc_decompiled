.class final Lcom/android/nfc/QNfcService$QNfcServiceHandler;
.super Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;
.source "QNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/QNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QNfcServiceHandler"
.end annotation


# instance fields
.field private mRegisteredHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/QNfcService$HandlerCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;-><init>()V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/QNfcService$QNfcServiceHandler;->mRegisteredHandlers:Ljava/util/ArrayList;

    .line 151
    return-void
.end method


# virtual methods
.method public declared-synchronized addCallback(Lcom/android/nfc/QNfcService$HandlerCallback;)V
    .locals 2
    .param p1, "cbk"    # Lcom/android/nfc/QNfcService$HandlerCallback;

    .prologue
    .line 159
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attempted to regsiter a null handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 160
    :cond_0
    :try_start_1
    # setter for: Lcom/android/nfc/QNfcService$HandlerCallback;->mHandler:Lcom/android/nfc/QNfcService$QNfcServiceHandler;
    invoke-static {p1, p0}, Lcom/android/nfc/QNfcService$HandlerCallback;->access$202(Lcom/android/nfc/QNfcService$HandlerCallback;Lcom/android/nfc/QNfcService$QNfcServiceHandler;)Lcom/android/nfc/QNfcService$QNfcServiceHandler;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/QNfcService$QNfcServiceHandler;->mRegisteredHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    # setter for: Lcom/android/nfc/QNfcService$HandlerCallback;->what:I
    invoke-static {p1, v0}, Lcom/android/nfc/QNfcService$HandlerCallback;->access$302(Lcom/android/nfc/QNfcService$HandlerCallback;I)I

    .line 162
    iget-object v0, p0, Lcom/android/nfc/QNfcService$QNfcServiceHandler;->mRegisteredHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    monitor-exit p0

    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/nfc/QNfcService$QNfcServiceHandler;->mRegisteredHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/nfc/QNfcService$QNfcServiceHandler;->mRegisteredHandlers:Ljava/util/ArrayList;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/QNfcService$HandlerCallback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/android/nfc/QNfcService$HandlerCallback;->handleMessage(Landroid/os/Message;)V

    .line 156
    :cond_0
    return-void
.end method

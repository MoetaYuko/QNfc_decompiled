.class final Lcom/android/nfc/NfcService$NfcServiceHandler;
.super Landroid/os/Handler;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 2891
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/nfc/NfcService$NfcServiceHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService$NfcServiceHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 2891
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private dispatchDtaTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V
    .locals 6
    .param p1, "tagEndpoint"    # Lcom/android/nfc/DeviceHost$TagEndpoint;
    .param p2, "readerParams"    # Lcom/android/nfc/NfcService$ReaderModeParams;

    .prologue
    .line 3283
    new-instance v0, Landroid/nfc/dta/TagDta;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v1

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v2

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v4

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mNfcTagServiceDta:Lcom/android/nfc/NfcService$TagServiceDta;

    invoke-direct/range {v0 .. v5}, Landroid/nfc/dta/TagDta;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/dta/INfcTagDta;)V

    .line 3285
    .local v0, "tag":Landroid/nfc/dta/TagDta;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V

    .line 3286
    if-eqz p2, :cond_0

    .line 3287
    const-string v1, "NfcService"

    const-string v2, "ReaderModeParams not supported in DTA mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/dta/TagDta;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3290
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->unregisterObject(I)V

    .line 3291
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 3295
    :goto_0
    return-void

    .line 3293
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto :goto_0
.end method

.method private dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V
    .locals 10
    .param p1, "tagEndpoint"    # Lcom/android/nfc/DeviceHost$TagEndpoint;
    .param p2, "readerParams"    # Lcom/android/nfc/NfcService$ReaderModeParams;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 3250
    new-instance v0, Landroid/nfc/Tag;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v1

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v2

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v4

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    invoke-direct/range {v0 .. v5}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    .line 3252
    .local v0, "tag":Landroid/nfc/Tag;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V

    .line 3253
    if-eqz p2, :cond_2

    .line 3255
    :try_start_0
    iget v1, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_0

    .line 3256
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 3258
    :cond_0
    iget-object v1, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    if-eqz v1, :cond_2

    .line 3259
    iget-object v1, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    invoke-interface {v1, v0}, Landroid/nfc/IAppCallback;->onTagDiscovered(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3280
    :cond_1
    :goto_0
    return-void

    .line 3264
    :catch_0
    move-exception v7

    .line 3265
    .local v7, "e":Landroid/os/RemoteException;
    const-string v1, "NfcService"

    const-string v2, "Reader mode remote has died, falling back."

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3273
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    move-result v6

    .line 3274
    .local v6, "dispatchResult":I
    if-ne v6, v9, :cond_3

    .line 3275
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->unregisterObject(I)V

    .line 3276
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v9}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto :goto_0

    .line 3267
    .end local v6    # "dispatchResult":I
    :catch_1
    move-exception v7

    .line 3269
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "NfcService"

    const-string v2, "App exception, not dispatching."

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3277
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "dispatchResult":I
    :cond_3
    if-ne v6, v8, :cond_1

    .line 3278
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v8}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto :goto_0
.end method

.method private indicateLlcpLinkActivation()V
    .locals 7

    .prologue
    .line 3138
    const/4 v1, 0x1

    .line 3139
    .local v1, "enableMockLlcpLinkActivatedCallback":Z
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost;->dta_get_pattern_number()I

    move-result v5

    const/16 v6, 0x1200

    if-lt v5, v6, :cond_0

    .line 3141
    :try_start_0
    const-string v4, "dta_llcp_activated"

    .line 3142
    .local v4, "txt":Ljava/lang/String;
    const-string v5, "text/plain"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6}, Landroid/nfc/NdefRecord;->createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v3

    .line 3143
    .local v3, "textRecord":Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/nfc/NdefRecord;

    invoke-direct {v2, v3, v5}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 3144
    .local v2, "ndef":Landroid/nfc/NdefMessage;
    const-string v5, "NfcService"

    const-string v6, "[DTA] Signalling LLCP link activation using a fake tag event"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5, v2}, Lcom/android/nfc/NfcService;->sendMockNdefTag(Landroid/nfc/NdefMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3150
    .end local v2    # "ndef":Landroid/nfc/NdefMessage;
    .end local v3    # "textRecord":Landroid/nfc/NdefRecord;
    .end local v4    # "txt":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3146
    :catch_0
    move-exception v0

    .line 3147
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "NfcService"

    const-string v6, "[DTA] failed mock NdefMessage generation"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private llcpActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)Z
    .locals 4
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    const/4 v0, 0x1

    .line 3189
    const-string v1, "NfcService"

    const-string v2, "LLCP Activation message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v1

    if-nez v1, :cond_4

    .line 3192
    const-string v1, "NfcService"

    const-string v2, "NativeP2pDevice.MODE_P2P_TARGET"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->connect()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3195
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doCheckLlcp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3197
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doActivateLlcp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3198
    const-string v1, "NfcService"

    const-string v2, "Initiator Activate LLCP OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 3201
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3202
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3203
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getLlcpVersion()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/P2pLinkManager;->onLlcpActivated(B)V

    .line 3205
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->indicateLlcpLinkActivation()V

    .line 3246
    :goto_0
    return v0

    .line 3202
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3210
    :cond_0
    const-string v0, "NfcService"

    const-string v1, "Initiator LLCP activation failed. Disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    .line 3246
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3214
    :cond_2
    const-string v0, "NfcService"

    const-string v1, "Remote Target does not support LLCP. Disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto :goto_1

    .line 3218
    :cond_3
    const-string v0, "NfcService"

    const-string v1, "Cannot connect remote Target. Polling loop restarted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3224
    :cond_4
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 3225
    const-string v1, "NfcService"

    const-string v2, "NativeP2pDevice.MODE_P2P_INITIATOR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doCheckLlcp()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3229
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doActivateLlcp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3230
    const-string v1, "NfcService"

    const-string v2, "Target Activate LLCP OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 3233
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3234
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3235
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getLlcpVersion()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/P2pLinkManager;->onLlcpActivated(B)V

    .line 3237
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->indicateLlcpLinkActivation()V

    goto :goto_0

    .line 3234
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 3242
    :cond_5
    const-string v0, "NfcService"

    const-string v1, "checkLlcp failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3154
    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3156
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v5}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    .line 3157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3158
    .local v1, "matchingPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3159
    .local v4, "preferredPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p0

    .line 3160
    :try_start_0
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 3161
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    .line 3162
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfceeAccessControl;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Lcom/android/nfc/NfceeAccessControl;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3163
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3164
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/nfc/cardemulation/CardEmulationManager;->packageHasPreferredService(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3166
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3185
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 3171
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 3175
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3176
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3177
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 3180
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3181
    .restart local v2    # "packageName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3182
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 3185
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3186
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2894
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    .line 3130
    :pswitch_0
    const-string v26, "NfcService"

    const-string v27, "Unknown message received"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3133
    :cond_0
    :goto_0
    return-void

    .line 2896
    :pswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    .line 2897
    .local v22, "route":I
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 2898
    .local v6, "aid":Ljava/lang/String;
    const-string v26, "*"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 2900
    const/16 v26, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 2901
    .local v19, "prefixAid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v26 .. v26}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v26

    invoke-static/range {v19 .. v19}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v22

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/nfc/DeviceHost;->routeAid([BIZZ)Z

    goto :goto_0

    .line 2903
    .end local v19    # "prefixAid":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v26 .. v26}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v26

    invoke-static {v6}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v22

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/nfc/DeviceHost;->routeAid([BIZZ)Z

    goto :goto_0

    .line 2909
    .end local v6    # "aid":Ljava/lang/String;
    .end local v22    # "route":I
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 2910
    .restart local v6    # "aid":Ljava/lang/String;
    const-string v26, "*"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 2912
    const/16 v26, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 2913
    .restart local v19    # "prefixAid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v26 .. v26}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v26

    invoke-static/range {v19 .. v19}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lcom/android/nfc/DeviceHost;->unrouteAid([B)Z

    goto/16 :goto_0

    .line 2915
    .end local v19    # "prefixAid":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v26 .. v26}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v26

    invoke-static {v6}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lcom/android/nfc/DeviceHost;->unrouteAid([B)Z

    goto/16 :goto_0

    .line 2920
    .end local v6    # "aid":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/nfc/BeamShareData;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager;->onManualBeamInvoke(Landroid/nfc/BeamShareData;)V

    goto/16 :goto_0

    .line 2924
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 2925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    goto/16 :goto_0

    .line 2930
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 2931
    .local v23, "seName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v26 .. v26}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->setDefaultRoute(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2935
    .end local v23    # "seName":Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/nfc/NdefMessage;

    .line 2936
    .local v16, "ndefMsg":Landroid/nfc/NdefMessage;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2937
    .local v13, "extras":Landroid/os/Bundle;
    const-string v26, "ndefmsg"

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2938
    const-string v26, "ndefmaxlength"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2939
    const-string v26, "ndefcardstate"

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2940
    const-string v26, "ndeftype"

    const/16 v27, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2942
    const/4 v10, 0x0

    .line 2944
    .local v10, "delivered":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/nfc/NfcService$NfcAdapterService;->in_dta_mode()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 2945
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x6

    aput v29, v27, v28

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Landroid/os/Bundle;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v13, v28, v29

    invoke-static/range {v26 .. v28}, Landroid/nfc/dta/TagDta;->createMockTag([B[I[Landroid/os/Bundle;)Landroid/nfc/dta/TagDta;

    move-result-object v25

    .line 2948
    .local v25, "tag":Landroid/nfc/dta/TagDta;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/dta/TagDta;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 2949
    const/4 v12, 0x1

    .line 2953
    .local v12, "dispatchStatus":I
    :goto_1
    const-string v26, "NfcService"

    invoke-virtual/range {v25 .. v25}, Landroid/nfc/dta/TagDta;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    .end local v25    # "tag":Landroid/nfc/dta/TagDta;
    :goto_2
    const-string v26, "NfcService"

    const-string v27, "mock NDEF tag, starting corresponding activity"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v12, v0, :cond_5

    .line 2964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_0

    .line 2951
    .end local v12    # "dispatchStatus":I
    .restart local v25    # "tag":Landroid/nfc/dta/TagDta;
    :cond_3
    const/4 v12, 0x2

    .restart local v12    # "dispatchStatus":I
    goto :goto_1

    .line 2955
    .end local v12    # "dispatchStatus":I
    .end local v25    # "tag":Landroid/nfc/dta/TagDta;
    :cond_4
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x6

    aput v29, v27, v28

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Landroid/os/Bundle;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v13, v28, v29

    invoke-static/range {v26 .. v28}, Landroid/nfc/Tag;->createMockTag([B[I[Landroid/os/Bundle;)Landroid/nfc/Tag;

    move-result-object v25

    .line 2958
    .local v25, "tag":Landroid/nfc/Tag;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    move-result v12

    .line 2959
    .restart local v12    # "dispatchStatus":I
    const-string v26, "NfcService"

    invoke-virtual/range {v25 .. v25}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2965
    .end local v25    # "tag":Landroid/nfc/Tag;
    :cond_5
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v12, v0, :cond_0

    .line 2966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_0

    .line 2972
    .end local v10    # "delivered":Z
    .end local v12    # "dispatchStatus":I
    .end local v13    # "extras":Landroid/os/Bundle;
    .end local v16    # "ndefMsg":Landroid/nfc/NdefMessage;
    :pswitch_7
    const-string v26, "NfcService"

    const-string v27, "Tag detected, notifying applications"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2977
    .local v25, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    const/16 v21, 0x0

    .line 2978
    .local v21, "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    const/16 v20, 0x7d

    .line 2979
    .local v20, "presenceCheckDelay":I
    new-instance v7, Lcom/android/nfc/NfcService$NfcServiceHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler$1;-><init>(Lcom/android/nfc/NfcService$NfcServiceHandler;)V

    .line 2986
    .local v7, "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 2987
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    move-object/from16 v21, v0

    .line 2988
    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2989
    if-eqz v21, :cond_6

    .line 2990
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/nfc/NfcService$ReaderModeParams;->presenceCheckDelay:I

    move/from16 v20, v0

    .line 2991
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    move/from16 v26, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x80

    move/from16 v26, v0

    if-eqz v26, :cond_6

    .line 2992
    const-string v26, "NfcService"

    const-string v27, "Skipping NDEF detection in reader mode"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-interface {v0, v1, v7}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 2994
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    goto/16 :goto_0

    .line 2988
    :catchall_0
    move-exception v26

    :try_start_1
    monitor-exit v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v26

    .line 2999
    :cond_6
    if-eqz v21, :cond_7

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    move/from16 v26, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x100

    move/from16 v26, v0

    if-nez v26, :cond_9

    :cond_7
    const/16 v18, 0x1

    .line 3001
    .local v18, "playSound":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    if-eqz v18, :cond_8

    .line 3002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 3004
    :cond_8
    const/16 v26, 0x8

    invoke-interface/range {v25 .. v26}, Lcom/android/nfc/DeviceHost$TagEndpoint;->hasTech(I)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 3006
    const-string v26, "NfcService"

    const-string v27, "Mifare Classic Tag Op"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    .line 3008
    const/16 v26, 0x1f4

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v0, v1, v7}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    goto/16 :goto_0

    .line 2999
    .end local v18    # "playSound":Z
    :cond_9
    const/16 v18, 0x0

    goto :goto_3

    .line 3011
    .restart local v18    # "playSound":Z
    :cond_a
    invoke-interface/range {v25 .. v25}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getConnectedTechnology()I

    move-result v26

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 3016
    const-string v26, "NfcService"

    const-string v27, "Skipping NDEF detection for NFC Barcode"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-interface {v0, v1, v7}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 3018
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    goto/16 :goto_0

    .line 3022
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/nfc/NfcService$NfcAdapterService;->in_dta_mode()Z

    move-result v26

    if-nez v26, :cond_e

    .line 3024
    invoke-interface/range {v25 .. v25}, Lcom/android/nfc/DeviceHost$TagEndpoint;->findAndReadNdef()Landroid/nfc/NdefMessage;

    move-result-object v16

    .line 3025
    .restart local v16    # "ndefMsg":Landroid/nfc/NdefMessage;
    if-eqz v16, :cond_c

    .line 3026
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-interface {v0, v1, v7}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 3027
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    goto/16 :goto_0

    .line 3029
    :cond_c
    invoke-interface/range {v25 .. v25}, Lcom/android/nfc/DeviceHost$TagEndpoint;->reconnect()Z

    move-result v26

    if-eqz v26, :cond_d

    .line 3030
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-interface {v0, v1, v7}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 3031
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    goto/16 :goto_0

    .line 3033
    :cond_d
    invoke-interface/range {v25 .. v25}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 3034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_0

    .line 3040
    .end local v16    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/nfc/NfcService$NfcAdapterService;->in_dta_mode()Z

    move-result v26

    if-eqz v26, :cond_f

    .line 3041
    const-string v26, "NfcService"

    const-string v27, "[DTA] Tag detected, dta_fake_ndef_tech"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v26, v25

    .line 3044
    check-cast v26, Lcom/android/nfc/dhimpl/NativeNfcTag;

    invoke-virtual/range {v26 .. v26}, Lcom/android/nfc/dhimpl/NativeNfcTag;->dta_fake_ndef_tech()V

    .line 3045
    const-string v26, "NfcService"

    const-string v27, "[DTA] Tag detected,dispatching tag endpoint"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchDtaTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    .line 3048
    const-string v26, "NfcService"

    const-string v27, "Tag detected, NOT starting presence checking."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Lcom/android/nfc/DeviceHost$TagEndpoint;->setIsPresent(Z)V

    goto/16 :goto_0

    .line 3056
    .end local v7    # "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    .end local v18    # "playSound":Z
    .end local v20    # "presenceCheckDelay":I
    .end local v21    # "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    .end local v25    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    move/from16 v26, v0

    if-eqz v26, :cond_10

    .line 3057
    new-instance v5, Landroid/content/Intent;

    const-string v26, "com.android.nfc.action.LLCP_UP"

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3058
    .local v5, "actIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3060
    .end local v5    # "actIntent":Landroid/content/Intent;
    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->llcpActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)Z

    goto/16 :goto_0

    .line 3064
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    move/from16 v26, v0

    if-eqz v26, :cond_11

    .line 3065
    new-instance v9, Landroid/content/Intent;

    const-string v26, "com.android.nfc.action.LLCP_DOWN"

    move-object/from16 v0, v26

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3066
    .local v9, "deactIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3068
    .end local v9    # "deactIntent":Landroid/content/Intent;
    :cond_11
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 3069
    .local v11, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    const/16 v17, 0x0

    .line 3071
    .local v17, "needsDisconnect":Z
    const-string v26, "NfcService"

    const-string v27, "LLCP Link Deactivated message. Restart polling loop."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 3074
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-interface {v11}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-eqz v26, :cond_12

    .line 3076
    invoke-interface {v11}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v26

    if-nez v26, :cond_14

    .line 3077
    const-string v26, "NfcService"

    const-string v28, "disconnecting from target"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    const/16 v17, 0x1

    .line 3083
    :cond_12
    :goto_4
    monitor-exit v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3084
    if-eqz v17, :cond_13

    .line 3085
    invoke-interface {v11}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    .line 3088
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    goto/16 :goto_0

    .line 3080
    :cond_14
    :try_start_3
    const-string v26, "NfcService"

    const-string v28, "not disconnecting from initiator"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3083
    :catchall_1
    move-exception v26

    monitor-exit v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v26

    .line 3091
    .end local v11    # "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    .end local v17    # "needsDisconnect":Z
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/nfc/P2pLinkManager;->onLlcpFirstPacketReceived()V

    goto/16 :goto_0

    .line 3094
    :pswitch_b
    new-instance v15, Landroid/content/Intent;

    const-string v26, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    move-object/from16 v0, v26

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3095
    .local v15, "fieldOnIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3098
    .end local v15    # "fieldOnIntent":Landroid/content/Intent;
    :pswitch_c
    new-instance v14, Landroid/content/Intent;

    const-string v26, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3099
    .local v14, "fieldOffIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3103
    .end local v14    # "fieldOffIntent":Landroid/content/Intent;
    :pswitch_d
    const-string v26, "NfcService"

    const-string v27, "MSG_REQUEST_RESTART_NFC"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    new-instance v26, Lcom/android/nfc/NfcService$EnableDisableTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x2

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3105
    new-instance v26, Lcom/android/nfc/NfcService$EnableDisableTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 3109
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/nfc/NfcService;->mExtentionHandler:Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 3111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/nfc/NfcService;->mExtentionHandler:Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Message;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3116
    :pswitch_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 3118
    .local v24, "slotId":I
    const-string v26, "NfcService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "MSG_HCI_EVT_CONNECTIVITY slotID = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3119
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 3120
    .local v8, "catIntent":Landroid/content/Intent;
    const-string v26, "org.codeaurora.intent.action.stk.hci_connectivity"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3121
    const-string v26, "SLOT_ID"

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3126
    .end local v8    # "catIntent":Landroid/content/Intent;
    .end local v24    # "slotId":I
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/nfc/NfcService$NfcAdapterService;->resumePolling()V

    goto/16 :goto_0

    .line 2894
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_c
        :pswitch_5
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

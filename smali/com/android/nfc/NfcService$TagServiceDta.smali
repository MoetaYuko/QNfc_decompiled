.class final Lcom/android/nfc/NfcService$TagServiceDta;
.super Landroid/nfc/dta/INfcTagDta$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TagServiceDta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 2069
    iput-object p1, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/nfc/dta/INfcTagDta$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public canMakeReadOnly(I)Z
    .locals 1
    .param p1, "ndefType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2405
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->canMakeReadOnly(I)Z

    move-result v0

    return v0
.end method

.method public close(I)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2072
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2074
    const/4 v0, 0x0

    .line 2076
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2077
    const/16 v1, -0x11

    .line 2090
    :goto_0
    return v1

    .line 2081
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2082
    .restart local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_1

    .line 2084
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->unregisterObject(I)V

    .line 2085
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 2086
    const/4 v1, 0x0

    goto :goto_0

    .line 2089
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 2090
    const/4 v1, -0x5

    goto :goto_0
.end method

.method public connect(II)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .param p2, "technology"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x5

    .line 2095
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2097
    const/4 v0, 0x0

    .line 2099
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2100
    const/16 v1, -0x11

    .line 2119
    :cond_0
    :goto_0
    return v1

    .line 2104
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2105
    .restart local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_0

    .line 2109
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2116
    invoke-interface {v0, p2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->connect(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2117
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public formatNdef(I[B)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 2323
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2328
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2329
    const/16 v1, -0x11

    .line 2341
    :cond_0
    :goto_0
    return v1

    .line 2333
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2334
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_0

    .line 2338
    invoke-interface {v0, p2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->formatNdef([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2339
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExtendedLengthApdusSupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2415
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getExtendedLengthApdusSupported()Z

    move-result v0

    return v0
.end method

.method public getMaxTransceiveLength(I)I
    .locals 1
    .param p1, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2410
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->getMaxTransceiveLength(I)I

    move-result v0

    return v0
.end method

.method public getTechList(I)[I
    .locals 3
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2148
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2151
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2160
    :cond_0
    :goto_0
    return-object v1

    .line 2156
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2157
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_0

    .line 2158
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v1

    goto :goto_0
.end method

.method public getTimeout(I)I
    .locals 1
    .param p1, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2393
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->getTimeout(I)I

    move-result v0

    return v0
.end method

.method public in_dta_mode()Z
    .locals 1

    .prologue
    .line 2420
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->in_dta_mode()Z

    move-result v0

    return v0
.end method

.method public isNdef(I)Z
    .locals 4
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2183
    iget-object v3, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2185
    const/4 v1, 0x0

    .line 2188
    .local v1, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v3, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2198
    :cond_0
    :goto_0
    return v2

    .line 2193
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2194
    .restart local v1    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 2195
    .local v0, "ndefInfo":[I
    if-eqz v1, :cond_0

    .line 2198
    invoke-interface {v1, v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->checkNdef([I)Z

    move-result v2

    goto :goto_0
.end method

.method public isPresent(I)Z
    .locals 3
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2165
    const/4 v0, 0x0

    .line 2168
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2178
    :cond_0
    :goto_0
    return v1

    .line 2173
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2174
    .restart local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_0

    .line 2178
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v1

    goto :goto_0
.end method

.method public ndefIsWritable(I)Z
    .locals 1
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2294
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ndefMakeReadOnly(I)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 2299
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2304
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2305
    const/16 v1, -0x11

    .line 2317
    :cond_0
    :goto_0
    return v1

    .line 2309
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2310
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_0

    .line 2314
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->makeReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2315
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ndefRead(I)Landroid/nfc/NdefMessage;
    .locals 5
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2238
    iget-object v4, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2243
    iget-object v4, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2262
    :cond_0
    :goto_0
    return-object v3

    .line 2248
    :cond_1
    iget-object v4, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2249
    .local v2, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v2, :cond_0

    .line 2250
    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->readNdef()[B

    move-result-object v0

    .line 2251
    .local v0, "buf":[B
    if-eqz v0, :cond_0

    .line 2257
    :try_start_0
    new-instance v4, Landroid/nfc/NdefMessage;

    invoke-direct {v4, v0}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    .line 2258
    :catch_0
    move-exception v1

    .line 2259
    .local v1, "e":Landroid/nfc/FormatException;
    goto :goto_0
.end method

.method public ndefWrite(ILandroid/nfc/NdefMessage;)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .param p2, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 2267
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2272
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2273
    const/16 v1, -0x11

    .line 2287
    :cond_0
    :goto_0
    return v1

    .line 2277
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2278
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_0

    .line 2282
    if-nez p2, :cond_2

    const/4 v1, -0x8

    goto :goto_0

    .line 2284
    :cond_2
    invoke-virtual {p2}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->writeNdef([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2285
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reconnect(I)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x5

    .line 2125
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2127
    const/4 v0, 0x0

    .line 2130
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2131
    const/16 v1, -0x11

    .line 2143
    :cond_0
    :goto_0
    return v1

    .line 2135
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2136
    .restart local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_0

    .line 2137
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->reconnect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2138
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rediscover(I)Landroid/nfc/dta/TagDta;
    .locals 7
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2347
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2349
    const/4 v6, 0x0

    .line 2352
    .local v6, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2375
    :cond_0
    :goto_0
    return-object v0

    .line 2357
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v6, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2358
    .restart local v6    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v6, :cond_0

    .line 2367
    const/4 v1, 0x6

    invoke-interface {v6, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->removeTechnology(I)V

    .line 2368
    const/4 v1, 0x7

    invoke-interface {v6, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->removeTechnology(I)V

    .line 2369
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->findAndReadNdef()Landroid/nfc/NdefMessage;

    .line 2371
    new-instance v0, Landroid/nfc/dta/TagDta;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v1

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v2

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/nfc/dta/TagDta;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/dta/INfcTagDta;)V

    .line 2373
    .local v0, "newTag":Landroid/nfc/dta/TagDta;
    goto :goto_0
.end method

.method public resetTimeouts()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2398
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2400
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->resetTimeouts()V

    .line 2401
    return-void
.end method

.method public setTimeout(II)I
    .locals 2
    .param p1, "tech"    # I
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2380
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2381
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/nfc/DeviceHost;->setTimeout(II)Z

    move-result v0

    .line 2382
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 2383
    const/4 v1, 0x0

    .line 2385
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x8

    goto :goto_0
.end method

.method public transceive(I[BZ)Landroid/nfc/TransceiveResult;
    .locals 8
    .param p1, "nativeHandle"    # I
    .param p2, "data"    # [B
    .param p3, "raw"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 2204
    iget-object v5, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2206
    const/4 v2, 0x0

    .line 2210
    .local v2, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v5, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2233
    :cond_0
    :goto_0
    return-object v4

    .line 2215
    :cond_1
    iget-object v5, p0, Lcom/android/nfc/NfcService$TagServiceDta;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v2, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2216
    .restart local v2    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v2, :cond_0

    .line 2218
    array-length v5, p2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getConnectedTechnology()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/nfc/NfcService$TagServiceDta;->getMaxTransceiveLength(I)I

    move-result v6

    if-le v5, v6, :cond_2

    .line 2219
    new-instance v5, Landroid/nfc/TransceiveResult;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v4}, Landroid/nfc/TransceiveResult;-><init>(I[B)V

    move-object v4, v5

    goto :goto_0

    .line 2221
    :cond_2
    new-array v3, v7, [I

    .line 2222
    .local v3, "targetLost":[I
    invoke-interface {v2, p2, p3, v3}, Lcom/android/nfc/DeviceHost$TagEndpoint;->transceive([BZ[I)[B

    move-result-object v0

    .line 2224
    .local v0, "response":[B
    if-eqz v0, :cond_3

    .line 2225
    const/4 v1, 0x0

    .line 2231
    .local v1, "result":I
    :goto_1
    new-instance v4, Landroid/nfc/TransceiveResult;

    invoke-direct {v4, v1, v0}, Landroid/nfc/TransceiveResult;-><init>(I[B)V

    goto :goto_0

    .line 2226
    .end local v1    # "result":I
    :cond_3
    const/4 v4, 0x0

    aget v4, v3, v4

    if-ne v4, v7, :cond_4

    .line 2227
    const/4 v1, 0x2

    .restart local v1    # "result":I
    goto :goto_1

    .line 2229
    .end local v1    # "result":I
    :cond_4
    const/4 v1, 0x1

    .restart local v1    # "result":I
    goto :goto_1
.end method

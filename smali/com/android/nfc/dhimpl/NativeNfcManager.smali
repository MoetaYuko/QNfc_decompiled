.class public Lcom/android/nfc/dhimpl/NativeNfcManager;
.super Ljava/lang/Object;
.source "NativeNfcManager.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/dhimpl/NativeNfcManager$1;,
        Lcom/android/nfc/dhimpl/NativeNfcManager$RfOffTask;
    }
.end annotation


# static fields
.field static final DEFAULT_LLCP_MIU:I = 0x7bc

.field static final DEFAULT_LLCP_RWSIZE:I = 0x2

.field static final DRIVER_NAME:Ljava/lang/String; = "android-nci"

.field static final PREF:Ljava/lang/String; = "NciDeviceHost"

.field static final PREF_RESET_COUNT:Ljava/lang/String; = "pref_reset_count"

.field private static final TAG:Ljava/lang/String; = "NativeNfcManager"

.field private static mQHostListener:Lcom/android/nfc/QHostListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

.field private mNative:J

.field pendingRfUpdate:Lcom/android/nfc/dhimpl/NativeNfcManager$RfOffTask;

.field rfFieldUpdateTimer:Ljava/util/Timer;

.field final sync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "qnfc_nci_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/nfc/DeviceHost$DeviceHostListener;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->sync:Ljava/lang/Object;

    .line 525
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->rfFieldUpdateTimer:Ljava/util/Timer;

    .line 70
    iput-object p2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    .line 71
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->initializeNativeStructure()Z

    .line 72
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/dhimpl/NativeNfcManager;)Lcom/android/nfc/DeviceHost$DeviceHostListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/dhimpl/NativeNfcManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    return-object v0
.end method

.method private native doCreateLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;
.end method

.method private native doCreateLlcpServiceSocket(ILjava/lang/String;III)Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;
.end method

.method private native doCreateLlcpSocket(IIII)Lcom/android/nfc/dhimpl/NativeLlcpSocket;
.end method

.method private native doDeinitialize()Z
.end method

.method private native doDisableScreenOffSuspend()V
.end method

.method private native doDownload()Z
.end method

.method private native doDump()Ljava/lang/String;
.end method

.method private native doEnableDisableClfAidFilterCondition(ZB)Z
.end method

.method private native doEnableDiscovery(IZZZZIZ)Z
.end method

.method private native doEnableScreenOffSuspend()V
.end method

.method private native doGetDefaultActiveSecureElement()Ljava/lang/String;
.end method

.method private native doGetEeRoutingReloadAtReboot()Z
.end method

.method private native doGetEeRoutingState()I
.end method

.method private native doGetNfceeId(Ljava/lang/String;)I
.end method

.method private native doGetRamDump(II)[B
.end method

.method private native doGetSecureElementList()Ljava/lang/String;
.end method

.method private native doGetSecureElementName(I)Ljava/lang/String;
.end method

.method private native doGetTimeout(I)I
.end method

.method private native doInitClfAidFilterList()Z
.end method

.method private native doInitNfceeIdSeMap()V
.end method

.method private native doInitialize()Z
.end method

.method private native doIsUiStateSupported()Z
.end method

.method private native doNfcDeactivate(I)Z
.end method

.method private native doReportReason(I)V
.end method

.method private native doResetTimeouts()V
.end method

.method private native doSetClfAidFilterList([B)Z
.end method

.method private native doSetP2pInitiatorModes(I)V
.end method

.method private native doSetP2pTargetModes(I)V
.end method

.method private native doSetTimeout(II)Z
.end method

.method private native do_dta_get_pattern_number()I
.end method

.method private native do_dta_set_pattern_number(I)V
.end method

.method private notifyHciEventConnectivity(I)V
    .locals 3
    .param p1, "nfceeId"    # I

    .prologue
    .line 478
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetSecureElementName(I)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "seName":Ljava/lang/String;
    const/4 v1, -0x1

    .line 480
    .local v1, "slotId":I
    const-string v2, "SIM - UICC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SIM1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 482
    :cond_0
    const/4 v1, 0x0

    .line 486
    :cond_1
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 487
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v2, v1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onCardEmulationHciEvtConnectivity(I)V

    .line 489
    :cond_2
    return-void

    .line 483
    :cond_3
    const-string v2, "SIM2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 484
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private notifyHostEmuActivated()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationActivated()V

    .line 514
    return-void
.end method

.method private notifyHostEmuData([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationData([B)V

    .line 518
    return-void
.end method

.method private notifyHostEmuDeactivated()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationDeactivated()V

    .line 522
    return-void
.end method

.method private notifyLlcpLinkActivation(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 496
    return-void
.end method

.method private notifyLlcpLinkDeactivated(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 503
    return-void
.end method

.method private notifyLlcpLinkFirstPacketReceived(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpFirstPacketReceived(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 510
    return-void
.end method

.method private notifyNdefMessageListeners(Lcom/android/nfc/dhimpl/NativeNfcTag;)V
    .locals 1
    .param p1, "tag"    # Lcom/android/nfc/dhimpl/NativeNfcTag;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V

    .line 452
    return-void
.end method

.method private notifyNfccInfo([B)V
    .locals 1
    .param p1, "nfccinfo"    # [B

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onNfccInit([B)V

    .line 560
    return-void
.end method

.method private notifyRequestRestartNfc()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->noRequestRestartNfc()V

    .line 564
    return-void
.end method

.method private notifyRfFieldActivated()V
    .locals 2

    .prologue
    .line 538
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->pendingRfUpdate:Lcom/android/nfc/dhimpl/NativeNfcManager$RfOffTask;

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldActivated()V

    .line 544
    :goto_0
    monitor-exit v1

    .line 545
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->pendingRfUpdate:Lcom/android/nfc/dhimpl/NativeNfcManager$RfOffTask;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcManager$RfOffTask;->cancel()Z

    goto :goto_0

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyRfFieldDeactivated()V
    .locals 6

    .prologue
    .line 548
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->pendingRfUpdate:Lcom/android/nfc/dhimpl/NativeNfcManager$RfOffTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->pendingRfUpdate:Lcom/android/nfc/dhimpl/NativeNfcManager$RfOffTask;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcManager$RfOffTask;->cancel()Z

    .line 550
    :cond_0
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcManager$RfOffTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/nfc/dhimpl/NativeNfcManager$RfOffTask;-><init>(Lcom/android/nfc/dhimpl/NativeNfcManager;Lcom/android/nfc/dhimpl/NativeNfcManager$1;)V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->pendingRfUpdate:Lcom/android/nfc/dhimpl/NativeNfcManager$RfOffTask;

    .line 551
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->rfFieldUpdateTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->pendingRfUpdate:Lcom/android/nfc/dhimpl/NativeNfcManager$RfOffTask;

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 552
    monitor-exit v1

    .line 553
    return-void

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyTargetDeselected()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onCardEmulationDeselected()V

    .line 459
    return-void
.end method

.method private notifyTransactionListeners([B)V
    .locals 1
    .param p1, "dataBuf"    # [B

    .prologue
    .line 465
    sget-object v0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mQHostListener:Lcom/android/nfc/QHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/QHostListener;->onCardEmulationAidSelected([B)V

    .line 466
    return-void
.end method

.method private notifyUpdateResetCounter(Z)V
    .locals 6
    .param p1, "reset"    # Z

    .prologue
    const/4 v5, 0x0

    .line 670
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string v4, "NciDeviceHost"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 672
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "pref_reset_count"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 674
    .local v0, "count":I
    if-eqz p1, :cond_0

    .line 675
    const/4 v0, 0x0

    .line 680
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 681
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_reset_count"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 682
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 683
    return-void

    .line 677
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static registerQHostListener(Lcom/android/nfc/QHostListener;)V
    .locals 0
    .param p0, "q"    # Lcom/android/nfc/QHostListener;

    .prologue
    .line 76
    sput-object p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mQHostListener:Lcom/android/nfc/QHostListener;

    .line 77
    return-void
.end method

.method private updateHostCallBack()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onUpdateHostCallBack()V

    .line 664
    return-void
.end method


# virtual methods
.method public GetRamDump(II)[B
    .locals 1
    .param p1, "addr"    # I
    .param p2, "len"    # I

    .prologue
    .line 317
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetRamDump(II)[B

    move-result-object v0

    .line 318
    .local v0, "result":[B
    return-object v0
.end method

.method public native PrbsOff()Z
.end method

.method public native PrbsOn(IIZ)Z
.end method

.method public canMakeReadOnly(I)Z
    .locals 2
    .param p1, "ndefType"    # I

    .prologue
    const/4 v0, 0x1

    .line 349
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkFirmware()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDownload()Z

    .line 88
    return-void
.end method

.method public native commitRouting()Z
.end method

.method public createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .locals 5
    .param p1, "nSap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;

    move-result-object v1

    .line 213
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    if-eqz v1, :cond_0

    .line 214
    return-object v1

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v0

    .line 219
    .local v0, "error":I
    const-string v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to create llcp socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    packed-switch v0, :pswitch_data_0

    .line 226
    :pswitch_0
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 224
    :pswitch_1
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v0}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 221
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .locals 5
    .param p1, "nSap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .param p3, "miu"    # I
    .param p4, "rw"    # I
    .param p5, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-direct/range {p0 .. p5}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpServiceSocket(ILjava/lang/String;III)Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;

    move-result-object v1

    .line 237
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    if-eqz v1, :cond_0

    .line 238
    return-object v1

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v0

    .line 243
    .local v0, "error":I
    const-string v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to create llcp socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    packed-switch v0, :pswitch_data_0

    .line 250
    :pswitch_0
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 248
    :pswitch_1
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v0}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 245
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .locals 5
    .param p1, "sap"    # I
    .param p2, "miu"    # I
    .param p3, "rw"    # I
    .param p4, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpSocket(IIII)Lcom/android/nfc/dhimpl/NativeLlcpSocket;

    move-result-object v1

    .line 261
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-eqz v1, :cond_0

    .line 262
    return-object v1

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v0

    .line 267
    .local v0, "error":I
    const-string v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to create llcp socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    packed-switch v0, :pswitch_data_0

    .line 274
    :pswitch_0
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 272
    :pswitch_1
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v0}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 269
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public native deactivateRfInterface()V
.end method

.method public deinitialize()Z
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDeinitialize()Z

    move-result v0

    return v0
.end method

.method public disableClfAidFilterCondition(B)Z
    .locals 1
    .param p1, "filterConditionTag"    # B

    .prologue
    .line 705
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doEnableDisableClfAidFilterCondition(ZB)Z

    move-result v0

    return v0
.end method

.method public native disableDiscovery()Z
.end method

.method public native disableRoutingToHost()V
.end method

.method public disableScreenOffSuspend()Z
    .locals 1

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDisableScreenOffSuspend()V

    .line 444
    const/4 v0, 0x1

    return v0
.end method

.method public doAbort()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 295
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string v3, "NciDeviceHost"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 296
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_reset_count"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 297
    .local v0, "count":I
    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doAbortCount(I)V

    .line 298
    return-void
.end method

.method public native doAbortCount(I)V
.end method

.method public native doActivateLlcp()Z
.end method

.method public native doActivateSwp(B)Z
.end method

.method public native doCheckLlcp()Z
.end method

.method public native doDeselectSecureElement()V
.end method

.method public native doGetDefaultRoute()I
.end method

.method public native doGetLMRT()[B
.end method

.method public native doGetLastError()I
.end method

.method public native doIsExchangingApduWithEse()Z
.end method

.method public native doIsRfInterfaceActivated()Z
.end method

.method public native doNotifyApduGateRfIntfDeactivated()V
.end method

.method public native doSelectSecureElement(Ljava/lang/String;)Z
.end method

.method public native doSetDefaultRoute(I)Z
.end method

.method public dta_get_pattern_number()I
    .locals 1

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->do_dta_get_pattern_number()I

    move-result v0

    .line 332
    .local v0, "receivedPattern":I
    return v0
.end method

.method public dta_set_pattern_number(I)V
    .locals 0
    .param p1, "pattern"    # I

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->do_dta_set_pattern_number(I)V

    .line 326
    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDump()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enableClfAidFilterCondition(B)Z
    .locals 1
    .param p1, "filterConditionTag"    # B

    .prologue
    .line 701
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doEnableDisableClfAidFilterCondition(ZB)Z

    move-result v0

    return v0
.end method

.method public enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z
    .locals 9
    .param p1, "params"    # Lcom/android/nfc/NfcDiscoveryParameters;
    .param p2, "restart"    # Z

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->getOffHostRouting()Ljava/lang/String;

    move-result-object v8

    .line 170
    .local v8, "offHostRouting":Ljava/lang/String;
    const/4 v6, -0x1

    .line 171
    .local v6, "nfceeId":I
    if-eqz v8, :cond_0

    .line 172
    invoke-direct {p0, v8}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetNfceeId(Ljava/lang/String;)I

    move-result v6

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->getTechMask()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableLowPowerDiscovery()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableReaderMode()Z

    move-result v3

    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableHostRouting()Z

    move-result v4

    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableP2p()Z

    move-result v5

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doEnableDiscovery(IZZZZIZ)Z

    move-result v0

    return v0
.end method

.method public native enableRoutingToHost()V
.end method

.method public enableScreenOffSuspend()Z
    .locals 1

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doEnableScreenOffSuspend()V

    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method public getDefaultActiveSecureElement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetDefaultActiveSecureElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLlcpMiu()I
    .locals 1

    .prologue
    .line 418
    const/16 v0, 0x7bc

    return v0
.end method

.method public getDefaultLlcpRwSize()I
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x2

    return v0
.end method

.method public getDefaultRoute()Ljava/lang/String;
    .locals 2

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetDefaultRoute()I

    move-result v0

    .line 638
    .local v0, "nfceeId":I
    invoke-direct {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetSecureElementName(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEeRoutingReloadAtReboot()Z
    .locals 1

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetEeRoutingReloadAtReboot()Z

    move-result v0

    return v0
.end method

.method public getEeRoutingState()I
    .locals 1

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetEeRoutingState()I

    move-result v0

    .line 612
    .local v0, "num":I
    return v0
.end method

.method public getExtendedLengthApdusSupported()Z
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public getLMRT()[B
    .locals 1

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLMRT()[B

    move-result-object v0

    return-object v0
.end method

.method public getMaxTransceiveLength(I)I
    .locals 3
    .param p1, "technology"    # I

    .prologue
    const/16 v0, 0x400

    const/16 v1, 0xfd

    .line 354
    sparse-switch p1, :sswitch_data_0

    .line 394
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 358
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->in_dta_mode()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 361
    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 367
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 369
    goto :goto_0

    .line 378
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->in_dta_mode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    const v0, 0x10009

    goto :goto_0

    .line 385
    :cond_1
    const/16 v0, 0x105

    goto :goto_0

    .line 388
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->in_dta_mode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 391
    const/16 v0, 0xfc

    goto :goto_0

    .line 354
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_2
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0x37 -> :sswitch_3
        0x39 -> :sswitch_3
    .end sparse-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "android-nci"

    return-object v0
.end method

.method public getNfceeId(Ljava/lang/String;)I
    .locals 1
    .param p1, "seName"    # Ljava/lang/String;

    .prologue
    .line 603
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetNfceeId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSecureElementList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetSecureElementList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecureElementName(I)Ljava/lang/String;
    .locals 1
    .param p1, "seId"    # I

    .prologue
    .line 595
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetSecureElementName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout(I)I
    .locals 1
    .param p1, "tech"    # I

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetTimeout(I)I

    move-result v0

    return v0
.end method

.method public in_dta_mode()Z
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->dta_get_pattern_number()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initClfAidFilterList()Z
    .locals 1

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doInitClfAidFilterList()Z

    move-result v0

    return v0
.end method

.method public initNfceeIdSeMap()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doInitNfceeIdSeMap()V

    .line 95
    return-void
.end method

.method public initialize()Z
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doInitialize()Z

    move-result v0

    return v0
.end method

.method public native initializeNativeStructure()Z
.end method

.method public isExchangingApduWithEse()Z
    .locals 1

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doIsExchangingApduWithEse()Z

    move-result v0

    return v0
.end method

.method public native isMultiSeEnabled()Z
.end method

.method public isRfInterfaceActivated()Z
    .locals 1

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doIsRfInterfaceActivated()Z

    move-result v0

    return v0
.end method

.method public isUiStateSupported()Z
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doIsUiStateSupported()Z

    move-result v0

    return v0
.end method

.method public native multiSeControlCmd([BI)Z
.end method

.method public nfcDeactivate(I)Z
    .locals 1
    .param p1, "deactivationType"    # I

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doNfcDeactivate(I)Z

    move-result v0

    return v0
.end method

.method public nfcShutdownReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doReportReason(I)V

    .line 109
    return-void
.end method

.method public notifyApduGateRfIntfDeactivated()V
    .locals 0

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doNotifyApduGateRfIntfDeactivated()V

    .line 660
    return-void
.end method

.method public notifyRfInterfaceDeactivated()V
    .locals 1

    .prologue
    .line 472
    sget-object v0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mQHostListener:Lcom/android/nfc/QHostListener;

    invoke-interface {v0}, Lcom/android/nfc/QHostListener;->onRfInterfaceDeactivated()V

    .line 473
    return-void
.end method

.method public resetTimeouts()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doResetTimeouts()V

    .line 290
    return-void
.end method

.method public native routeAid([BIZZ)Z
.end method

.method public native sendRawFrame([B)Z
.end method

.method public setClfAidFilterList([B)Z
    .locals 1
    .param p1, "filterList"    # [B

    .prologue
    .line 695
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetClfAidFilterList([B)Z

    move-result v0

    return v0
.end method

.method public setDefaultRoute(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seName"    # Ljava/lang/String;

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetNfceeId(Ljava/lang/String;)I

    move-result v0

    .line 629
    .local v0, "nfceeId":I
    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetDefaultRoute(I)Z

    move-result v1

    return v1
.end method

.method public setP2pInitiatorModes(I)V
    .locals 0
    .param p1, "modes"    # I

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetP2pInitiatorModes(I)V

    .line 403
    return-void
.end method

.method public setP2pTargetModes(I)V
    .locals 0
    .param p1, "modes"    # I

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetP2pTargetModes(I)V

    .line 409
    return-void
.end method

.method public setTimeout(II)Z
    .locals 1
    .param p1, "tech"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 304
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetTimeout(II)Z

    move-result v0

    return v0
.end method

.method public native unrouteAid([B)Z
.end method

.method public native updateHostPresence(II)V
.end method

.method public native updateLockScreenPollingMode(Z)Z
.end method

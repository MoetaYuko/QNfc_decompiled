.class public Lcom/android/nfc/QNfcService;
.super Lqcom/nfc/IQNfcExtras$Stub;
.source "QNfcService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/QNfcService$1;,
        Lcom/android/nfc/QNfcService$QNfcServiceHandler;,
        Lcom/android/nfc/QNfcService$HandlerCallback;,
        Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler;,
        Lcom/android/nfc/QNfcService$simpleQHostListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QNfcService"

.field private static mNfcService:Lcom/android/nfc/NfcService;

.field private static mQNfcService:Lcom/android/nfc/QNfcService;


# instance fields
.field private final DBG:Z

.field private mContext:Landroid/content/Context;

.field private mDeviceHost:Lcom/android/nfc/DeviceHost;

.field private mDeviceHostListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

.field private mHandler:Lcom/android/nfc/QNfcService$QNfcServiceHandler;

.field private mQHostListener:Lcom/android/nfc/QHostListener;

.field private mSecureElementManager:Lcom/android/nfc/QSecureElementManager;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 6
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-direct {p0}, Lqcom/nfc/IQNfcExtras$Stub;-><init>()V

    .line 35
    iput-boolean v4, p0, Lcom/android/nfc/QNfcService;->DBG:Z

    .line 46
    sput-object p0, Lcom/android/nfc/QNfcService;->mQNfcService:Lcom/android/nfc/QNfcService;

    .line 47
    iput-object p1, p0, Lcom/android/nfc/QNfcService;->mContext:Landroid/content/Context;

    .line 48
    new-instance v3, Lcom/android/nfc/QNfcService$QNfcServiceHandler;

    invoke-direct {v3}, Lcom/android/nfc/QNfcService$QNfcServiceHandler;-><init>()V

    iput-object v3, p0, Lcom/android/nfc/QNfcService;->mHandler:Lcom/android/nfc/QNfcService$QNfcServiceHandler;

    .line 50
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Class;

    .line 51
    .local v1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v3, Lcom/android/nfc/DeviceHost$DeviceHostListener;

    aput-object v3, v1, v4

    .line 52
    new-instance v0, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler;

    invoke-direct {v0}, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler;-><init>()V

    .line 53
    .local v0, "hostListener":Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler;
    const-class v3, Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/DeviceHost$DeviceHostListener;

    iput-object v3, p0, Lcom/android/nfc/QNfcService;->mDeviceHostListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    .line 58
    new-instance v3, Lcom/android/nfc/QNfcService$simpleQHostListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/nfc/QNfcService$simpleQHostListener;-><init>(Lcom/android/nfc/QNfcService;Lcom/android/nfc/QNfcService$1;)V

    iput-object v3, p0, Lcom/android/nfc/QNfcService;->mQHostListener:Lcom/android/nfc/QHostListener;

    .line 59
    iget-object v3, p0, Lcom/android/nfc/QNfcService;->mQHostListener:Lcom/android/nfc/QHostListener;

    invoke-static {v3}, Lcom/android/nfc/dhimpl/NativeNfcManager;->registerQHostListener(Lcom/android/nfc/QHostListener;)V

    .line 60
    new-instance v3, Lcom/android/nfc/dhimpl/NativeNfcManager;

    iget-object v4, p0, Lcom/android/nfc/QNfcService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/nfc/QNfcService;->mDeviceHostListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-direct {v3, v4, v5}, Lcom/android/nfc/dhimpl/NativeNfcManager;-><init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V

    iput-object v3, p0, Lcom/android/nfc/QNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 61
    new-instance v2, Lcom/android/nfc/NfcService;

    iget-object v3, p0, Lcom/android/nfc/QNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget-object v4, p0, Lcom/android/nfc/QNfcService;->mHandler:Lcom/android/nfc/QNfcService$QNfcServiceHandler;

    invoke-direct {v2, p1, v3, v4}, Lcom/android/nfc/NfcService;-><init>(Landroid/app/Application;Lcom/android/nfc/DeviceHost;Lcom/android/nfc/NfcService$NfcServiceExtentionHandler;)V

    .line 62
    .local v2, "mNfcService":Lcom/android/nfc/NfcService;
    invoke-virtual {v0, v2}, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler;->addListener(Lcom/android/nfc/DeviceHost$DeviceHostListener;)V

    .line 63
    invoke-virtual {v0}, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler;->flush()V

    .line 64
    const-string v3, "nfc"

    iget-object v4, v2, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 65
    new-instance v3, Lcom/android/nfc/QSecureElementManager;

    iget-object v4, p0, Lcom/android/nfc/QNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-direct {v3, p1, v4, v2}, Lcom/android/nfc/QSecureElementManager;-><init>(Landroid/app/Application;Lcom/android/nfc/DeviceHost;Lcom/android/nfc/NfcService;)V

    iput-object v3, p0, Lcom/android/nfc/QNfcService;->mSecureElementManager:Lcom/android/nfc/QSecureElementManager;

    .line 66
    iget-object v3, p0, Lcom/android/nfc/QNfcService;->mHandler:Lcom/android/nfc/QNfcService$QNfcServiceHandler;

    iget-object v4, p0, Lcom/android/nfc/QNfcService;->mSecureElementManager:Lcom/android/nfc/QSecureElementManager;

    invoke-virtual {v4}, Lcom/android/nfc/QSecureElementManager;->getCallback()Lcom/android/nfc/QNfcService$HandlerCallback;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/nfc/QNfcService$QNfcServiceHandler;->addCallback(Lcom/android/nfc/QNfcService$HandlerCallback;)V

    .line 71
    return-void
.end method

.method static synthetic access$100(Lcom/android/nfc/QNfcService;)Lcom/android/nfc/QSecureElementManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/QNfcService;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/nfc/QNfcService;->mSecureElementManager:Lcom/android/nfc/QSecureElementManager;

    return-object v0
.end method

.method public static getInstance()Lcom/android/nfc/QNfcService;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/android/nfc/QNfcService;->mQNfcService:Lcom/android/nfc/QNfcService;

    return-object v0
.end method


# virtual methods
.method public getSecureElementManagerStub()Lqcom/nfc/IQNfcSecureElementManager$Stub;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/nfc/QNfcService;->mSecureElementManager:Lcom/android/nfc/QSecureElementManager;

    return-object v0
.end method

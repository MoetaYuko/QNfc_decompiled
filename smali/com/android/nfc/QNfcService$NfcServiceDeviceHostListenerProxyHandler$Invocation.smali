.class final Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler$Invocation;
.super Ljava/lang/Object;
.source "QNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Invocation"
.end annotation


# instance fields
.field final args:[Ljava/lang/Object;

.field final method:Ljava/lang/reflect/Method;

.field final proxy:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler$Invocation;->proxy:Ljava/lang/Object;

    .line 94
    iput-object p2, p0, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler$Invocation;->method:Ljava/lang/reflect/Method;

    .line 95
    iput-object p3, p0, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler$Invocation;->args:[Ljava/lang/Object;

    .line 96
    return-void
.end method

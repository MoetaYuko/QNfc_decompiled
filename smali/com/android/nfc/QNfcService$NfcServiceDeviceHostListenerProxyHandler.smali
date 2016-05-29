.class final Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler;
.super Ljava/lang/Object;
.source "QNfcService.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/QNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NfcServiceDeviceHostListenerProxyHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler$Invocation;
    }
.end annotation


# instance fields
.field private delayedInvocations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler$Invocation;",
            ">;"
        }
    .end annotation
.end field

.field private mHostListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler;->delayedInvocations:Ljava/util/LinkedList;

    .line 100
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/nfc/DeviceHost$DeviceHostListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/nfc/DeviceHost$DeviceHostListener;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler;->mHostListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler;->mHostListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    .line 120
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 5

    .prologue
    .line 123
    iget-object v2, p0, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler;->delayedInvocations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler$Invocation;

    .line 124
    .local v0, "i":Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler$Invocation;
    const-string v2, "QNfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler$Invocation;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in flush action"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v2, v0, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler$Invocation;->proxy:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler$Invocation;->method:Ljava/lang/reflect/Method;

    iget-object v4, v0, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler$Invocation;->args:[Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 127
    .end local v0    # "i":Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler$Invocation;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler;->delayedInvocations:Ljava/util/LinkedList;

    .line 128
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler;->mHostListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler;->mHostListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-virtual {p2, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 114
    :goto_0
    return-object v1

    .line 107
    :cond_0
    const-string v2, "QNfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on proxy; returning null and waiting for initialization"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v2, p0, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler;->delayedInvocations:Ljava/util/LinkedList;

    new-instance v3, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler$Invocation;

    invoke-direct {v3, p1, p2, p3}, Lcom/android/nfc/QNfcService$NfcServiceDeviceHostListenerProxyHandler$Invocation;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

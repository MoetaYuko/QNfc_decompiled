.class Lcom/android/nfc/dhimpl/NativeNfcManager$RfOffTask;
.super Ljava/util/TimerTask;
.source "NativeNfcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/dhimpl/NativeNfcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RfOffTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;


# direct methods
.method private constructor <init>(Lcom/android/nfc/dhimpl/NativeNfcManager;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$RfOffTask;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/dhimpl/NativeNfcManager;Lcom/android/nfc/dhimpl/NativeNfcManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/dhimpl/NativeNfcManager;
    .param p2, "x1"    # Lcom/android/nfc/dhimpl/NativeNfcManager$1;

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager$RfOffTask;-><init>(Lcom/android/nfc/dhimpl/NativeNfcManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$RfOffTask;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    iget-object v1, v0, Lcom/android/nfc/dhimpl/NativeNfcManager;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$RfOffTask;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    # getter for: Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;
    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->access$000(Lcom/android/nfc/dhimpl/NativeNfcManager;)Lcom/android/nfc/DeviceHost$DeviceHostListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldDeactivated()V

    .line 532
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$RfOffTask;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/nfc/dhimpl/NativeNfcManager;->pendingRfUpdate:Lcom/android/nfc/dhimpl/NativeNfcManager$RfOffTask;

    .line 533
    monitor-exit v1

    .line 534
    return-void

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

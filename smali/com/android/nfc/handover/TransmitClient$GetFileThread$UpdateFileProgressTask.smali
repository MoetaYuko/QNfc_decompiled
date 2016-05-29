.class Lcom/android/nfc/handover/TransmitClient$GetFileThread$UpdateFileProgressTask;
.super Ljava/util/TimerTask;
.source "TransmitClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/TransmitClient$GetFileThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateFileProgressTask"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field final synthetic this$1:Lcom/android/nfc/handover/TransmitClient$GetFileThread;


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/TransmitClient$GetFileThread;Landroid/content/Intent;)V
    .locals 0
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread$UpdateFileProgressTask;->this$1:Lcom/android/nfc/handover/TransmitClient$GetFileThread;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 480
    iput-object p2, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread$UpdateFileProgressTask;->intent:Landroid/content/Intent;

    .line 481
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread$UpdateFileProgressTask;->intent:Landroid/content/Intent;

    const-string v1, "extra_progress"

    sget-wide v2, Lcom/android/nfc/handover/TransmitClient;->mCurrLen:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 486
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread$UpdateFileProgressTask;->this$1:Lcom/android/nfc/handover/TransmitClient$GetFileThread;

    iget-object v0, v0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    iget-object v1, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread$UpdateFileProgressTask;->intent:Landroid/content/Intent;

    # invokes: Lcom/android/nfc/handover/TransmitClient;->sendBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/nfc/handover/TransmitClient;->access$100(Lcom/android/nfc/handover/TransmitClient;Landroid/content/Intent;)V

    .line 487
    return-void
.end method

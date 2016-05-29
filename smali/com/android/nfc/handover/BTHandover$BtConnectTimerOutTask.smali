.class Lcom/android/nfc/handover/BTHandover$BtConnectTimerOutTask;
.super Ljava/util/TimerTask;
.source "BTHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/BTHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BtConnectTimerOutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/BTHandover;


# direct methods
.method private constructor <init>(Lcom/android/nfc/handover/BTHandover;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/nfc/handover/BTHandover$BtConnectTimerOutTask;->this$0:Lcom/android/nfc/handover/BTHandover;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/handover/BTHandover;Lcom/android/nfc/handover/BTHandover$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/handover/BTHandover;
    .param p2, "x1"    # Lcom/android/nfc/handover/BTHandover$1;

    .prologue
    .line 530
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/BTHandover$BtConnectTimerOutTask;-><init>(Lcom/android/nfc/handover/BTHandover;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover$BtConnectTimerOutTask;->this$0:Lcom/android/nfc/handover/BTHandover;

    const/16 v1, 0x7d0

    # invokes: Lcom/android/nfc/handover/BTHandover;->stopConnect(I)V
    invoke-static {v0, v1}, Lcom/android/nfc/handover/BTHandover;->access$400(Lcom/android/nfc/handover/BTHandover;I)V

    .line 534
    return-void
.end method

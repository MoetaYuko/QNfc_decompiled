.class Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectTimerOutTask;
.super Ljava/util/TimerTask;
.source "P2PHandoverServerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/P2PHandoverServerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "P2PConnectTimerOutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;


# direct methods
.method private constructor <init>(Lcom/android/nfc/handover/P2PHandoverServerSession;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectTimerOutTask;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/handover/P2PHandoverServerSession;Lcom/android/nfc/handover/P2PHandoverServerSession$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;
    .param p2, "x1"    # Lcom/android/nfc/handover/P2PHandoverServerSession$1;

    .prologue
    .line 749
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectTimerOutTask;-><init>(Lcom/android/nfc/handover/P2PHandoverServerSession;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectTimerOutTask;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    const/4 v1, 0x2

    # invokes: Lcom/android/nfc/handover/P2PHandoverServerSession;->stopConnect(I)V
    invoke-static {v0, v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$600(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V

    .line 753
    return-void
.end method

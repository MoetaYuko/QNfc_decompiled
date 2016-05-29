.class Lcom/android/nfc/QNfcService$simpleQHostListener;
.super Ljava/lang/Object;
.source "QNfcService.java"

# interfaces
.implements Lcom/android/nfc/QHostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/QNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "simpleQHostListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/QNfcService;


# direct methods
.method private constructor <init>(Lcom/android/nfc/QNfcService;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/nfc/QNfcService$simpleQHostListener;->this$0:Lcom/android/nfc/QNfcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/QNfcService;Lcom/android/nfc/QNfcService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/QNfcService;
    .param p2, "x1"    # Lcom/android/nfc/QNfcService$1;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/nfc/QNfcService$simpleQHostListener;-><init>(Lcom/android/nfc/QNfcService;)V

    return-void
.end method


# virtual methods
.method public onCardEmulationAidSelected([B)V
    .locals 1
    .param p1, "dataBuf"    # [B

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/nfc/QNfcService$simpleQHostListener;->this$0:Lcom/android/nfc/QNfcService;

    # getter for: Lcom/android/nfc/QNfcService;->mSecureElementManager:Lcom/android/nfc/QSecureElementManager;
    invoke-static {v0}, Lcom/android/nfc/QNfcService;->access$100(Lcom/android/nfc/QNfcService;)Lcom/android/nfc/QSecureElementManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/QSecureElementManager;->onCardEmulationAidSelected([B)V

    .line 77
    return-void
.end method

.method public onRfInterfaceDeactivated()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/nfc/QNfcService$simpleQHostListener;->this$0:Lcom/android/nfc/QNfcService;

    # getter for: Lcom/android/nfc/QNfcService;->mSecureElementManager:Lcom/android/nfc/QSecureElementManager;
    invoke-static {v0}, Lcom/android/nfc/QNfcService;->access$100(Lcom/android/nfc/QNfcService;)Lcom/android/nfc/QSecureElementManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/QSecureElementManager;->onRfInterfaceDeactivated()V

    .line 81
    return-void
.end method

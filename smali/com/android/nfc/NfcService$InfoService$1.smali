.class Lcom/android/nfc/NfcService$InfoService$1;
.super Landroid/nfc/IGetNFCByteArray$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService$InfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService$InfoService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService$InfoService;)V
    .locals 0

    .prologue
    .line 3537
    iput-object p1, p0, Lcom/android/nfc/NfcService$InfoService$1;->this$0:Lcom/android/nfc/NfcService$InfoService;

    invoke-direct {p0}, Landroid/nfc/IGetNFCByteArray$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public CollectRamDump(II)[B
    .locals 2
    .param p1, "addr"    # I
    .param p2, "len"    # I

    .prologue
    .line 3545
    # getter for: Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;
    invoke-static {}, Lcom/android/nfc/NfcService;->access$2300()Lcom/android/nfc/NfcService;

    move-result-object v1

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/nfc/DeviceHost;->GetRamDump(II)[B

    move-result-object v0

    .line 3546
    .local v0, "result":[B
    return-object v0
.end method

.method public GetNfccInfo()[B
    .locals 1

    .prologue
    .line 3540
    # getter for: Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;
    invoke-static {}, Lcom/android/nfc/NfcService;->access$2300()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->NfccInfo()[B

    move-result-object v0

    return-object v0
.end method

.method public doPrbsOff()V
    .locals 1

    .prologue
    .line 3556
    # getter for: Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;
    invoke-static {}, Lcom/android/nfc/NfcService;->access$2300()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->PrbsOff()V

    .line 3557
    return-void
.end method

.method public doPrbsOn(II)V
    .locals 1
    .param p1, "tech"    # I
    .param p2, "rate"    # I

    .prologue
    .line 3551
    # getter for: Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;
    invoke-static {}, Lcom/android/nfc/NfcService;->access$2300()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/NfcService;->PrbsOn(II)V

    .line 3552
    return-void
.end method

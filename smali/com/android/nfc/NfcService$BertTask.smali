.class Lcom/android/nfc/NfcService$BertTask;
.super Landroid/os/AsyncTask;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BertTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 3479
    iput-object p1, p0, Lcom/android/nfc/NfcService$BertTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 3479
    check-cast p1, [[Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcService$BertTask;->doInBackground([[Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([[Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [[Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3482
    aget-object v1, p1, v5

    .line 3484
    .local v1, "techRate":[Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/nfc/NfcService$BertTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, v1, v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v3, v4, v6}, Lcom/android/nfc/DeviceHost;->PrbsOn(IIZ)Z

    .line 3487
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$BertTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, v1, v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v3, v4, v5}, Lcom/android/nfc/DeviceHost;->PrbsOn(IIZ)Z

    .line 3489
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3493
    :goto_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$BertTask;->isCancelled()Z

    move-result v2

    if-ne v2, v6, :cond_0

    .line 3494
    const/4 v2, 0x0

    return-object v2

    .line 3490
    :catch_0
    move-exception v0

    .line 3491
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "NfcService"

    const-string v3, "Interrupted!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

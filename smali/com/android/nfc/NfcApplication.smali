.class public Lcom/android/nfc/NfcApplication;
.super Landroid/app/Application;
.source "NfcApplication.java"


# static fields
.field static final NFC_PROCESS:Ljava/lang/String; = "com.android.nfc"

.field static final TAG:Ljava/lang/String; = "NfcApplication"


# instance fields
.field mNfcService:Lcom/android/nfc/QNfcService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 59
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 61
    const/4 v3, 0x0

    .line 67
    .local v3, "isMainProcess":Z
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lcom/android/nfc/NfcApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 68
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 69
    .local v4, "processes":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 70
    .local v2, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v1, v6

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 72
    .local v1, "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 73
    const-string v6, "com.android.nfc"

    iget-object v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 77
    .end local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-nez v6, :cond_2

    if-eqz v3, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/android/nfc/NfcApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "androidhwext:style/Theme.Emui"

    invoke-virtual {v6, v7, v8, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 80
    .local v5, "themeID":I
    invoke-virtual {p0, v5}, Lcom/android/nfc/NfcApplication;->setTheme(I)V

    .line 81
    const-string v6, "NfcApplication"

    const-string v7, "new QNfcService"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v6, Lcom/android/nfc/QNfcService;

    invoke-direct {v6, p0}, Lcom/android/nfc/QNfcService;-><init>(Landroid/app/Application;)V

    iput-object v6, p0, Lcom/android/nfc/NfcApplication;->mNfcService:Lcom/android/nfc/QNfcService;

    .line 83
    invoke-static {}, Landroid/view/HardwareRenderer;->enableForegroundTrimming()V

    .line 85
    new-instance v6, Lcom/android/nfc/NfcApplication$1;

    const-string v7, "deleteRedundance"

    invoke-direct {v6, p0, v7}, Lcom/android/nfc/NfcApplication$1;-><init>(Lcom/android/nfc/NfcApplication;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/nfc/NfcApplication$1;->start()V

    .line 96
    .end local v5    # "themeID":I
    :cond_2
    return-void
.end method

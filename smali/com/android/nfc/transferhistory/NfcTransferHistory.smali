.class public Lcom/android/nfc/transferhistory/NfcTransferHistory;
.super Landroid/app/Activity;
.source "NfcTransferHistory.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;,
        Lcom/android/nfc/transferhistory/NfcTransferHistory$NfcShareContentObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DIALOG_CLEAR:I = 0x1

.field private static final MSG_UPDATE_ADAPTER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NfcTransferHistory"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContextMenuPosition:I

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mMenuView:Landroid/view/MenuItem;

.field private mNfcTransferInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/transferhistory/NfcTransferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNfcTransferInfoTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/transferhistory/NfcTransferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Lcom/android/nfc/transferhistory/NfcTransferHistory$NfcShareContentObserver;

.field private mPendingUpdate:Z

.field private mTransferAdapter:Lcom/android/nfc/transferhistory/NfcTransferAdapter;

.field private mUpdateThread:Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoTempList:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Lcom/android/nfc/transferhistory/NfcTransferHistory$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/transferhistory/NfcTransferHistory$1;-><init>(Lcom/android/nfc/transferhistory/NfcTransferHistory;)V

    iput-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mHandler:Landroid/os/Handler;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Lcom/android/nfc/transferhistory/NfcTransferAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mTransferAdapter:Lcom/android/nfc/transferhistory/NfcTransferAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/transferhistory/NfcTransferHistory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->updateDeleteListMenu()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mMenuView:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/nfc/transferhistory/NfcTransferHistory;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/nfc/transferhistory/NfcTransferHistory;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/nfc/transferhistory/NfcTransferHistory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->updateFromProvider()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mUpdateThread:Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/nfc/transferhistory/NfcTransferHistory;Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;)Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;
    .param p1, "x1"    # Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mUpdateThread:Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mPendingUpdate:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/nfc/transferhistory/NfcTransferHistory;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mPendingUpdate:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoTempList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/nfc/transferhistory/NfcTransferHistory;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoTempList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/nfc/transferhistory/NfcTransferHistory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->clearAllDownloads()V

    return-void
.end method

.method private clearAllDownloads()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mTransferAdapter:Lcom/android/nfc/transferhistory/NfcTransferAdapter;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mTransferAdapter:Lcom/android/nfc/transferhistory/NfcTransferAdapter;

    invoke-virtual {v0}, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->clear()V

    .line 460
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mTransferAdapter:Lcom/android/nfc/transferhistory/NfcTransferAdapter;

    invoke-virtual {v0}, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->notifyDataSetChanged()V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/transferhistory/DataBaseUtils;->deleteHistoryfromDB(Landroid/content/Context;)V

    .line 465
    return-void
.end method

.method private isRecognizedFileType(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileUri"    # Landroid/net/Uri;
    .param p3, "mimetype"    # Ljava/lang/String;

    .prologue
    .line 563
    const/4 v2, 0x1

    .line 568
    .local v2, "ret":Z
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 569
    .local v1, "mimetypeIntent":Landroid/content/Intent;
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 574
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 577
    const/4 v2, 0x0

    .line 579
    :cond_0
    return v2
.end method

.method private openCompleteTransfer(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/nfc/transferhistory/NfcTransferInfo;

    .line 485
    .local v7, "transInfo":Lcom/android/nfc/transferhistory/NfcTransferInfo;
    if-nez v7, :cond_1

    .line 486
    const-string v0, "NfcTransferHistory"

    const-string v1, "Error: Can not get data from db"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    invoke-virtual {v7}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getTransferDir()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {v7}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getTransferResult()I

    move-result v0

    invoke-static {v0}, Lcom/android/nfc/transferhistory/HwBeamStore;->isStatusSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v7}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, "mFileName":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 496
    invoke-virtual {v7}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 498
    :cond_2
    if-eqz v2, :cond_3

    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 499
    :cond_3
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 502
    :cond_4
    iget-object v1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getCompleteTime()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)V

    goto :goto_0
.end method

.method private openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "mimetype"    # Ljava/lang/String;
    .param p4, "timeStamp"    # J
    .param p6, "uri"    # Landroid/net/Uri;

    .prologue
    .line 514
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 515
    :cond_0
    const-string v5, "NfcTransferHistory"

    const-string v6, "ERROR: Para fileName ==null, or mimetype == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_1
    :goto_0
    return-void

    .line 519
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 520
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 527
    const v5, 0x7f08003f

    invoke-virtual {p0, v5}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, "mOpenFileFailedTip":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 534
    .end local v3    # "mOpenFileFailedTip":Ljava/lang/String;
    :cond_3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 536
    .local v4, "path":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    .line 537
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 540
    :cond_4
    invoke-direct {p0, p1, v4, p3}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->isRecognizedFileType(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 541
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, "activityIntent":Landroid/content/Intent;
    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 549
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 550
    :catch_0
    move-exception v1

    .line 551
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v5, "NfcTransferHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no activity for handling ACTION_VIEW intent:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDeleteListMenu()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 298
    iget-object v3, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mMenuView:Landroid/view/MenuItem;

    if-nez v3, :cond_0

    .line 311
    :goto_0
    return-void

    .line 301
    :cond_0
    const/4 v0, 0x0

    .line 302
    .local v0, "showClear":Z
    iget-object v3, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 303
    iget-object v3, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    move v0, v1

    .line 305
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 306
    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->invalidateOptionsMenu()V

    .line 307
    iget-object v2, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mMenuView:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 303
    goto :goto_1

    .line 309
    :cond_3
    iget-object v1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mMenuView:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateFromProvider()V
    .locals 1

    .prologue
    .line 99
    monitor-enter p0

    .line 100
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mPendingUpdate:Z

    .line 101
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mUpdateThread:Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;

    invoke-direct {v0, p0}, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;-><init>(Lcom/android/nfc/transferhistory/NfcTransferHistory;)V

    iput-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mUpdateThread:Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;

    .line 103
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mUpdateThread:Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;

    invoke-virtual {v0}, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->start()V

    .line 105
    :cond_0
    monitor-exit p0

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateIconforMenu(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 584
    iget-object v4, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mMenuView:Landroid/view/MenuItem;

    if-nez v4, :cond_0

    .line 601
    :goto_0
    return-void

    .line 587
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 588
    .local v0, "configuration":Landroid/content/res/Configuration;
    const v2, 0x7f020002

    .line 589
    .local v2, "resid":I
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 590
    iget-object v4, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mMenuView:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 594
    :cond_1
    invoke-static {p1}, Lcom/huawei/android/immersion/ImmersionStyle;->getPrimaryColor(Landroid/content/Context;)I

    move-result v1

    .line 595
    .local v1, "primaryColor":I
    invoke-static {v1}, Lcom/huawei/android/immersion/ImmersionStyle;->getSuggestionForgroundColorStyle(I)I

    move-result v3

    .line 596
    .local v3, "targetColor":I
    const-string v4, "NfcTransferHistory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateIconforMenu primaryColor="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", targetColor="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    if-lez v3, :cond_2

    .line 598
    const v2, 0x7f020003

    .line 600
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mMenuView:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 367
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 374
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 371
    :pswitch_0
    iget v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mContextMenuPosition:I

    invoke-direct {p0, v0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->openCompleteTransfer(I)V

    .line 372
    const/4 v0, 0x1

    goto :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x7f0c001c
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 226
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 227
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->setContentView(I)V

    .line 228
    const v0, 0x7f0c0013

    invoke-virtual {p0, v0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mListView:Landroid/widget/ListView;

    .line 229
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mListView:Landroid/widget/ListView;

    const v1, 0x7f0c0014

    invoke-virtual {p0, v1}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 231
    iput-object p0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mContext:Landroid/content/Context;

    .line 233
    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 240
    :cond_0
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->setTitle(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/transferhistory/DataBaseUtils;->queryTransferList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    .line 249
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 251
    new-instance v0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;

    const v1, 0x7f030007

    iget-object v2, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/nfc/transferhistory/NfcTransferAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mTransferAdapter:Lcom/android/nfc/transferhistory/NfcTransferAdapter;

    .line 253
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mTransferAdapter:Lcom/android/nfc/transferhistory/NfcTransferAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 254
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 255
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 258
    :cond_1
    new-instance v0, Lcom/android/nfc/transferhistory/NfcTransferHistory$NfcShareContentObserver;

    iget-object v1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/nfc/transferhistory/NfcTransferHistory$NfcShareContentObserver;-><init>(Lcom/android/nfc/transferhistory/NfcTransferHistory;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mObserver:Lcom/android/nfc/transferhistory/NfcTransferHistory$NfcShareContentObserver;

    .line 259
    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/nfc/transferhistory/HwBeamStore$TransferListTable;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mObserver:Lcom/android/nfc/transferhistory/NfcTransferHistory$NfcShareContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 262
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 381
    iget-object v3, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    move-object v2, p3

    .line 382
    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 383
    .local v2, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v3, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v3, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mContextMenuPosition:I

    .line 385
    iget-object v3, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-virtual {v3}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 389
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 390
    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 391
    .local v1, "inflater":Landroid/view/MenuInflater;
    const/high16 v3, 0x7f0b0000

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 395
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "inflater":Landroid/view/MenuInflater;
    .end local v2    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 403
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 404
    const v2, 0x7f030003

    invoke-static {p0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 406
    .local v0, "comfirmView":Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08002f

    new-instance v4, Lcom/android/nfc/transferhistory/NfcTransferHistory$2;

    invoke-direct {v4, p0}, Lcom/android/nfc/transferhistory/NfcTransferHistory$2;-><init>(Lcom/android/nfc/transferhistory/NfcTransferHistory;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 420
    .end local v0    # "comfirmView":Landroid/view/View;
    :cond_0
    return-object v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 318
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 320
    const v1, 0x7f0c001d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mMenuView:Landroid/view/MenuItem;

    .line 322
    iget-object v1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->updateIconforMenu(Landroid/content/Context;)V

    .line 324
    invoke-direct {p0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->updateDeleteListMenu()V

    .line 327
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 283
    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mObserver:Lcom/android/nfc/transferhistory/NfcTransferHistory$NfcShareContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 284
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 477
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->openCompleteTransfer(I)V

    .line 478
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->finish()V

    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 343
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    move v1, v2

    .line 362
    :goto_0
    return v1

    .line 346
    :pswitch_0
    const/4 v0, 0x1

    .line 347
    .local v0, "showClear":Z
    iget-object v3, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 348
    iget-object v3, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    move v0, v1

    .line 353
    :goto_1
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0, v1}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->showDialog(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 348
    goto :goto_1

    .line 351
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c001d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 277
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 425
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 426
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 427
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 429
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 338
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 268
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mTransferAdapter:Lcom/android/nfc/transferhistory/NfcTransferAdapter;

    invoke-virtual {v0}, Lcom/android/nfc/transferhistory/NfcTransferAdapter;->notifyDataSetChanged()V

    .line 271
    :cond_0
    return-void
.end method

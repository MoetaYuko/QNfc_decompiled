.class public Lcom/android/nfc/handover/TransmitClient;
.super Ljava/lang/Object;
.source "TransmitClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/TransmitClient$GetFileThread;
    }
.end annotation


# static fields
.field public static final ACTION_NOT_ENOUGH_FREE_SPACE:Ljava/lang/String; = "com.android.nfc.handover.action.ACTION_NOT_ENOUGH_FREE_SPACE"

.field private static final BEAM_DIR:Ljava/lang/String; = "beam"

.field private static final CONNECT_TIMEOUT:I = 0x1388

.field static final DBG:Z = true

.field private static final FILE_PROGRESS_PERIOD_TIME:I = 0x1f4

.field private static final READ_BUFF_LEN:I = 0x4000

.field private static final READ_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "TransmitClient"

.field public static fileLength:J

.field public static mCurrLen:J


# instance fields
.field private volatile isCancelFile:Z

.field isConnected:Z

.field private isSendingFile:Z

.field private mContext:Landroid/content/Context;

.field private mGetFileThread:Lcom/android/nfc/handover/TransmitClient$GetFileThread;

.field private mRemoteMac:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 79
    sput-wide v0, Lcom/android/nfc/handover/TransmitClient;->mCurrLen:J

    .line 80
    sput-wide v0, Lcom/android/nfc/handover/TransmitClient;->fileLength:J

    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/handover/Handover;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "handover"    # Lcom/android/nfc/handover/Handover;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v0, p0, Lcom/android/nfc/handover/TransmitClient;->isSendingFile:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/nfc/handover/TransmitClient;->isConnected:Z

    .line 84
    iput-object p2, p0, Lcom/android/nfc/handover/TransmitClient;->mRemoteMac:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/android/nfc/handover/TransmitClient;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/TransmitClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/TransmitClient;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/nfc/handover/TransmitClient;->isCancelFile:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/nfc/handover/TransmitClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/TransmitClient;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/nfc/handover/TransmitClient;->isCancelFile:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/TransmitClient;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/TransmitClient;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/TransmitClient;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/nfc/handover/TransmitClient;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/TransmitClient;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/nfc/handover/TransmitClient;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/TransmitClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/TransmitClient;->generateUniqueFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized createHWBeamFolder()Ljava/io/File;
    .locals 4

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "extRoot":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "beam"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "beamPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 102
    .end local v0    # "beamPath":Ljava/io/File;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 101
    .restart local v0    # "beamPath":Ljava/io/File;
    :cond_0
    :try_start_1
    const-string v2, "TransmitClient"

    const-string v3, "HWBeamFolder is exist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    .end local v0    # "beamPath":Ljava/io/File;
    .end local v1    # "extRoot":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized generateUniqueFile(Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    const-string v7, "."

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 121
    .local v2, "dotIndex":I
    const/4 v4, 0x0

    .line 122
    .local v4, "extension":Ljava/lang/String;
    const/4 v5, 0x0

    .line 123
    .local v5, "fileNameWithoutExtension":Ljava/lang/String;
    if-gez v2, :cond_0

    .line 124
    const-string v4, ""

    .line 125
    move-object v5, p1

    .line 130
    :goto_0
    invoke-direct {p0}, Lcom/android/nfc/handover/TransmitClient;->createHWBeamFolder()Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 131
    .local v0, "HwBeamFolder":Ljava/io/File;
    const/4 v6, 0x0

    .line 132
    .local v6, "path":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 133
    const/4 v3, 0x0

    .line 145
    :goto_1
    monitor-exit p0

    return-object v3

    .line 127
    .end local v0    # "HwBeamFolder":Ljava/io/File;
    .end local v6    # "path":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 128
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 135
    .restart local v0    # "HwBeamFolder":Ljava/io/File;
    .restart local v6    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 137
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v3, "dstFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 139
    .local v1, "count":I
    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 140
    new-instance v3, Ljava/io/File;

    .end local v3    # "dstFile":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .restart local v3    # "dstFile":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 144
    :cond_2
    const-string v7, "TransmitClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dstFile path is :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 120
    .end local v0    # "HwBeamFolder":Ljava/io/File;
    .end local v1    # "count":I
    .end local v2    # "dotIndex":I
    .end local v3    # "dstFile":Ljava/io/File;
    .end local v4    # "extension":Ljava/lang/String;
    .end local v5    # "fileNameWithoutExtension":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public static getAttrText(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "element"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 564
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 565
    .local v2, "nodeList2":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .line 566
    .local v1, "node":Lorg/w3c/dom/Node;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 567
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 568
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 569
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 572
    :goto_1
    return-object v3

    .line 566
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 572
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getFileInfoByXml(Ljava/io/InputStream;)Ljava/util/List;
    .locals 14
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/nfc/handover/FileInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 527
    const/4 v9, 0x0

    .line 528
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 529
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 530
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 532
    .local v1, "document":Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v11

    .line 534
    .local v11, "root":Lorg/w3c/dom/Element;
    const-string v12, "file"

    invoke-interface {v11, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 536
    .local v10, "nodeList":Lorg/w3c/dom/NodeList;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-nez v12, :cond_1

    .line 537
    :cond_0
    const/4 v12, 0x0

    .line 557
    :goto_0
    return-object v12

    .line 540
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v8, v12, :cond_2

    .line 543
    invoke-interface {v10, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 544
    .local v2, "element":Lorg/w3c/dom/Element;
    new-instance v4, Lcom/android/nfc/handover/FileInfo;

    invoke-direct {v4}, Lcom/android/nfc/handover/FileInfo;-><init>()V

    .line 546
    .local v4, "file":Lcom/android/nfc/handover/FileInfo;
    const-string v12, "fileName"

    invoke-static {v2, v12}, Lcom/android/nfc/handover/TransmitClient;->getAttrText(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 547
    .local v7, "filename":Ljava/lang/String;
    invoke-virtual {v4, v7}, Lcom/android/nfc/handover/FileInfo;->setFileName(Ljava/lang/String;)V

    .line 549
    const-string v12, "fileLen"

    invoke-static {v2, v12}, Lcom/android/nfc/handover/TransmitClient;->getAttrText(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 550
    .local v6, "filelen":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Lcom/android/nfc/handover/FileInfo;->setFileLen(J)V

    .line 552
    const-string v12, "filePath"

    invoke-static {v2, v12}, Lcom/android/nfc/handover/TransmitClient;->getAttrText(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 553
    .local v5, "filePath":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lcom/android/nfc/handover/FileInfo;->setFilePath(Ljava/lang/String;)V

    .line 555
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v2    # "element":Lorg/w3c/dom/Element;
    .end local v4    # "file":Lcom/android/nfc/handover/FileInfo;
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v6    # "filelen":Ljava/lang/String;
    .end local v7    # "filename":Ljava/lang/String;
    :cond_2
    move-object v12, v9

    .line 557
    goto :goto_0
.end method

.method public static getFileName(Lcom/android/nfc/handover/ConfigInfo;)Ljava/lang/String;
    .locals 10
    .param p0, "info"    # Lcom/android/nfc/handover/ConfigInfo;

    .prologue
    const/4 v8, 0x0

    .line 576
    if-eqz p0, :cond_a

    .line 577
    const/4 v4, 0x0

    .line 578
    .local v4, "fileinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    const/4 v5, 0x0

    .line 579
    .local v5, "inStream":Ljava/io/FileInputStream;
    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfigInfo;->getmFileInfo()Lcom/android/nfc/handover/FileInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/nfc/handover/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 580
    .local v3, "fileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, "extRoot":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "beam"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 583
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    .end local v5    # "inStream":Ljava/io/FileInputStream;
    .local v6, "inStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v6}, Lcom/android/nfc/handover/TransmitClient;->getFileInfoByXml(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v4

    .line 585
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-gtz v7, :cond_4

    .line 593
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 594
    const-string v7, "TransmitClient"

    const-string v9, "file delete success"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :goto_0
    if-eqz v6, :cond_1

    .line 600
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move-object v7, v8

    .line 608
    .end local v1    # "extRoot":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "fileinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    .end local v6    # "inStream":Ljava/io/FileInputStream;
    :cond_2
    :goto_2
    return-object v7

    .line 596
    .restart local v1    # "extRoot":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "fileinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    .restart local v6    # "inStream":Ljava/io/FileInputStream;
    :cond_3
    const-string v7, "TransmitClient"

    const-string v9, "file delete fail"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 601
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 588
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    const/4 v7, 0x0

    :try_start_3
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/nfc/handover/FileInfo;

    invoke-virtual {v7}, Lcom/android/nfc/handover/FileInfo;->getFileName()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v7

    .line 593
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 594
    const-string v8, "TransmitClient"

    const-string v9, "file delete success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :goto_3
    if-eqz v6, :cond_2

    .line 600
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 601
    :catch_1
    move-exception v0

    .line 603
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 596
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    const-string v8, "TransmitClient"

    const-string v9, "file delete fail"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 590
    .end local v6    # "inStream":Ljava/io/FileInputStream;
    .restart local v5    # "inStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 594
    const-string v7, "TransmitClient"

    const-string v9, "file delete success"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :goto_5
    if-eqz v5, :cond_6

    .line 600
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_6
    move-object v7, v8

    .line 604
    goto :goto_2

    .line 596
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v7, "TransmitClient"

    const-string v9, "file delete fail"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 601
    :catch_3
    move-exception v0

    .line 603
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 593
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_7
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 594
    const-string v8, "TransmitClient"

    const-string v9, "file delete success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :goto_8
    if-eqz v5, :cond_8

    .line 600
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 604
    :cond_8
    :goto_9
    throw v7

    .line 596
    :cond_9
    const-string v8, "TransmitClient"

    const-string v9, "file delete fail"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 601
    :catch_4
    move-exception v0

    .line 603
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "extRoot":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "fileinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    .end local v5    # "inStream":Ljava/io/FileInputStream;
    :cond_a
    move-object v7, v8

    .line 608
    goto :goto_2

    .line 593
    .restart local v1    # "extRoot":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "fileinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    .restart local v6    # "inStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "inStream":Ljava/io/FileInputStream;
    .restart local v5    # "inStream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 590
    .end local v5    # "inStream":Ljava/io/FileInputStream;
    .restart local v6    # "inStream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    move-object v5, v6

    .end local v6    # "inStream":Ljava/io/FileInputStream;
    .restart local v5    # "inStream":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method private sendBroadcast(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    const-string v0, "com.android.nfc.handover.extra.SOURCE_ADDRESS"

    iget-object v1, p0, Lcom/android/nfc/handover/TransmitClient;->mRemoteMac:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitClient;->mContext:Landroid/content/Context;

    const-string v1, "com.android.nfc.permission.ACCESS_INTERFACE"

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 111
    return-void
.end method


# virtual methods
.method public cancelFileTransmit()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "TransmitClient"

    const-string v1, "cancelFileTransmit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/TransmitClient;->isCancelFile:Z

    .line 92
    return-void
.end method

.method public getFiles(Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "configinfo"    # Lcom/android/nfc/handover/ConfigInfo;
    .param p2, "iPAddress"    # Ljava/lang/String;

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;-><init>(Lcom/android/nfc/handover/TransmitClient;Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/nfc/handover/TransmitClient;->mGetFileThread:Lcom/android/nfc/handover/TransmitClient$GetFileThread;

    .line 152
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitClient;->mGetFileThread:Lcom/android/nfc/handover/TransmitClient$GetFileThread;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public isSendingFile()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/nfc/handover/TransmitClient;->isSendingFile:Z

    return v0
.end method

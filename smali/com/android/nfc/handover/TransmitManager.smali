.class public Lcom/android/nfc/handover/TransmitManager;
.super Ljava/lang/Object;
.source "TransmitManager.java"


# static fields
.field private static final DBG:Z = true

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSelectHandover:Lcom/android/nfc/handover/Handover;

.field private mTransmitClent:Lcom/android/nfc/handover/TransmitClient;

.field private mTransmitServer:Lcom/android/nfc/handover/TransmitServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "TransmitManager"

    sput-object v0, Lcom/android/nfc/handover/TransmitManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/handover/Handover;Landroid/content/Context;)V
    .locals 0
    .param p1, "handover"    # Lcom/android/nfc/handover/Handover;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/nfc/handover/TransmitManager;->mSelectHandover:Lcom/android/nfc/handover/Handover;

    .line 45
    iput-object p2, p0, Lcom/android/nfc/handover/TransmitManager;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private clearFileInfoXML()V
    .locals 6

    .prologue
    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/nfc/handover/TransmitManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "appDir":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "fileInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "fileInfoDirPath":Ljava/lang/String;
    sget-object v3, Lcom/android/nfc/handover/TransmitManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearFileInfoXML,fileInfoDirPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0, v1}, Lcom/android/nfc/handover/TransmitManager;->delAllFile(Ljava/lang/String;)V

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "tempFileDirPath":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/nfc/handover/TransmitManager;->delAllFile(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private delAllFile(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 124
    :cond_0
    return-void

    .line 103
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "tempList":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 108
    .local v2, "temp":Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 109
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 110
    new-instance v2, Ljava/io/File;

    .end local v2    # "temp":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .restart local v2    # "temp":Ljava/io/File;
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 115
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 117
    sget-object v4, Lcom/android/nfc/handover/TransmitManager;->TAG:Ljava/lang/String;

    const-string v5, "temp file delete success"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_3
    new-instance v2, Ljava/io/File;

    .end local v2    # "temp":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "temp":Ljava/io/File;
    goto :goto_1

    .line 120
    :cond_4
    sget-object v4, Lcom/android/nfc/handover/TransmitManager;->TAG:Ljava/lang/String;

    const-string v5, "temp file delete fail"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public buildHttpServer(Ljava/lang/String;)V
    .locals 2
    .param p1, "serverIp"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitServer:Lcom/android/nfc/handover/TransmitServer;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/android/nfc/handover/TransmitServer;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/TransmitServer;-><init>(Lcom/android/nfc/handover/TransmitManager;)V

    iput-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitServer:Lcom/android/nfc/handover/TransmitServer;

    .line 66
    :cond_0
    sget-object v0, Lcom/android/nfc/handover/TransmitManager;->TAG:Ljava/lang/String;

    const-string v1, "buildHttpServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitServer:Lcom/android/nfc/handover/TransmitServer;

    invoke-virtual {v0, p1}, Lcom/android/nfc/handover/TransmitServer;->buildHttpServer(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public cancelFileTransmit()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitClent:Lcom/android/nfc/handover/TransmitClient;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitClent:Lcom/android/nfc/handover/TransmitClient;

    invoke-virtual {v0}, Lcom/android/nfc/handover/TransmitClient;->cancelFileTransmit()V

    .line 59
    :cond_0
    return-void
.end method

.method public closeServer()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitServer:Lcom/android/nfc/handover/TransmitServer;

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/android/nfc/handover/TransmitManager;->clearFileInfoXML()V

    .line 73
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitServer:Lcom/android/nfc/handover/TransmitServer;

    invoke-virtual {v0}, Lcom/android/nfc/handover/TransmitServer;->closeHttpServer()Z

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFileUris(Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "configinfo"    # Lcom/android/nfc/handover/ConfigInfo;
    .param p2, "serverIP"    # Ljava/lang/String;
    .param p3, "remoteaddress"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Lcom/android/nfc/handover/TransmitClient;

    iget-object v1, p0, Lcom/android/nfc/handover/TransmitManager;->mSelectHandover:Lcom/android/nfc/handover/Handover;

    iget-object v2, p0, Lcom/android/nfc/handover/TransmitManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, v2}, Lcom/android/nfc/handover/TransmitClient;-><init>(Lcom/android/nfc/handover/Handover;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitClent:Lcom/android/nfc/handover/TransmitClient;

    .line 51
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitClent:Lcom/android/nfc/handover/TransmitClient;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/handover/TransmitClient;->getFiles(Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public getSelectHandover()Lcom/android/nfc/handover/Handover;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mSelectHandover:Lcom/android/nfc/handover/Handover;

    return-object v0
.end method

.method public stopServer()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitServer:Lcom/android/nfc/handover/TransmitServer;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitServer:Lcom/android/nfc/handover/TransmitServer;

    invoke-virtual {v0}, Lcom/android/nfc/handover/TransmitServer;->closeHttpServer()Z

    move-result v0

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/android/nfc/handover/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field private fileLen:J

.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v2, p0, Lcom/android/nfc/handover/FileInfo;->fileName:Ljava/lang/String;

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/nfc/handover/FileInfo;->fileLen:J

    .line 38
    iput-object v2, p0, Lcom/android/nfc/handover/FileInfo;->filePath:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getFileLen()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/android/nfc/handover/FileInfo;->fileLen:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/nfc/handover/FileInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/nfc/handover/FileInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public setFileLen(J)V
    .locals 1
    .param p1, "fileLen"    # J

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/android/nfc/handover/FileInfo;->fileLen:J

    .line 63
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/nfc/handover/FileInfo;->fileName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/nfc/handover/FileInfo;->filePath:Ljava/lang/String;

    .line 47
    return-void
.end method

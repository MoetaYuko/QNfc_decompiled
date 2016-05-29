.class public Lcom/android/nfc/handover/ConfigInfo;
.super Ljava/lang/Object;
.source "ConfigInfo.java"


# instance fields
.field private mFileInfo:Lcom/android/nfc/handover/FileInfo;

.field private mServerPort:I


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/FileInfo;I)V
    .locals 0
    .param p1, "fileInfo"    # Lcom/android/nfc/handover/FileInfo;
    .param p2, "serverPort"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/nfc/handover/ConfigInfo;->mFileInfo:Lcom/android/nfc/handover/FileInfo;

    .line 13
    iput p2, p0, Lcom/android/nfc/handover/ConfigInfo;->mServerPort:I

    .line 14
    return-void
.end method


# virtual methods
.method public getmFileInfo()Lcom/android/nfc/handover/FileInfo;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/nfc/handover/ConfigInfo;->mFileInfo:Lcom/android/nfc/handover/FileInfo;

    return-object v0
.end method

.method public getmServerPort()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/android/nfc/handover/ConfigInfo;->mServerPort:I

    return v0
.end method

.method public setmFileInfo(Lcom/android/nfc/handover/FileInfo;)V
    .locals 0
    .param p1, "mFileInfo"    # Lcom/android/nfc/handover/FileInfo;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/nfc/handover/ConfigInfo;->mFileInfo:Lcom/android/nfc/handover/FileInfo;

    .line 22
    return-void
.end method

.method public setmServerPort(I)V
    .locals 0
    .param p1, "mServerPort"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/android/nfc/handover/ConfigInfo;->mServerPort:I

    .line 26
    return-void
.end method

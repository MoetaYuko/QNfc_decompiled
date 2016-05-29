.class public Lcom/android/nfc/http/ParameterList;
.super Ljava/util/Vector;
.source "ParameterList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-void
.end method


# virtual methods
.method public at(I)Lcom/android/nfc/http/Parameter;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/http/Parameter;

    return-object v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getParameter(I)Lcom/android/nfc/http/Parameter;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/http/Parameter;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Lcom/android/nfc/http/Parameter;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 46
    if-nez p1, :cond_1

    move-object v2, v3

    .line 55
    :cond_0
    :goto_0
    return-object v2

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/http/ParameterList;->size()I

    move-result v1

    .line 50
    .local v1, "nLists":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/nfc/http/ParameterList;->at(I)Lcom/android/nfc/http/Parameter;

    move-result-object v2

    .line 52
    .local v2, "param":Lcom/android/nfc/http/Parameter;
    invoke-virtual {v2}, Lcom/android/nfc/http/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "param":Lcom/android/nfc/http/Parameter;
    :cond_2
    move-object v2, v3

    .line 55
    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/ParameterList;->getParameter(Ljava/lang/String;)Lcom/android/nfc/http/Parameter;

    move-result-object v0

    .line 60
    .local v0, "param":Lcom/android/nfc/http/Parameter;
    if-nez v0, :cond_0

    .line 61
    const-string v1, ""

    .line 62
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/nfc/http/Parameter;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/util/Vector;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

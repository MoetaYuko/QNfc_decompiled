.class final Lcom/android/nfc/beam/BeamTransferRecord$1;
.super Ljava/lang/Object;
.source "BeamTransferRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/beam/BeamTransferRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/nfc/beam/BeamTransferRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/nfc/beam/BeamTransferRecord;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    .local v0, "deviceType":I
    sget v6, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-eq v0, v6, :cond_0

    .line 85
    :goto_0
    return-object v5

    .line 76
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 77
    .local v3, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v2, :cond_2

    .line 78
    .local v2, "remoteActivating":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .local v1, "numUris":I
    const/4 v4, 0x0

    .line 80
    .local v4, "uris":[Landroid/net/Uri;
    if-lez v1, :cond_1

    .line 81
    new-array v4, v1, [Landroid/net/Uri;

    .line 82
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4, v6}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 85
    :cond_1
    new-instance v6, Lcom/android/nfc/beam/BeamTransferRecord;

    invoke-direct {v6, v3, v2, v4, v5}, Lcom/android/nfc/beam/BeamTransferRecord;-><init>(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;Lcom/android/nfc/beam/BeamTransferRecord$1;)V

    move-object v5, v6

    goto :goto_0

    .line 77
    .end local v1    # "numUris":I
    .end local v2    # "remoteActivating":Z
    .end local v4    # "uris":[Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/nfc/beam/BeamTransferRecord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/nfc/beam/BeamTransferRecord;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 92
    new-array v0, p1, [Lcom/android/nfc/beam/BeamTransferRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/nfc/beam/BeamTransferRecord$1;->newArray(I)[Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v0

    return-object v0
.end method

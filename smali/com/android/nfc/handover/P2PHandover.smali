.class public Lcom/android/nfc/handover/P2PHandover;
.super Lcom/android/nfc/handover/Handover;
.source "P2PHandover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/P2PHandover$1;,
        Lcom/android/nfc/handover/P2PHandover$WiFiDirectBroadcastReceiver;,
        Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    }
.end annotation


# static fields
.field static final ACTION_CLOSE_HANDOVER_TRANSFER:Ljava/lang/String; = "com.android.nfc.p2phandover.action.CLOSE"

.field static final DBG:Z = true

.field private static final FAST_CONNECT_PAYLOAD_MESSAGE_LOCATION:I = 0x1

.field private static final FAST_CONNECT_RECORD_NUMBER:I = 0x2

.field public static final MAC_FILE_PATH:Ljava/lang/String; = "/sys/class/net/p2p0/address"

.field static final P2P_ADDRESS:Ljava/lang/String; = "mac"

.field static final P2P_CONNECTED:I = 0x3

.field static final P2P_CONNECTTING:I = 0x2

.field static final P2P_DATA_AVAILABILITY_LEN:I = 0x2

.field static final P2P_IDLE:I = 0x1

.field static final P2P_NAME:Ljava/lang/String; = "devicename"

.field static final TAG:Ljava/lang/String; = "P2PHandover"

.field static final TYPE_WIFI_DIRECT:[B


# instance fields
.field private isConnected:Z

.field private isP2pHandoverSupport:Z

.field private mConnectState:I

.field private mContext:Landroid/content/Context;

.field private mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

.field mOriginalP2pConnStateFixed:Z

.field mOriginalStateFixed:Z

.field mP2pOriginalConnState:Z

.field private mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

.field private mTransmiteKey:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiOriginalState:Z

.field private receiver:Lcom/android/nfc/handover/P2PHandover$WiFiDirectBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "application/vnd.wifi.p2p"

    const-string v1, "US_ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/P2PHandover;->TYPE_WIFI_DIRECT:[B

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverManager"    # Lcom/android/nfc/handover/HandoverDataParser;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/android/nfc/handover/Handover;-><init>()V

    .line 47
    iput-boolean v1, p0, Lcom/android/nfc/handover/P2PHandover;->isConnected:Z

    .line 48
    iput-boolean v1, p0, Lcom/android/nfc/handover/P2PHandover;->isP2pHandoverSupport:Z

    .line 49
    iput-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    .line 50
    iput v1, p0, Lcom/android/nfc/handover/P2PHandover;->mTransmiteKey:I

    .line 57
    iput v3, p0, Lcom/android/nfc/handover/P2PHandover;->mConnectState:I

    .line 58
    iput-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->receiver:Lcom/android/nfc/handover/P2PHandover$WiFiDirectBroadcastReceiver;

    .line 67
    iput-boolean v1, p0, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pOriginalConnState:Z

    .line 87
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/nfc/handover/P2PHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    .line 89
    iput v1, p0, Lcom/android/nfc/handover/P2PHandover;->mTransmiteKey:I

    .line 90
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/P2PHandover;->setDeviceConnected(Z)V

    .line 91
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandover;->setP2PConnectState(I)V

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    new-instance v1, Lcom/android/nfc/handover/P2PHandover$WiFiDirectBroadcastReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/nfc/handover/P2PHandover$WiFiDirectBroadcastReceiver;-><init>(Lcom/android/nfc/handover/P2PHandover;Lcom/android/nfc/handover/P2PHandover$1;)V

    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandover;->receiver:Lcom/android/nfc/handover/P2PHandover$WiFiDirectBroadcastReceiver;

    .line 96
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->receiver:Lcom/android/nfc/handover/P2PHandover$WiFiDirectBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 98
    return-void
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/P2PHandover;)Lcom/android/nfc/handover/HandoverDataParser;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandover;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/nfc/handover/P2PHandover;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandover;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkRemoteHandoverData(Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)Z
    .locals 2
    .param p1, "data"    # Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    .prologue
    const/4 v0, 0x0

    .line 274
    if-nez p1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    iget-object v1, p1, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 280
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createP2PDateRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 7
    .param p1, "devicename"    # Ljava/lang/String;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/android/nfc/handover/P2PHandover;->isHandoverSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    new-instance v2, Landroid/nfc/NdefRecord;

    invoke-direct {v2, v6, v5, v5, v5}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 177
    :goto_0
    return-object v2

    .line 162
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 163
    .local v1, "record":Ljava/lang/StringBuffer;
    const-string v2, "\"devicename\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    const-string v2, "\"mac\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    if-eqz p2, :cond_1

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 174
    .local v0, "addressPayload":[B
    const-string v2, "P2PHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createDataRecord(): devicename = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v2, Landroid/nfc/NdefRecord;

    sget-object v3, Lcom/android/nfc/handover/P2PHandover;->TYPE_WIFI_DIRECT:[B

    invoke-direct {v2, v6, v3, v5, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    goto :goto_0

    .line 169
    .end local v0    # "addressPayload":[B
    :cond_1
    const-string v2, "\"\"\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private createResponeDataRecord(Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)Landroid/nfc/NdefRecord;
    .locals 2
    .param p1, "mP2pLocalHandoverData"    # Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    .prologue
    .line 204
    iget-object v0, p1, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/nfc/handover/P2PHandover;->createP2PDateRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 140
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_p2p_device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 142
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "id":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getMacFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    const-string v0, "/sys/class/net/p2p0/address"

    return-object v0
.end method

.method private getP2PConnectState()I
    .locals 1

    .prologue
    .line 688
    iget v0, p0, Lcom/android/nfc/handover/P2PHandover;->mConnectState:I

    return v0
.end method

.method private getP2PMacAddressFormFile()Ljava/lang/String;
    .locals 5

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "p2pMacAddress":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    const-string v3, "nfc-record"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 315
    .local v1, "record":Landroid/content/SharedPreferences;
    const-string v2, "p2pMacAddress"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    return-object v0
.end method

.method private getP2PMacAddressFromSystem()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 332
    const/4 v1, 0x0

    .line 333
    .local v1, "br":Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandover;->getMacFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 336
    const-string v7, "P2PHandover"

    const-string v8, "getP2PMacAddressFromSystem !file.exists()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 362
    :goto_0
    return-object v0

    .line 341
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    const-string v8, "/sys/class/net/p2p0/address"

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v8, "UTF-8"

    invoke-direct {v5, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 342
    .local v5, "fileReader":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 344
    .local v0, "address":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_2

    .line 356
    if-eqz v2, :cond_1

    .line 358
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move-object v1, v2

    .line 362
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 359
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    .line 361
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 356
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    if-eqz v2, :cond_3

    .line 358
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_2
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v0, v6

    .line 362
    goto :goto_0

    .line 359
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .line 361
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 349
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v3

    .line 350
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 356
    if-eqz v1, :cond_4

    .line 358
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    :goto_4
    move-object v0, v6

    .line 362
    goto :goto_0

    .line 359
    .restart local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v3

    .line 361
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 352
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 353
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 356
    if-eqz v1, :cond_5

    .line 358
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_5
    :goto_6
    move-object v0, v6

    .line 362
    goto :goto_0

    .line 359
    :catch_5
    move-exception v3

    .line 361
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 356
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_7
    if-eqz v1, :cond_6

    .line 358
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 362
    :cond_6
    :goto_8
    throw v6

    .line 359
    :catch_6
    move-exception v3

    .line 361
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 356
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_7

    .line 352
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 349
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_8
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "payload"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 218
    const/4 v2, 0x0

    .line 219
    .local v2, "value":Ljava/lang/String;
    const/4 v0, -0x1

    .line 220
    .local v0, "begin":I
    const/4 v1, -0x1

    .line 221
    .local v1, "end":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 222
    if-ne v0, v6, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-object v3

    .line 225
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "\":\""

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 226
    const-string v4, "\","

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 227
    if-ne v1, v6, :cond_2

    .line 228
    const-string v4, "\"\n"

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 230
    :cond_2
    if-eq v1, v6, :cond_0

    .line 233
    if-eq v0, v1, :cond_0

    .line 236
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 237
    goto :goto_0
.end method

.method private getp2pMacAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 376
    const/4 v1, 0x0

    .line 377
    .local v1, "mac":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandover;->getP2PMacAddressFormFile()Ljava/lang/String;

    move-result-object v1

    .line 378
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v1

    .line 391
    :goto_0
    return-object v2

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandover;->getP2PMacAddressFromSystem()Ljava/lang/String;

    move-result-object v1

    .line 382
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 384
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/P2PHandover;->saveMacAddressToRecordFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v2, v1

    .line 391
    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 387
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private parseWifiP2p([B)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    .locals 4
    .param p1, "payload"    # [B

    .prologue
    .line 250
    new-instance v2, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    invoke-direct {v2}, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;-><init>()V

    .line 253
    .local v2, "result":Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 254
    .local v1, "mpayload":Ljava/lang/String;
    const-string v3, "mac"

    invoke-direct {p0, v1, v3}, Lcom/android/nfc/handover/P2PHandover;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    .line 255
    const-string v3, "devicename"

    invoke-direct {p0, v1, v3}, Lcom/android/nfc/handover/P2PHandover;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v1    # "mpayload":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 256
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private procHandoverRequest(Landroid/nfc/NdefMessage;Z)Landroid/nfc/NdefMessage;
    .locals 17
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "isFastConnet"    # Z

    .prologue
    .line 405
    const/4 v10, 0x0

    .line 406
    .local v10, "record":Landroid/nfc/NdefRecord;
    const/4 v8, 0x0

    .line 407
    .local v8, "mRemoteHandoverData":Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    const/4 v11, 0x0

    .line 408
    .local v11, "transmiteKey":I
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v12

    array-length v12, v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_2

    .line 409
    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    .local v1, "arr$":[Landroid/nfc/NdefRecord;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v9, v1, v4

    .line 410
    .local v9, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v9}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    invoke-virtual {v9}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v12

    sget-object v13, Lcom/android/nfc/handover/P2PHandover;->TYPE_WIFI_DIRECT:[B

    invoke-static {v12, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 411
    move-object v10, v9

    .line 420
    .end local v9    # "r":Landroid/nfc/NdefRecord;
    :cond_0
    if-nez v10, :cond_3

    .line 421
    const-string v12, "P2PHandover"

    const-string v13, "proHandoverRequest can not find target record"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v12, 0x0

    .line 456
    .end local v1    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :goto_1
    return-object v12

    .line 409
    .restart local v1    # "arr$":[Landroid/nfc/NdefRecord;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v9    # "r":Landroid/nfc/NdefRecord;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 416
    .end local v1    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v9    # "r":Landroid/nfc/NdefRecord;
    :cond_2
    const-string v12, "P2PHandover"

    const-string v13, "null == message"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v12, 0x0

    goto :goto_1

    .line 425
    .restart local v1    # "arr$":[Landroid/nfc/NdefRecord;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_3
    const-string v12, "P2PHandover"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "proHandoverRequest getP2PConnectState() = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/handover/P2PHandover;->getP2PConnectState()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/handover/P2PHandover;->getP2PConnectState()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    .line 427
    new-instance v12, Landroid/nfc/NdefMessage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/P2PHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/nfc/handover/HandoverDataParser;->createHwBeamConnecttingRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Landroid/nfc/NdefRecord;

    invoke-direct {v12, v13, v14}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    goto :goto_1

    .line 428
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/handover/P2PHandover;->getP2PConnectState()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 429
    const/4 v12, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/nfc/handover/P2PHandover;->setP2PConnectState(I)V

    .line 432
    :cond_5
    if-nez p2, :cond_7

    .line 433
    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v13

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v3, v12, v13

    .line 434
    .local v3, "filerecord":Landroid/nfc/NdefRecord;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v12, v3}, Lcom/android/nfc/handover/HandoverDataParser;->parseConfigInfoRecord(Landroid/nfc/NdefRecord;)Lcom/android/nfc/handover/ConfigInfo;

    move-result-object v2

    .line 435
    .local v2, "configInfo":Lcom/android/nfc/handover/ConfigInfo;
    if-nez v2, :cond_6

    .line 436
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/nfc/handover/P2PHandover;->setP2PConnectState(I)V

    .line 437
    const/4 v12, 0x0

    goto :goto_1

    .line 440
    :cond_6
    invoke-virtual {v10}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/nfc/handover/P2PHandover;->parseWifiP2p([B)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v8

    .line 441
    iput-object v2, v8, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    .line 442
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/nfc/handover/P2PHandover;->mTransmiteKey:I

    .end local v11    # "transmiteKey":I
    add-int/lit8 v12, v11, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/nfc/handover/P2PHandover;->mTransmiteKey:I

    .line 443
    .restart local v11    # "transmiteKey":I
    const-string v12, "P2PHandover"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "proHandoverRequest transmiteKey = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v6, Lcom/android/nfc/handover/P2PHandoverClientSession;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v8, v11}, Lcom/android/nfc/handover/P2PHandoverClientSession;-><init>(Lcom/android/nfc/handover/P2PHandover;Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;I)V

    .line 445
    .local v6, "mP2pHandoverSession":Lcom/android/nfc/handover/P2PHandoverClientSession;
    invoke-virtual {v6}, Lcom/android/nfc/handover/P2PHandoverClientSession;->start()V

    .line 453
    .end local v2    # "configInfo":Lcom/android/nfc/handover/ConfigInfo;
    .end local v3    # "filerecord":Landroid/nfc/NdefRecord;
    :goto_2
    new-instance v7, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    invoke-direct {v7}, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;-><init>()V

    .line 454
    .local v7, "mP2pLocalHandoverData":Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/handover/P2PHandover;->getp2pMacAddress()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    .line 455
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/handover/P2PHandover;->getDeviceName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;

    .line 456
    new-instance v12, Landroid/nfc/NdefMessage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/P2PHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/handover/P2PHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Landroid/nfc/NdefRecord;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/nfc/handover/P2PHandover;->createResponeDataRecord(Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)Landroid/nfc/NdefRecord;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-direct {v12, v13, v14}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    goto/16 :goto_1

    .line 447
    .end local v6    # "mP2pHandoverSession":Lcom/android/nfc/handover/P2PHandoverClientSession;
    .end local v7    # "mP2pLocalHandoverData":Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    :cond_7
    const-string v12, "P2PHandover"

    const-string v13, "P2p fast connect"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {v10}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/nfc/handover/P2PHandover;->parseWifiP2p([B)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v8

    .line 449
    new-instance v6, Lcom/android/nfc/handover/P2PHandoverClientSession;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v8, v11}, Lcom/android/nfc/handover/P2PHandoverClientSession;-><init>(Lcom/android/nfc/handover/P2PHandover;Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;I)V

    .line 450
    .restart local v6    # "mP2pHandoverSession":Lcom/android/nfc/handover/P2PHandoverClientSession;
    invoke-virtual {v6}, Lcom/android/nfc/handover/P2PHandoverClientSession;->P2PFastConnect()V

    goto :goto_2
.end method

.method private setP2PConnectState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 675
    const-string v0, "P2PHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setP2PConnectState state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iput p1, p0, Lcom/android/nfc/handover/P2PHandover;->mConnectState:I

    .line 677
    return-void
.end method


# virtual methods
.method public createDataRecord()Landroid/nfc/NdefRecord;
    .locals 3

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandover;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "devicename":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandover;->getp2pMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "deviceAddress":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/android/nfc/handover/P2PHandover;->createP2PDateRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v2

    return-object v2
.end method

.method public createFastConDataRecord()Landroid/nfc/NdefRecord;
    .locals 3

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandover;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 622
    .local v1, "devicename":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandover;->getp2pMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "deviceAddress":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/android/nfc/handover/P2PHandover;->createP2PDateRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v2

    return-object v2
.end method

.method public disableDevice()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 557
    const-string v2, "P2PHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableDevice ()isConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/nfc/handover/P2PHandover;->isConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    if-eqz v2, :cond_0

    .line 560
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->deviceClose()V

    .line 561
    iput-object v6, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    .line 563
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    const-string v3, "wifip2p"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 564
    .local v1, "manager":Landroid/net/wifi/p2p/WifiP2pManager;
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    .line 565
    .local v0, "channel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    iget-boolean v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pOriginalConnState:Z

    if-nez v2, :cond_1

    .line 566
    invoke-virtual {v1, v0, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 568
    :cond_1
    iput-boolean v5, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pOriginalConnState:Z

    .line 569
    iput-boolean v5, p0, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    .line 570
    invoke-virtual {p0, v5}, Lcom/android/nfc/handover/P2PHandover;->setDeviceConnected(Z)V

    .line 572
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/nfc/handover/P2PHandover;->mWifiOriginalState:Z

    if-nez v2, :cond_2

    .line 574
    const-string v2, "P2PHandover"

    const-string v3, "disableDevice()close wifi"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 577
    :cond_2
    iput-boolean v5, p0, Lcom/android/nfc/handover/P2PHandover;->mOriginalStateFixed:Z

    .line 578
    const/4 v2, 0x1

    return v2
.end method

.method public doFastConHandover(Landroid/nfc/NdefMessage;)V
    .locals 6
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x2

    .line 648
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    array-length v3, v3

    if-ge v3, v5, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v3, v4

    .line 652
    .local v2, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v4, Lcom/android/nfc/handover/P2PHandover;->TYPE_WIFI_DIRECT:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 653
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandover;->parseWifiP2p([B)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v1

    .line 654
    .local v1, "mRemoteHandoverData":Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-direct {p0, v1}, Lcom/android/nfc/handover/P2PHandover;->checkRemoteHandoverData(Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 655
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;-><init>(Lcom/android/nfc/handover/P2PHandover;Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)V

    .line 656
    .local v0, "P2pServerSession":Lcom/android/nfc/handover/P2PHandoverServerSession;
    invoke-virtual {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->P2PFastConnect()V

    goto :goto_0
.end method

.method public doHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)V
    .locals 8
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 486
    iget-boolean v2, p0, Lcom/android/nfc/handover/P2PHandover;->mOriginalStateFixed:Z

    if-nez v2, :cond_0

    .line 487
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/nfc/handover/P2PHandover;->mWifiOriginalState:Z

    .line 488
    iput-boolean v6, p0, Lcom/android/nfc/handover/P2PHandover;->mOriginalStateFixed:Z

    .line 491
    :cond_0
    invoke-virtual {p2}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    array-length v2, v2

    if-ge v2, v5, :cond_2

    .line 492
    const-string v2, "P2PHandover"

    const-string v3, "doHandoverUri it is not a availability data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_1
    :goto_0
    return-void

    .line 496
    :cond_2
    invoke-virtual {p2}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v1, v2, v6

    .line 497
    .local v1, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v2

    if-ne v2, v5, :cond_1

    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    sget-object v3, Lcom/android/nfc/handover/P2PHandover;->TYPE_WIFI_DIRECT:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 499
    const-string v2, "P2PHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doHandoverUri getP2PConnectState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandover;->getP2PConnectState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandover;->getP2PConnectState()I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 502
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandover;->getP2PConnectState()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 503
    invoke-direct {p0, v5}, Lcom/android/nfc/handover/P2PHandover;->setP2PConnectState(I)V

    .line 506
    :cond_3
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/nfc/handover/P2PHandover;->parseWifiP2p([B)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v0

    .line 507
    .local v0, "mRemoteHandoverData":Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-direct {p0, v0}, Lcom/android/nfc/handover/P2PHandover;->checkRemoteHandoverData(Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 508
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverDataParser;

    iget-object v2, v2, Lcom/android/nfc/handover/HandoverDataParser;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;

    invoke-virtual {v2}, Lcom/android/nfc/handover/HandoverDataParser$HandoverPowerManager;->stopMonitoring()V

    .line 509
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 510
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    if-eqz v2, :cond_4

    .line 511
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->deviceClose()V

    .line 512
    iput-object v7, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    .line 515
    :cond_4
    new-instance v2, Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-direct {v2, p0, v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;-><init>(Lcom/android/nfc/handover/P2PHandover;Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)V

    iput-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    .line 516
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->start()V

    goto :goto_0

    .line 518
    :cond_5
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    if-nez v2, :cond_6

    .line 519
    new-instance v2, Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-direct {v2, p0, v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;-><init>(Lcom/android/nfc/handover/P2PHandover;Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)V

    iput-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    .line 520
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->start()V

    goto/16 :goto_0

    .line 522
    :cond_6
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getRemoteHandoverData()Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getRemoteHandoverData()Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 524
    :cond_7
    const-string v2, "P2PHandover"

    const-string v3, "do not connect this divece before"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getRemoteHandoverData()Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getRemoteHandoverData()Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 527
    const-string v2, "P2PHandover"

    const-string v3, "clear data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->stop()V

    .line 529
    iput-object v7, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    .line 531
    :cond_8
    new-instance v2, Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-direct {v2, p0, v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;-><init>(Lcom/android/nfc/handover/P2PHandover;Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)V

    iput-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    .line 532
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->start()V

    goto/16 :goto_0

    .line 535
    :cond_9
    const-string v2, "P2PHandover"

    const-string v3, "already connect to client"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isHandoverSupported()Z
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.direct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/handover/P2PHandover;->isP2pHandoverSupport:Z

    .line 608
    iget-boolean v0, p0, Lcom/android/nfc/handover/P2PHandover;->isP2pHandoverSupport:Z

    return v0
.end method

.method public saveMacAddressToRecordFile(Ljava/lang/String;)V
    .locals 5
    .param p1, "macAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 293
    if-nez p1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    const-string v3, "nfc-record"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 298
    .local v1, "record":Landroid/content/SharedPreferences;
    const-string v2, "p2pMacAddress"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "p2pMacAddress":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "p2pMacAddress"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setDeviceConnected(Z)V
    .locals 1
    .param p1, "connected"    # Z

    .prologue
    .line 590
    iput-boolean p1, p0, Lcom/android/nfc/handover/P2PHandover;->isConnected:Z

    .line 591
    iget-boolean v0, p0, Lcom/android/nfc/handover/P2PHandover;->isConnected:Z

    if-eqz v0, :cond_0

    .line 592
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/P2PHandover;->setP2PConnectState(I)V

    .line 596
    :goto_0
    return-void

    .line 594
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/P2PHandover;->setP2PConnectState(I)V

    goto :goto_0
.end method

.method public tryFastConHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .locals 1
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 636
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/nfc/handover/P2PHandover;->procHandoverRequest(Landroid/nfc/NdefMessage;Z)Landroid/nfc/NdefMessage;

    move-result-object v0

    return-object v0
.end method

.method public tryHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .locals 1
    .param p1, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/android/nfc/handover/P2PHandover;->mOriginalStateFixed:Z

    if-nez v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/handover/P2PHandover;->mWifiOriginalState:Z

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/P2PHandover;->mOriginalStateFixed:Z

    .line 473
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/nfc/handover/P2PHandover;->procHandoverRequest(Landroid/nfc/NdefMessage;Z)Landroid/nfc/NdefMessage;

    move-result-object v0

    return-object v0
.end method

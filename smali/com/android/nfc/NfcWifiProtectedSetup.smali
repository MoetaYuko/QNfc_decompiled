.class public final Lcom/android/nfc/NfcWifiProtectedSetup;
.super Ljava/lang/Object;
.source "NfcWifiProtectedSetup.java"


# static fields
.field private static final AUTH_TYPE_EXPECTED_SIZE:S = 0x2s

.field private static final AUTH_TYPE_FIELD_ID:S = 0x1003s

.field private static final AUTH_TYPE_OPEN:S = 0x0s

.field private static final AUTH_TYPE_WPA2_EAP:S = 0x10s

.field private static final AUTH_TYPE_WPA2_PSK:S = 0x20s

.field private static final AUTH_TYPE_WPA_EAP:S = 0x8s

.field private static final AUTH_TYPE_WPA_PSK:S = 0x2s

.field private static final CREDENTIAL_FIELD_ID:S = 0x100es

.field public static final EXTRA_WIFI_CONFIG:Ljava/lang/String; = "com.android.nfc.WIFI_CONFIG_EXTRA"

.field private static final MAX_NETWORK_KEY_SIZE_BYTES:I = 0x40

.field private static final NETWORK_KEY_FIELD_ID:S = 0x1027s

.field public static final NFC_TOKEN_MIME_TYPE:Ljava/lang/String; = "application/vnd.wfa.wsc"

.field private static final SSID_FIELD_ID:S = 0x1045s


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parse(Landroid/nfc/NdefMessage;)Landroid/net/wifi/WifiConfiguration;
    .locals 10
    .param p0, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v7

    .line 97
    .local v7, "records":[Landroid/nfc/NdefRecord;
    move-object v0, v7

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 98
    .local v6, "record":Landroid/nfc/NdefRecord;
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    const-string v9, "application/vnd.wfa.wsc"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 99
    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 100
    .local v5, "payload":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 101
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 102
    .local v1, "fieldId":S
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 103
    .local v2, "fieldSize":S
    const/16 v8, 0x100e

    if-ne v1, v8, :cond_0

    .line 104
    invoke-static {v5, v2}, Lcom/android/nfc/NfcWifiProtectedSetup;->parseCredential(Ljava/nio/ByteBuffer;S)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 109
    .end local v1    # "fieldId":S
    .end local v2    # "fieldSize":S
    .end local v5    # "payload":Ljava/nio/ByteBuffer;
    .end local v6    # "record":Landroid/nfc/NdefRecord;
    :goto_1
    return-object v8

    .line 97
    .restart local v6    # "record":Landroid/nfc/NdefRecord;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    .end local v6    # "record":Landroid/nfc/NdefRecord;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private static parseCredential(Ljava/nio/ByteBuffer;S)Landroid/net/wifi/WifiConfiguration;
    .locals 10
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "size"    # S

    .prologue
    const/4 v7, 0x0

    .line 113
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 114
    .local v6, "startPosition":I
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 115
    .local v4, "result":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int v9, v6, p1

    if-ge v8, v9, :cond_4

    .line 116
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 117
    .local v1, "fieldId":S
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 120
    .local v2, "fieldSize":S
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v2

    add-int v9, v6, p1

    if-le v8, v9, :cond_1

    move-object v4, v7

    .line 158
    .end local v1    # "fieldId":S
    .end local v2    # "fieldSize":S
    .end local v4    # "result":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_1
    return-object v4

    .line 124
    .restart local v1    # "fieldId":S
    .restart local v2    # "fieldSize":S
    .restart local v4    # "result":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    sparse-switch v1, :sswitch_data_0

    .line 149
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 126
    :sswitch_0
    new-array v5, v2, [B

    .line 127
    .local v5, "ssid":[B
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 128
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 131
    .end local v5    # "ssid":[B
    :sswitch_1
    const/16 v8, 0x40

    if-le v2, v8, :cond_2

    move-object v4, v7

    .line 132
    goto :goto_1

    .line 134
    :cond_2
    new-array v3, v2, [B

    .line 135
    .local v3, "networkKey":[B
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 136
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 139
    .end local v3    # "networkKey":[B
    :sswitch_2
    const/4 v8, 0x2

    if-eq v2, v8, :cond_3

    move-object v4, v7

    .line 141
    goto :goto_1

    .line 144
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 145
    .local v0, "authType":S
    iget-object v8, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {v8, v0}, Lcom/android/nfc/NfcWifiProtectedSetup;->populateAllowedKeyManagement(Ljava/util/BitSet;S)V

    goto/16 :goto_0

    .line 154
    .end local v0    # "authType":S
    .end local v1    # "fieldId":S
    .end local v2    # "fieldSize":S
    :cond_4
    iget-object v8, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v8, :cond_5

    iget-object v8, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v8, :cond_0

    :cond_5
    move-object v4, v7

    .line 158
    goto :goto_1

    .line 124
    nop

    :sswitch_data_0
    .sparse-switch
        0x1003 -> :sswitch_2
        0x1027 -> :sswitch_1
        0x1045 -> :sswitch_0
    .end sparse-switch
.end method

.method private static populateAllowedKeyManagement(Ljava/util/BitSet;S)V
    .locals 2
    .param p0, "allowedKeyManagement"    # Ljava/util/BitSet;
    .param p1, "authType"    # S

    .prologue
    const/4 v1, 0x2

    .line 162
    if-eq p1, v1, :cond_0

    const/16 v0, 0x20

    if-ne p1, v0, :cond_2

    .line 163
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10

    if-ne p1, v0, :cond_4

    .line 165
    :cond_3
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 166
    :cond_4
    if-nez p1, :cond_1

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public static tryNfcWifiSetup(Landroid/nfc/tech/Ndef;Landroid/content/Context;)Z
    .locals 8
    .param p0, "ndef"    # Landroid/nfc/tech/Ndef;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 63
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v4

    .line 67
    :cond_1
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 68
    .local v0, "cachedNdefMessage":Landroid/nfc/NdefMessage;
    if-eqz v0, :cond_0

    .line 74
    :try_start_0
    invoke-static {v0}, Lcom/android/nfc/NfcWifiProtectedSetup;->parse(Landroid/nfc/NdefMessage;)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 80
    .local v3, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    const-string v6, "no_config_wifi"

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 82
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.android.nfc.WIFI_CONFIG_EXTRA"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    const-class v5, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-virtual {v4, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    const v5, 0x10008000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 87
    .local v1, "configureNetworkIntent":Landroid/content/Intent;
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 88
    const/4 v4, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "configureNetworkIntent":Landroid/content/Intent;
    .end local v3    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    goto :goto_0
.end method

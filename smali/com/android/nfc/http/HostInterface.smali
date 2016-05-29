.class public Lcom/android/nfc/http/HostInterface;
.super Ljava/lang/Object;
.source "HostInterface.java"


# static fields
.field public static final IPV4_BITMASK:I = 0x1

.field public static final IPV6_BITMASK:I = 0x10

.field public static final LOCAL_BITMASK:I = 0x100

.field public static final USE_LOOPBACK_ADDR:Z

.field public static final USE_ONLY_IPV4_ADDR:Z

.field public static final USE_ONLY_IPV6_ADDR:Z

.field private static ifAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, ""

    sput-object v0, Lcom/android/nfc/http/HostInterface;->ifAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getHostAddress(I)Ljava/lang/String;
    .locals 9
    .param p0, "n"    # I

    .prologue
    const/4 v3, 0x0

    .line 185
    invoke-static {}, Lcom/android/nfc/http/HostInterface;->hasAssignedInterface()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 186
    invoke-static {}, Lcom/android/nfc/http/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v3

    .line 217
    :cond_0
    :goto_0
    return-object v3

    .line 188
    :cond_1
    const/4 v4, 0x0

    .line 191
    .local v4, "hostAddrCnt":I
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v6

    .line 193
    .local v6, "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-eqz v6, :cond_0

    .line 195
    :cond_2
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 196
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 197
    .local v5, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 198
    .local v1, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 199
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 200
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/android/nfc/http/HostInterface;->isUsableAddress(Ljava/net/InetAddress;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 202
    if-ge v4, p0, :cond_4

    .line 203
    add-int/lit8 v4, v4, 0x1

    .line 204
    goto :goto_1

    .line 206
    :cond_4
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 209
    .local v3, "host":Ljava/lang/String;
    goto :goto_0

    .line 212
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "host":Ljava/lang/String;
    .end local v5    # "ni":Ljava/net/NetworkInterface;
    .end local v6    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_0
    move-exception v2

    .line 214
    .local v2, "e":Ljava/net/SocketException;
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 217
    .end local v2    # "e":Ljava/net/SocketException;
    .restart local v6    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_5
    const-string v3, ""

    goto :goto_0
.end method

.method public static final getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 299
    move-object v0, p0

    .line 300
    .local v0, "hostAddr":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/nfc/http/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final getIPv4Address()Ljava/lang/String;
    .locals 5

    .prologue
    .line 275
    invoke-static {}, Lcom/android/nfc/http/HostInterface;->getNHostAddresses()I

    move-result v1

    .line 276
    .local v1, "addrCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 277
    invoke-static {v2}, Lcom/android/nfc/http/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/nfc/http/HostInterface;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 281
    .end local v0    # "addr":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 276
    .restart local v0    # "addr":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    .end local v0    # "addr":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static final getIPv6Address()Ljava/lang/String;
    .locals 5

    .prologue
    .line 285
    invoke-static {}, Lcom/android/nfc/http/HostInterface;->getNHostAddresses()I

    move-result v1

    .line 286
    .local v1, "addrCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 287
    invoke-static {v2}, Lcom/android/nfc/http/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/nfc/http/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 291
    .end local v0    # "addr":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 286
    .restart local v0    # "addr":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    .end local v0    # "addr":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static final getInetAddress(I[Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 11
    .param p0, "ipfilter"    # I
    .param p1, "interfaces"    # [Ljava/lang/String;

    .prologue
    .line 137
    const/4 v10, 0x0

    new-array v8, v10, [Ljava/net/InetAddress;

    .line 138
    .local v8, "resultAddresses":[Ljava/net/InetAddress;
    if-eqz p1, :cond_6

    .line 139
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 140
    .local v5, "iflist":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/net/NetworkInterface;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v10, p1

    if-ge v4, v10, :cond_1

    .line 143
    :try_start_0
    aget-object v10, p1, v4

    invoke-static {v10}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 147
    .local v6, "ni":Ljava/net/NetworkInterface;
    if-eqz v6, :cond_0

    .line 148
    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v6    # "ni":Ljava/net/NetworkInterface;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 144
    :catch_0
    move-exception v3

    .line 145
    .local v3, "e":Ljava/net/SocketException;
    goto :goto_1

    .line 151
    .end local v3    # "e":Ljava/net/SocketException;
    :cond_1
    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v7

    .line 159
    .end local v4    # "i":I
    .end local v5    # "iflist":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/net/NetworkInterface;>;"
    .local v7, "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v1, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    if-eqz v7, :cond_7

    .line 162
    :cond_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 163
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 164
    .restart local v6    # "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 165
    .local v2, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 166
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 167
    .local v0, "addr":Ljava/net/InetAddress;
    and-int/lit16 v10, p0, 0x100

    if-nez v10, :cond_4

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v10

    if-nez v10, :cond_3

    .line 169
    :cond_4
    and-int/lit8 v10, p0, 0x1

    if-nez v10, :cond_5

    and-int/lit8 v10, p0, 0x10

    if-eqz v10, :cond_3

    :cond_5
    instance-of v10, v0, Ljava/net/Inet4Address;

    if-eqz v10, :cond_3

    .line 170
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 154
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .end local v2    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v6    # "ni":Ljava/net/NetworkInterface;
    .end local v7    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_6
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .restart local v7    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    goto :goto_2

    .line 155
    .end local v7    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/net/SocketException;
    move-object v9, v8

    .line 181
    .end local v3    # "e":Ljava/net/SocketException;
    .end local v8    # "resultAddresses":[Ljava/net/InetAddress;
    .local v9, "resultAddresses":[Ljava/net/InetAddress;
    :goto_4
    return-object v9

    .line 177
    .end local v9    # "resultAddresses":[Ljava/net/InetAddress;
    .restart local v1    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .restart local v7    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .restart local v8    # "resultAddresses":[Ljava/net/InetAddress;
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_8

    .line 178
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v8, v10, [Ljava/net/InetAddress;

    .line 179
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_8
    move-object v9, v8

    .line 181
    .end local v8    # "resultAddresses":[Ljava/net/InetAddress;
    .restart local v9    # "resultAddresses":[Ljava/net/InetAddress;
    goto :goto_4
.end method

.method public static final getInterface()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/android/nfc/http/HostInterface;->hasAssignedInterface()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/nfc/http/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "firstIf":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/nfc/http/HostInterface;->setInterface(Ljava/lang/String;)V

    .line 69
    :cond_0
    sget-object v1, Lcom/android/nfc/http/HostInterface;->ifAddress:Ljava/lang/String;

    return-object v1
.end method

.method public static final getNHostAddresses()I
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 100
    invoke-static {}, Lcom/android/nfc/http/HostInterface;->hasAssignedInterface()Z

    move-result v7

    if-ne v7, v3, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v3

    .line 102
    :cond_1
    const/4 v3, 0x0

    .line 105
    .local v3, "nHostAddrs":I
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v5

    .line 107
    .local v5, "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-nez v5, :cond_2

    move v3, v6

    goto :goto_0

    .line 109
    :cond_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 110
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 111
    .local v4, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 112
    .local v1, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 113
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 114
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/android/nfc/http/HostInterface;->isUsableAddress(Ljava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    .line 116
    add-int/lit8 v3, v3, 0x1

    .line 117
    goto :goto_1

    .line 119
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v4    # "ni":Ljava/net/NetworkInterface;
    .end local v5    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/net/SocketException;
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    move v3, v6

    .line 122
    goto :goto_0
.end method

.method private static final hasAssignedInterface()Z
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/nfc/http/HostInterface;->ifAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final hasIPv4Addresses()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 251
    invoke-static {}, Lcom/android/nfc/http/HostInterface;->getNHostAddresses()I

    move-result v1

    .line 252
    .local v1, "addrCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 253
    invoke-static {v2}, Lcom/android/nfc/http/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/nfc/http/HostInterface;->isIPv4Address(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 257
    .end local v0    # "addr":Ljava/lang/String;
    :goto_1
    return v3

    .line 252
    .restart local v0    # "addr":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    .end local v0    # "addr":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static final hasIPv6Addresses()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 261
    invoke-static {}, Lcom/android/nfc/http/HostInterface;->getNHostAddresses()I

    move-result v1

    .line 262
    .local v1, "addrCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 263
    invoke-static {v2}, Lcom/android/nfc/http/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/nfc/http/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 267
    .end local v0    # "addr":Ljava/lang/String;
    :goto_1
    return v3

    .line 262
    .restart local v0    # "addr":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v0    # "addr":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static final isIPv4Address(Ljava/lang/String;)Z
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 237
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 238
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 239
    const/4 v1, 0x1

    .line 243
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_0
    :goto_0
    return v1

    .line 241
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static final isIPv6Address(Ljava/lang/String;)Z
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 226
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 227
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 228
    const/4 v1, 0x1

    .line 232
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_0
    :goto_0
    return v1

    .line 230
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static final isUsableAddress(Ljava/net/InetAddress;)Z
    .locals 2
    .param p0, "addr"    # Ljava/net/InetAddress;

    .prologue
    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 96
    :cond_0
    return v0
.end method

.method public static final setInterface(Ljava/lang/String;)V
    .locals 0
    .param p0, "ifaddr"    # Ljava/lang/String;

    .prologue
    .line 58
    sput-object p0, Lcom/android/nfc/http/HostInterface;->ifAddress:Ljava/lang/String;

    .line 59
    return-void
.end method

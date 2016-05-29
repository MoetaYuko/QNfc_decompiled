.class public Lcom/android/nfc/http/HTTPPacket;
.super Ljava/lang/Object;
.source "HTTPPacket.java"


# instance fields
.field private content:[B

.field private contentInput:Ljava/io/InputStream;

.field private firstLine:Ljava/lang/String;

.field private httpHeaderList:Ljava/util/Vector;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 342
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 481
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->content:[B

    .line 540
    iput-object v1, p0, Lcom/android/nfc/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 100
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/nfc/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/http/HTTPPacket;)V
    .locals 2
    .param p1, "httpPacket"    # Lcom/android/nfc/http/HTTPPacket;

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 342
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 481
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->content:[B

    .line 540
    iput-object v1, p0, Lcom/android/nfc/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 105
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/HTTPPacket;->set(Lcom/android/nfc/http/HTTPPacket;)V

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/nfc/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 342
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 481
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->content:[B

    .line 540
    iput-object v1, p0, Lcom/android/nfc/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 111
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/HTTPPacket;->set(Ljava/io/InputStream;)Z

    .line 113
    invoke-virtual {p0, v1}, Lcom/android/nfc/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 114
    return-void
.end method

.method private readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "in"    # Ljava/io/BufferedInputStream;

    .prologue
    .line 146
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 147
    .local v1, "lineBuf":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x1

    new-array v2, v4, [B

    .line 150
    .local v2, "readBuf":[B
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    .line 151
    .local v3, "readLen":I
    :goto_0
    if-lez v3, :cond_0

    .line 152
    const/4 v4, 0x0

    aget-byte v4, v2, v4
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 165
    .end local v3    # "readLen":I
    :cond_0
    :goto_1
    :try_start_1
    const-string v4, "US_ASCII"

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 170
    :goto_2
    return-object v4

    .line 154
    .restart local v3    # "readLen":I
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    aget-byte v4, v2, v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_2

    .line 155
    const/4 v4, 0x0

    aget-byte v4, v2, v4

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 156
    :cond_2
    invoke-virtual {p1, v2}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    goto :goto_0

    .line 166
    .end local v3    # "readLen":I
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 170
    const/4 v4, 0x0

    goto :goto_2

    .line 161
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v4

    goto :goto_1

    .line 158
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method private setFirstLine(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/nfc/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 317
    return-void
.end method


# virtual methods
.method public addHeader(Lcom/android/nfc/http/HTTPHeader;)V
    .locals 1
    .param p1, "header"    # Lcom/android/nfc/http/HTTPHeader;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 350
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 353
    new-instance v0, Lcom/android/nfc/http/HTTPHeader;

    invoke-direct {v0, p1, p2}, Lcom/android/nfc/http/HTTPHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .local v0, "header":Lcom/android/nfc/http/HTTPHeader;
    iget-object v1, p0, Lcom/android/nfc/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 355
    return-void
.end method

.method public clearHeaders()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 374
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 375
    return-void
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharSet()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x22

    .line 571
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 572
    .local v3, "contentType":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 573
    const-string v0, ""

    .line 594
    :cond_0
    :goto_0
    return-object v0

    .line 574
    :cond_1
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 575
    const-string v5, "charset"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 576
    .local v2, "charSetIdx":I
    if-gez v2, :cond_2

    .line 577
    const-string v0, ""

    goto :goto_0

    .line 578
    :cond_2
    const-string v5, "charset"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    add-int/lit8 v1, v5, 0x1

    .line 581
    .local v1, "charSetEndIdx":I
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v5, "US_ASCII"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    const-string v7, "US_ASCII"

    invoke-direct {v0, v5, v1, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 582
    .local v0, "charSet":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-gez v5, :cond_3

    .line 583
    const-string v0, ""

    goto :goto_0

    .line 584
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_4

    .line 585
    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 586
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-gez v5, :cond_5

    .line 587
    const-string v0, ""

    goto :goto_0

    .line 588
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_0

    .line 589
    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 591
    .end local v0    # "charSet":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 593
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 594
    const-string v0, " "

    goto :goto_0
.end method

.method public getConnection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()[B
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->content:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getContentFeatures()Ljava/lang/String;
    .locals 1

    .prologue
    .line 823
    const-string v0, "contentFeatures.dlna.org"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 608
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->getLongHeaderValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentRange()[J
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 663
    const/4 v6, 0x3

    new-array v3, v6, [J

    .line 664
    .local v3, "range":[J
    const-wide/16 v6, 0x0

    aput-wide v6, v3, v10

    aput-wide v6, v3, v9

    aput-wide v6, v3, v8

    .line 665
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->hasContentRange()Z

    move-result v6

    if-nez v6, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-object v3

    .line 667
    :cond_1
    const-string v6, "Content-Range"

    invoke-virtual {p0, v6}, Lcom/android/nfc/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 669
    .local v4, "rangeLine":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_2

    .line 670
    const-string v6, "Range"

    invoke-virtual {p0, v6}, Lcom/android/nfc/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 671
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 674
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, " ="

    invoke-direct {v5, v4, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    .local v5, "strToken":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 678
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 679
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 681
    const-string v6, " =-"

    invoke-virtual {v5, v6}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, "firstPosStr":Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v3, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 687
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 689
    const-string v6, "-/"

    invoke-virtual {v5, v6}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 691
    .local v1, "lastPosStr":Ljava/lang/String;
    const/4 v6, 0x1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v3, v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 695
    :goto_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 697
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 699
    .local v2, "lengthStr":Ljava/lang/String;
    const/4 v6, 0x2

    :try_start_2
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v3, v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 700
    :catch_0
    move-exception v6

    goto :goto_0

    .line 692
    .end local v2    # "lengthStr":Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_2

    .line 684
    .end local v1    # "lastPosStr":Ljava/lang/String;
    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method public getContentRangeFirstPosition()J
    .locals 4

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->getContentRange()[J

    move-result-object v0

    .line 708
    .local v0, "range":[J
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    return-wide v2
.end method

.method public getContentRangeInstanceLength()J
    .locals 4

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->getContentRange()[J

    move-result-object v0

    .line 718
    .local v0, "range":[J
    const/4 v1, 0x2

    aget-wide v2, v0, v1

    return-wide v2
.end method

.method public getContentRangeLastPosition()J
    .locals 4

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->getContentRange()[J

    move-result-object v0

    .line 713
    .local v0, "range":[J
    const/4 v1, 0x1

    aget-wide v2, v0, v1

    return-wide v2
.end method

.method public getContentString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->getCharSet()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "charSet":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 514
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/nfc/http/HTTPPacket;->content:[B

    const-string v4, "US_ASCII"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_0
    return-object v2

    .line 515
    :catch_0
    move-exception v1

    .line 517
    .local v1, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 520
    .end local v1    # "e1":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/nfc/http/HTTPPacket;->content:[B

    invoke-direct {v2, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 521
    :catch_1
    move-exception v2

    .line 524
    :try_start_2
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/nfc/http/HTTPPacket;->content:[B

    const-string v4, "US_ASCII"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 525
    :catch_2
    move-exception v1

    .line 527
    .restart local v1    # "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 529
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 563
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 786
    const-string v0, "Date"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFirstLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->firstLine:Ljava/lang/String;

    return-object v0
.end method

.method protected getFirstLineToken(I)Ljava/lang/String;
    .locals 5
    .param p1, "num"    # I

    .prologue
    .line 324
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/nfc/http/HTTPPacket;->firstLine:Ljava/lang/String;

    const-string v4, " "

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .local v2, "st":Ljava/util/StringTokenizer;
    const-string v0, ""

    .line 326
    .local v0, "lastToken":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-gt v1, p1, :cond_0

    .line 327
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_1

    .line 328
    const-string v0, ""

    .line 331
    .end local v0    # "lastToken":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 329
    .restart local v0    # "lastToken":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getHeader(I)Lcom/android/nfc/http/HTTPHeader;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/http/HTTPHeader;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Lcom/android/nfc/http/HTTPHeader;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->getNHeaders()I

    move-result v3

    .line 363
    .local v3, "nHeaders":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 364
    invoke-virtual {p0, v2}, Lcom/android/nfc/http/HTTPPacket;->getHeader(I)Lcom/android/nfc/http/HTTPHeader;

    move-result-object v0

    .line 365
    .local v0, "header":Lcom/android/nfc/http/HTTPHeader;
    invoke-virtual {v0}, Lcom/android/nfc/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "headerName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 369
    .end local v0    # "header":Lcom/android/nfc/http/HTTPHeader;
    .end local v1    # "headerName":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 363
    .restart local v0    # "header":Lcom/android/nfc/http/HTTPHeader;
    .restart local v1    # "headerName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 369
    .end local v0    # "header":Lcom/android/nfc/http/HTTPHeader;
    .end local v1    # "headerName":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getHeaderString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 466
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 468
    .local v3, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->getNHeaders()I

    move-result v2

    .line 469
    .local v2, "nHeaders":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 470
    invoke-virtual {p0, v1}, Lcom/android/nfc/http/HTTPPacket;->getHeader(I)Lcom/android/nfc/http/HTTPHeader;

    move-result-object v0

    .line 471
    .local v0, "header":Lcom/android/nfc/http/HTTPHeader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/nfc/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/nfc/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    .end local v0    # "header":Lcom/android/nfc/http/HTTPHeader;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lcom/android/nfc/http/HTTPHeader;

    move-result-object v0

    .line 404
    .local v0, "header":Lcom/android/nfc/http/HTTPHeader;
    if-nez v0, :cond_0

    .line 405
    const-string v1, ""

    .line 406
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/nfc/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    const-string v0, "HOST"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntegerHeaderValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 448
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lcom/android/nfc/http/HTTPHeader;

    move-result-object v0

    .line 449
    .local v0, "header":Lcom/android/nfc/http/HTTPHeader;
    if-nez v0, :cond_0

    .line 450
    const/4 v1, 0x0

    .line 451
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/nfc/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/nfc/http/StringUtil;->toInteger(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getLongHeaderValue(Ljava/lang/String;)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lcom/android/nfc/http/HTTPHeader;

    move-result-object v0

    .line 456
    .local v0, "header":Lcom/android/nfc/http/HTTPHeader;
    if-nez v0, :cond_0

    .line 457
    const-wide/16 v2, 0x0

    .line 458
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/nfc/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/nfc/http/StringUtil;->toLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getNHeaders()I
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 751
    const-string v0, "Server"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 436
    const-string v0, "\""

    const-string v1, "\""

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/nfc/http/HTTPPacket;->getStringHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "startWidth"    # Ljava/lang/String;
    .param p3, "endWidth"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 427
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "headerValue":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 429
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 430
    :cond_0
    invoke-virtual {v0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 431
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 432
    :cond_1
    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 802
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hasConnection()Z
    .locals 1

    .prologue
    .line 616
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->content:[B

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContentInputStream()Z
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContentRange()Z
    .locals 1

    .prologue
    .line 650
    const-string v0, "Content-Range"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Range"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFirstLine()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->firstLine:Ljava/lang/String;

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

.method public hasHeader(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lcom/android/nfc/http/HTTPHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransferEncoding()Z
    .locals 1

    .prologue
    .line 794
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->clearHeaders()V

    .line 123
    new-array v0, v1, [B

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/http/HTTPPacket;->setContent([BZ)V

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 125
    return-void
.end method

.method public isChunked()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 806
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->hasTransferEncoding()Z

    move-result v2

    if-nez v2, :cond_1

    .line 811
    :cond_0
    :goto_0
    return v1

    .line 808
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, "transEnc":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 811
    const-string v1, "Chunked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isCloseConnection()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 628
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->hasConnection()Z

    move-result v2

    if-nez v2, :cond_1

    .line 633
    :cond_0
    :goto_0
    return v1

    .line 630
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->getConnection()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "connection":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 633
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isKeepAliveConnection()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 637
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->hasConnection()Z

    move-result v2

    if-nez v2, :cond_1

    .line 642
    :cond_0
    :goto_0
    return v1

    .line 639
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->getConnection()Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, "connection":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 642
    const-string v1, "Keep-Alive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public read(Lcom/android/nfc/http/HTTPSocket;)Z
    .locals 1
    .param p1, "httpSock"    # Lcom/android/nfc/http/HTTPSocket;

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->init()V

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/HTTPPacket;->set(Lcom/android/nfc/http/HTTPSocket;)Z

    move-result v0

    return v0
.end method

.method protected set(Lcom/android/nfc/http/HTTPPacket;)V
    .locals 4
    .param p1, "httpPacket"    # Lcom/android/nfc/http/HTTPPacket;

    .prologue
    .line 289
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPPacket;->getFirstLine()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/nfc/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->clearHeaders()V

    .line 292
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPPacket;->getNHeaders()I

    move-result v2

    .line 293
    .local v2, "nHeaders":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 294
    invoke-virtual {p1, v1}, Lcom/android/nfc/http/HTTPPacket;->getHeader(I)Lcom/android/nfc/http/HTTPHeader;

    move-result-object v0

    .line 295
    .local v0, "header":Lcom/android/nfc/http/HTTPHeader;
    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->addHeader(Lcom/android/nfc/http/HTTPHeader;)V

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v0    # "header":Lcom/android/nfc/http/HTTPHeader;
    :cond_0
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPPacket;->getContent()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/http/HTTPPacket;->setContent([B)V

    .line 298
    return-void
.end method

.method protected set(Lcom/android/nfc/http/HTTPSocket;)Z
    .locals 1
    .param p1, "httpSock"    # Lcom/android/nfc/http/HTTPSocket;

    .prologue
    .line 285
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->set(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method protected set(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/http/HTTPPacket;->set(Ljava/io/InputStream;Z)Z

    move-result v0

    return v0
.end method

.method protected set(Ljava/io/InputStream;Z)Z
    .locals 32
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "onlyHeaders"    # Z

    .prologue
    .line 175
    :try_start_0
    new-instance v23, Ljava/io/BufferedInputStream;

    const/16 v29, 0x2000

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 176
    .local v23, "reader":Ljava/io/BufferedInputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/nfc/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v13

    .line 177
    .local v13, "firstLine":Ljava/lang/String;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v29

    if-gtz v29, :cond_1

    .line 178
    :cond_0
    const/16 v29, 0x0

    .line 277
    .end local v13    # "firstLine":Ljava/lang/String;
    .end local v23    # "reader":Ljava/io/BufferedInputStream;
    :goto_0
    return v29

    .line 179
    .restart local v13    # "firstLine":Ljava/lang/String;
    .restart local v23    # "reader":Ljava/io/BufferedInputStream;
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/nfc/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 180
    const-string v29, "http"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "firstLine = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v16, Lcom/android/nfc/http/HTTPStatus;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Lcom/android/nfc/http/HTTPStatus;-><init>(Ljava/lang/String;)V

    .line 184
    .local v16, "httpStatus":Lcom/android/nfc/http/HTTPStatus;
    invoke-virtual/range {v16 .. v16}, Lcom/android/nfc/http/HTTPStatus;->getStatusCode()I

    move-result v28

    .line 185
    .local v28, "statCode":I
    rem-int/lit8 v29, v28, 0x64

    sub-int v18, v28, v29

    .line 186
    .local v18, "m_statCode":I
    const/16 v29, 0x64

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    const/16 v29, 0x64

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 187
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/nfc/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v15

    .line 188
    .local v15, "headerLine":Ljava/lang/String;
    :goto_1
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_4

    .line 189
    new-instance v14, Lcom/android/nfc/http/HTTPHeader;

    invoke-direct {v14, v15}, Lcom/android/nfc/http/HTTPHeader;-><init>(Ljava/lang/String;)V

    .line 190
    .local v14, "header":Lcom/android/nfc/http/HTTPHeader;
    invoke-virtual {v14}, Lcom/android/nfc/http/HTTPHeader;->hasName()Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    .line 191
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/nfc/http/HTTPPacket;->setHeader(Lcom/android/nfc/http/HTTPHeader;)V

    .line 192
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/nfc/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v15

    .line 193
    goto :goto_1

    .line 195
    .end local v14    # "header":Lcom/android/nfc/http/HTTPHeader;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/nfc/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "actualFirstLine":Ljava/lang/String;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_7

    .line 198
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/nfc/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 204
    .end local v4    # "actualFirstLine":Ljava/lang/String;
    .end local v15    # "headerLine":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/nfc/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v15

    .line 205
    .restart local v15    # "headerLine":Ljava/lang/String;
    :goto_2
    if-eqz v15, :cond_8

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_8

    .line 206
    new-instance v14, Lcom/android/nfc/http/HTTPHeader;

    invoke-direct {v14, v15}, Lcom/android/nfc/http/HTTPHeader;-><init>(Ljava/lang/String;)V

    .line 207
    .restart local v14    # "header":Lcom/android/nfc/http/HTTPHeader;
    invoke-virtual {v14}, Lcom/android/nfc/http/HTTPHeader;->hasName()Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 208
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/nfc/http/HTTPPacket;->setHeader(Lcom/android/nfc/http/HTTPHeader;)V

    .line 209
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/nfc/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v15

    .line 210
    goto :goto_2

    .line 200
    .end local v14    # "header":Lcom/android/nfc/http/HTTPHeader;
    .restart local v4    # "actualFirstLine":Ljava/lang/String;
    :cond_7
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 212
    .end local v4    # "actualFirstLine":Ljava/lang/String;
    :cond_8
    const/16 v29, 0x1

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 213
    const-string v29, ""

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/http/HTTPPacket;->setContent(Ljava/lang/String;Z)V

    .line 214
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 217
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/http/HTTPPacket;->isChunked()Z

    move-result v17

    .line 219
    .local v17, "isChunkedRequest":Z
    const-wide/16 v10, 0x0

    .line 220
    .local v10, "contentLen":J
    const/16 v29, 0x1

    move/from16 v0, v17

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    .line 221
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/nfc/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v8

    .line 222
    .local v8, "chunkSizeLine":Ljava/lang/String;
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x10

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    .line 227
    .end local v8    # "chunkSizeLine":Ljava/lang/String;
    :goto_3
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 229
    .local v9, "contentBuf":Ljava/io/ByteArrayOutputStream;
    :goto_4
    const-wide/16 v30, 0x0

    cmp-long v29, v30, v10

    if-gez v29, :cond_14

    .line 230
    invoke-static {}, Lcom/android/nfc/http/HTTP;->getChunkSize()I

    move-result v5

    .line 233
    .local v5, "chunkSize":I
    int-to-long v0, v5

    move-wide/from16 v30, v0

    cmp-long v29, v10, v30

    if-lez v29, :cond_f

    int-to-long v0, v5

    move-wide/from16 v30, v0

    :goto_5
    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 235
    .local v19, "readBuf":[B
    const-wide/16 v20, 0x0

    .line 236
    .local v20, "readCnt":J
    :goto_6
    cmp-long v29, v20, v10

    if-gez v29, :cond_b

    .line 238
    sub-long v6, v10, v20

    .line 239
    .local v6, "bufReadLen":J
    int-to-long v0, v5

    move-wide/from16 v30, v0

    cmp-long v29, v30, v6

    if-gez v29, :cond_a

    .line 240
    int-to-long v6, v5

    .line 241
    :cond_a
    const/16 v29, 0x0

    long-to-int v0, v6

    move/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v22

    .line 242
    .local v22, "readLen":I
    if-gez v22, :cond_10

    .line 247
    .end local v6    # "bufReadLen":J
    .end local v22    # "readLen":I
    :cond_b
    const/16 v29, 0x1

    move/from16 v0, v17

    move/from16 v1, v29

    if-ne v0, v1, :cond_13

    .line 249
    const-wide/16 v26, 0x0

    .line 251
    .local v26, "skipLen":J
    :cond_c
    const-string v29, "\r\n"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    sub-long v30, v30, v26

    move-object/from16 v0, v23

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/io/BufferedInputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v24

    .line 252
    .local v24, "skipCnt":J
    const-wide/16 v30, 0x0

    cmp-long v29, v24, v30

    if-gez v29, :cond_11

    .line 258
    :goto_7
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/nfc/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v8

    .line 259
    .restart local v8    # "chunkSizeLine":Ljava/lang/String;
    if-eqz v8, :cond_12

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x10

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v10

    :goto_8
    goto :goto_4

    .line 222
    .end local v5    # "chunkSize":I
    .end local v9    # "contentBuf":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "readBuf":[B
    .end local v20    # "readCnt":J
    .end local v24    # "skipCnt":J
    .end local v26    # "skipLen":J
    :cond_d
    const-wide/16 v10, 0x0

    goto/16 :goto_3

    .line 224
    .end local v8    # "chunkSizeLine":Ljava/lang/String;
    :cond_e
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/http/HTTPPacket;->getContentLength()J

    move-result-wide v10

    goto/16 :goto_3

    .restart local v5    # "chunkSize":I
    .restart local v9    # "contentBuf":Ljava/io/ByteArrayOutputStream;
    :cond_f
    move-wide/from16 v30, v10

    .line 233
    goto :goto_5

    .line 244
    .restart local v6    # "bufReadLen":J
    .restart local v19    # "readBuf":[B
    .restart local v20    # "readCnt":J
    .restart local v22    # "readLen":I
    :cond_10
    const/16 v29, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v29

    move/from16 v2, v22

    invoke-virtual {v9, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 245
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v20, v20, v30

    .line 246
    goto :goto_6

    .line 254
    .end local v6    # "bufReadLen":J
    .end local v22    # "readLen":I
    .restart local v24    # "skipCnt":J
    .restart local v26    # "skipLen":J
    :cond_11
    add-long v26, v26, v24

    .line 255
    const-string v29, "\r\n"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    cmp-long v29, v26, v30

    if-ltz v29, :cond_c

    goto :goto_7

    .line 259
    .restart local v8    # "chunkSizeLine":Ljava/lang/String;
    :cond_12
    const-wide/16 v10, 0x0

    goto :goto_8

    .line 260
    .end local v8    # "chunkSizeLine":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 261
    .local v12, "e":Ljava/lang/Exception;
    const-wide/16 v10, 0x0

    goto/16 :goto_4

    .line 265
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v24    # "skipCnt":J
    .end local v26    # "skipLen":J
    :cond_13
    const-wide/16 v10, 0x0

    goto/16 :goto_4

    .line 268
    .end local v5    # "chunkSize":I
    .end local v19    # "readBuf":[B
    .end local v20    # "readCnt":J
    :cond_14
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/http/HTTPPacket;->setContent([BZ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 277
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 269
    .end local v9    # "contentBuf":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "contentLen":J
    .end local v13    # "firstLine":Ljava/lang/String;
    .end local v15    # "headerLine":Ljava/lang/String;
    .end local v16    # "httpStatus":Lcom/android/nfc/http/HTTPStatus;
    .end local v17    # "isChunkedRequest":Z
    .end local v18    # "m_statCode":I
    .end local v23    # "reader":Ljava/io/BufferedInputStream;
    .end local v28    # "statCode":I
    :catch_1
    move-exception v12

    .line 270
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    .line 271
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 272
    .end local v12    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v12

    .line 273
    .local v12, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v12}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 274
    const/16 v29, 0x0

    goto/16 :goto_0
.end method

.method public setCacheControl(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 735
    const-string v0, "max-age"

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/http/HTTPPacket;->setCacheControl(Ljava/lang/String;I)V

    .line 736
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 1
    .param p1, "directive"    # Ljava/lang/String;

    .prologue
    .line 726
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;I)V
    .locals 3
    .param p1, "directive"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "strVal":Ljava/lang/String;
    const-string v1, "Cache-Control"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method public setConnection(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 620
    const-string v0, "Connection"

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 503
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/http/HTTPPacket;->setContent(Ljava/lang/String;Z)V

    .line 504
    return-void
.end method

.method public setContent(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "updateWithContentLength"    # Z

    .prologue
    .line 495
    :try_start_0
    const-string v1, "US_ASCII"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/nfc/http/HTTPPacket;->setContent([BZ)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public setContent([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 490
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/http/HTTPPacket;->setContent([BZ)V

    .line 491
    return-void
.end method

.method public setContent([BZ)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "updateWithContentLength"    # Z

    .prologue
    .line 484
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/nfc/http/HTTPPacket;->content:[B

    .line 485
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 486
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/http/HTTPPacket;->setContentLength(J)V

    .line 487
    :cond_0
    return-void
.end method

.method public setContentFeatures(Ljava/lang/String;)V
    .locals 1
    .param p1, "contentFeatures"    # Ljava/lang/String;

    .prologue
    .line 819
    const-string v0, "contentFeatures.dlna.org"

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    return-void
.end method

.method public setContentInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/nfc/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 544
    return-void
.end method

.method public setContentLength(J)V
    .locals 1
    .param p1, "len"    # J

    .prologue
    .line 604
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/nfc/http/HTTPPacket;->setLongHeader(Ljava/lang/String;J)V

    .line 605
    return-void
.end method

.method public setContentRange(JJJ)V
    .locals 7
    .param p1, "firstPos"    # J
    .param p3, "lastPos"    # J
    .param p5, "length"    # J

    .prologue
    .line 654
    const-string v0, ""

    .line 655
    .local v0, "rangeStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bytes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x0

    cmp-long v1, v4, p5

    if-gez v1, :cond_0

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 659
    const-string v1, "Content-Range"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    return-void

    .line 658
    :cond_0
    const-string v1, "*"

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 559
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public setDate(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 781
    new-instance v0, Lcom/android/nfc/http/Date;

    invoke-direct {v0, p1}, Lcom/android/nfc/http/Date;-><init>(Ljava/util/Calendar;)V

    .line 782
    .local v0, "date":Lcom/android/nfc/http/Date;
    const-string v1, "Date"

    invoke-virtual {v0}, Lcom/android/nfc/http/Date;->getDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/nfc/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method public setHeader(Lcom/android/nfc/http/HTTPHeader;)V
    .locals 2
    .param p1, "header"    # Lcom/android/nfc/http/HTTPHeader;

    .prologue
    .line 399
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public setHeader(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 391
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public setHeader(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 395
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lcom/android/nfc/http/HTTPHeader;

    move-result-object v0

    .line 383
    .local v0, "header":Lcom/android/nfc/http/HTTPHeader;
    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0, p2}, Lcom/android/nfc/http/HTTPHeader;->setValue(Ljava/lang/String;)V

    .line 388
    :goto_0
    return-void

    .line 387
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/http/HTTPPacket;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 766
    move-object v0, p1

    .line 767
    .local v0, "hostAddr":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/nfc/http/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 769
    :cond_0
    const-string v1, "HOST"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method public setHost(Ljava/lang/String;I)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 759
    move-object v0, p1

    .line 760
    .local v0, "hostAddr":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/nfc/http/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 762
    :cond_0
    const-string v1, "HOST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/nfc/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    return-void
.end method

.method public setIntegerHeader(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 440
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public setLongHeader(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 444
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 747
    const-string v0, "Server"

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    return-void
.end method

.method public setStringHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 423
    const-string v0, "\""

    const-string v1, "\""

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/nfc/http/HTTPPacket;->setStringHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public setStringHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "startWidth"    # Ljava/lang/String;
    .param p4, "endWidth"    # Ljava/lang/String;

    .prologue
    .line 414
    move-object v0, p2

    .line 415
    .local v0, "headerValue":Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    :cond_0
    invoke-virtual {v0, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public setTransferEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 798
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "ver"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/nfc/http/HTTPPacket;->version:Ljava/lang/String;

    .line 135
    return-void
.end method

.class public Lorg/cybergarage/http/HTTPPacket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private content:[B

.field private contentInput:Ljava/io/InputStream;

.field private firstLine:Ljava/lang/String;

.field private httpHeaderList:Ljava/util/Vector;

.field private isKeepAlive:Z

.field private isSingleSend:Z

.field private tempContent:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-boolean v1, p0, Lorg/cybergarage/http/HTTPPacket;->isSingleSend:Z

    .line 452
    iput-boolean v1, p0, Lorg/cybergarage/http/HTTPPacket;->isKeepAlive:Z

    .line 529
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 563
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 726
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    .line 755
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->tempContent:Ljava/lang/String;

    .line 791
    iput-object v2, p0, Lorg/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 105
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, v2}, Lorg/cybergarage/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-boolean v1, p0, Lorg/cybergarage/http/HTTPPacket;->isSingleSend:Z

    .line 452
    iput-boolean v1, p0, Lorg/cybergarage/http/HTTPPacket;->isKeepAlive:Z

    .line 529
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 563
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 726
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    .line 755
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->tempContent:Ljava/lang/String;

    .line 791
    iput-object v2, p0, Lorg/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 118
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->set(Ljava/io/InputStream;)Z

    .line 120
    invoke-virtual {p0, v2}, Lorg/cybergarage/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/HTTPPacket;)V
    .locals 3
    .param p1, "httpPacket"    # Lorg/cybergarage/http/HTTPPacket;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-boolean v1, p0, Lorg/cybergarage/http/HTTPPacket;->isSingleSend:Z

    .line 452
    iput-boolean v1, p0, Lorg/cybergarage/http/HTTPPacket;->isKeepAlive:Z

    .line 529
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 563
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 726
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    .line 755
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->tempContent:Ljava/lang/String;

    .line 791
    iput-object v2, p0, Lorg/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 111
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->set(Lorg/cybergarage/http/HTTPPacket;)V

    .line 113
    invoke-virtual {p0, v2}, Lorg/cybergarage/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 114
    return-void
.end method

.method private read(Ljava/io/InputStream;)[Ljava/lang/String;
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 352
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, -0x1

    .line 354
    .local v3, "len":I
    const/4 v6, 0x1

    new-array v0, v6, [B

    .line 355
    .local v0, "buffer":[B
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 360
    .local v5, "out":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 361
    const/4 v6, 0x0

    aget-byte v6, v0, v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_1

    .line 363
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "dataStr":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 375
    .end local v1    # "dataStr":Ljava/lang/String;
    :goto_0
    const/4 v6, -0x1

    .line 358
    if-gt v3, v6, :cond_0

    .line 377
    :goto_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6

    .line 367
    :cond_1
    const/4 v6, 0x0

    :try_start_1
    aget-byte v6, v0, v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_2

    .line 369
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    .restart local v1    # "dataStr":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 378
    .end local v1    # "dataStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 380
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, -0x1

    .line 381
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 373
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 162
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 163
    .local v0, "lineBuf":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x1

    new-array v1, v3, [B

    .line 165
    .local v1, "readBuf":[B
    invoke-virtual {p1, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    .line 166
    .local v2, "readLen":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 167
    const/4 v3, 0x0

    .line 178
    :goto_0
    return-object v3

    .line 171
    :cond_0
    aget-byte v3, v1, v5

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 178
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 173
    :cond_1
    aget-byte v3, v1, v5

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    .line 174
    aget-byte v3, v1, v5

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 175
    :cond_2
    invoke-virtual {p1, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    .line 169
    :cond_3
    if-gtz v2, :cond_0

    goto :goto_1
.end method

.method private setFirstLine(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 533
    iput-object p1, p0, Lorg/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 534
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 577
    new-instance v0, Lorg/cybergarage/http/HTTPHeader;

    invoke-direct {v0, p1, p2}, Lorg/cybergarage/http/HTTPHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .local v0, "header":Lorg/cybergarage/http/HTTPHeader;
    iget-object v1, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 579
    return-void
.end method

.method public addHeader(Lorg/cybergarage/http/HTTPHeader;)V
    .locals 1
    .param p1, "header"    # Lorg/cybergarage/http/HTTPHeader;

    .prologue
    .line 572
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 573
    return-void
.end method

.method public clearHeaders()V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 602
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 603
    return-void
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1012
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharSet()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x22

    const/4 v6, 0x0

    .line 828
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 829
    .local v3, "contentType":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 830
    const-string v0, ""

    .line 845
    :cond_0
    :goto_0
    return-object v0

    .line 831
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 832
    const-string v4, "charset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 833
    .local v2, "charSetIdx":I
    if-gez v2, :cond_2

    .line 834
    const-string v0, ""

    goto :goto_0

    .line 835
    :cond_2
    const-string v4, "charset"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v1, v4, 0x1

    .line 836
    .local v1, "charSetEndIdx":I
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {v0, v4, v1, v5}, Ljava/lang/String;-><init>([BII)V

    .line 837
    .local v0, "charSet":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gez v4, :cond_3

    .line 838
    const-string v0, ""

    goto :goto_0

    .line 839
    :cond_3
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_4

    .line 840
    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 841
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gez v4, :cond_5

    .line 842
    const-string v0, ""

    goto :goto_0

    .line 843
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_0

    .line 844
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getConnection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 878
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()[B
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    return-object v0
.end method

.method public getContentInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 859
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getLongHeaderValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentRange()[J
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 922
    const/4 v7, 0x3

    new-array v4, v7, [J

    .line 923
    .local v4, "range":[J
    const-wide/16 v8, 0x0

    aput-wide v8, v4, v12

    aput-wide v8, v4, v11

    aput-wide v8, v4, v10

    .line 924
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->hasContentRange()Z

    move-result v7

    if-nez v7, :cond_1

    .line 969
    :cond_0
    :goto_0
    return-object v4

    .line 926
    :cond_1
    const-string v7, "Content-Range"

    invoke-virtual {p0, v7}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 928
    .local v5, "rangeLine":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_2

    .line 929
    const-string v7, "Range"

    invoke-virtual {p0, v7}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 930
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 933
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, " ="

    invoke-direct {v6, v5, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    .local v6, "strToken":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 937
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, "bytesStr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 941
    const-string v7, " -"

    invoke-virtual {v6, v7}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 944
    .local v1, "firstPosStr":Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v4, v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 949
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 951
    const-string v7, "-/"

    invoke-virtual {v6, v7}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 954
    .local v2, "lastPosStr":Ljava/lang/String;
    const/4 v7, 0x1

    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v4, v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 959
    :goto_2
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 961
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 964
    .local v3, "lengthStr":Ljava/lang/String;
    const/4 v7, 0x2

    :try_start_2
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v4, v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 965
    :catch_0
    move-exception v7

    goto :goto_0

    .line 955
    .end local v3    # "lengthStr":Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_2

    .line 945
    .end local v2    # "lastPosStr":Ljava/lang/String;
    :catch_2
    move-exception v7

    goto :goto_1
.end method

.method public getContentRangeFirstPosition()J
    .locals 4

    .prologue
    .line 974
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getContentRange()[J

    move-result-object v0

    .line 975
    .local v0, "range":[J
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    return-wide v2
.end method

.method public getContentRangeInstanceLength()J
    .locals 4

    .prologue
    .line 986
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getContentRange()[J

    move-result-object v0

    .line 987
    .local v0, "range":[J
    const/4 v1, 0x2

    aget-wide v2, v0, v1

    return-wide v2
.end method

.method public getContentRangeLastPosition()J
    .locals 4

    .prologue
    .line 980
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getContentRange()[J

    move-result-object v0

    .line 981
    .local v0, "range":[J
    const/4 v1, 0x1

    aget-wide v2, v0, v1

    return-wide v2
.end method

.method public getContentString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 769
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getCharSet()Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, "charSet":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 771
    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 779
    :goto_0
    return-object v2

    .line 774
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    invoke-direct {v2, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 775
    :catch_0
    move-exception v1

    .line 777
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 779
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 819
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1066
    const-string v0, "Date"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFirstLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    return-object v0
.end method

.method protected getFirstLineToken(I)Ljava/lang/String;
    .locals 5
    .param p1, "num"    # I

    .prologue
    .line 543
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lorg/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    const-string v4, " "

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .local v2, "st":Ljava/util/StringTokenizer;
    const-string v0, ""

    .line 545
    .local v0, "lastToken":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-le v1, p1, :cond_0

    .line 551
    .end local v0    # "lastToken":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 547
    .restart local v0    # "lastToken":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_1

    .line 548
    const-string v0, ""

    goto :goto_1

    .line 549
    :cond_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 545
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getHeader(I)Lorg/cybergarage/http/HTTPHeader;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 583
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/http/HTTPHeader;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 588
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getNHeaders()I

    move-result v3

    .line 589
    .local v3, "nHeaders":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 596
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 591
    :cond_1
    invoke-virtual {p0, v2}, Lorg/cybergarage/http/HTTPPacket;->getHeader(I)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 592
    .local v0, "header":Lorg/cybergarage/http/HTTPHeader;
    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, "headerName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 589
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getHeaderString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 710
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 712
    .local v3, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getNHeaders()I

    move-result v2

    .line 713
    .local v2, "nHeaders":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 719
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 715
    :cond_0
    invoke-virtual {p0, v1}, Lorg/cybergarage/http/HTTPPacket;->getHeader(I)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 716
    .local v0, "header":Lorg/cybergarage/http/HTTPHeader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 713
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 638
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 639
    .local v0, "header":Lorg/cybergarage/http/HTTPHeader;
    if-nez v0, :cond_0

    .line 640
    const-string v1, ""

    .line 641
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1051
    const-string v0, "HOST"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntegerHeaderValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 690
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 691
    .local v0, "header":Lorg/cybergarage/http/HTTPHeader;
    if-nez v0, :cond_0

    .line 692
    const/4 v1, 0x0

    .line 693
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/StringUtil;->toInteger(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getIsKeepAlive()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lorg/cybergarage/http/HTTPPacket;->isKeepAlive:Z

    return v0
.end method

.method public getIsSingleSend()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lorg/cybergarage/http/HTTPPacket;->isSingleSend:Z

    return v0
.end method

.method public getLongHeaderValue(Ljava/lang/String;)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 698
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 699
    .local v0, "header":Lorg/cybergarage/http/HTTPHeader;
    if-nez v0, :cond_0

    .line 700
    const-wide/16 v2, 0x0

    .line 701
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/StringUtil;->toLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getNHeaders()I
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1026
    const-string v0, "Server"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 675
    const-string v0, "\""

    const-string v1, "\""

    invoke-virtual {p0, p1, v0, v1}, Lorg/cybergarage/http/HTTPPacket;->getStringHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "startWidth"    # Ljava/lang/String;
    .param p3, "endWidth"    # Ljava/lang/String;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "headerValue":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 668
    :cond_0
    invoke-virtual {v0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 669
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 670
    :cond_1
    return-object v0
.end method

.method public getTempContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->tempContent:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1085
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hasConnection()Z
    .locals 1

    .prologue
    .line 868
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

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
    .line 805
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

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
    .line 907
    const-string v0, "Content-Range"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Range"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasFirstLine()Z
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

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
    .line 607
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;

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
    .line 1075
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->clearHeaders()V

    .line 131
    new-array v0, v1, [B

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/http/HTTPPacket;->setContent([BZ)V

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 133
    return-void
.end method

.method public isChunked()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1090
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->hasTransferEncoding()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1095
    :cond_0
    :goto_0
    return v1

    .line 1092
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    .line 1093
    .local v0, "transEnc":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1095
    const-string v1, "Chunked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isCloseConnection()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 883
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->hasConnection()Z

    move-result v2

    if-nez v2, :cond_1

    .line 888
    :cond_0
    :goto_0
    return v1

    .line 885
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getConnection()Ljava/lang/String;

    move-result-object v0

    .line 886
    .local v0, "connection":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 888
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isKeepAliveConnection()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 893
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->hasConnection()Z

    move-result v2

    if-nez v2, :cond_1

    .line 898
    :cond_0
    :goto_0
    return v1

    .line 895
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getConnection()Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, "connection":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 898
    const-string v1, "Keep-Alive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public quicklyInit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    new-array v0, v1, [B

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/http/HTTPPacket;->setContent([BZ)V

    .line 138
    return-void
.end method

.method public read(Lorg/cybergarage/http/HTTPSocket;)Z
    .locals 1
    .param p1, "httpSock"    # Lorg/cybergarage/http/HTTPSocket;

    .prologue
    .line 345
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->init()V

    .line 346
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->set(Lorg/cybergarage/http/HTTPSocket;)Z

    move-result v0

    return v0
.end method

.method public readQuickly(Ljava/io/BufferedReader;)Z
    .locals 12
    .param p1, "in"    # Ljava/io/BufferedReader;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 393
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->quicklyInit()V

    .line 394
    if-eqz p1, :cond_0

    .line 398
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 399
    .local v4, "line":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Qimo quick message received [TCP]: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 400
    if-nez v4, :cond_1

    .line 447
    .end local v4    # "line":Ljava/lang/String;
    :cond_0
    :goto_0
    return v7

    .line 402
    .restart local v4    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 403
    .local v5, "readlen":I
    if-lez v5, :cond_0

    .line 406
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lorg/cybergarage/http/HTTPPacket;->setIsKeepAlive(Z)V

    .line 407
    const/4 v9, 0x1

    new-array v0, v9, [B

    .line 412
    .local v0, "contentByte":[B
    move-object v2, v4

    .line 413
    .local v2, "dataStr":Ljava/lang/String;
    const-string v9, "#"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "dataSplit":[Ljava/lang/String;
    array-length v9, v1

    if-ne v9, v8, :cond_2

    .line 417
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Qimo single byte message received [TCP]: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 418
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lorg/cybergarage/http/HTTPPacket;->setIsSingleSend(Z)V

    .line 419
    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    aput-byte v10, v0, v9

    .line 420
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->setContent([B)V

    move v7, v8

    .line 421
    goto :goto_0

    .line 422
    :cond_2
    array-length v9, v1

    const/4 v10, 0x3

    if-eq v9, v10, :cond_3

    .line 424
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to parse Qimo quick message [TCP]: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    .end local v0    # "contentByte":[B
    .end local v1    # "dataSplit":[Ljava/lang/String;
    .end local v2    # "dataStr":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "readlen":I
    :catch_0
    move-exception v3

    .line 443
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 428
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "contentByte":[B
    .restart local v1    # "dataSplit":[Ljava/lang/String;
    .restart local v2    # "dataStr":Ljava/lang/String;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "readlen":I
    :cond_3
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {p0, v9}, Lorg/cybergarage/http/HTTPPacket;->setIsSingleSend(Z)V

    .line 429
    invoke-virtual {p0, v2}, Lorg/cybergarage/http/HTTPPacket;->setTempContent(Ljava/lang/String;)V

    .line 430
    const/4 v9, 0x0

    const/4 v10, 0x2

    aget-object v10, v1, v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    aput-byte v10, v0, v9

    .line 431
    const/4 v9, 0x0

    aget-byte v6, v0, v9

    .line 432
    .local v6, "type":S
    const/16 v9, 0x11

    if-ne v6, v9, :cond_4

    .line 434
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Qimo keep alive message received [TCP]: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 435
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lorg/cybergarage/http/HTTPPacket;->setIsKeepAlive(Z)V

    move v7, v8

    .line 436
    goto/16 :goto_0

    .line 438
    :cond_4
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->setContent([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v7, v8

    .line 439
    goto/16 :goto_0
.end method

.method public readQuickly(Ljava/net/DatagramSocket;)Z
    .locals 12
    .param p1, "serverSock"    # Ljava/net/DatagramSocket;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 479
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->quicklyInit()V

    .line 480
    if-eqz p1, :cond_3

    .line 482
    const/16 v9, 0x64

    new-array v0, v9, [B

    .line 483
    .local v0, "buffer":[B
    new-instance v6, Ljava/net/DatagramPacket;

    array-length v9, v0

    invoke-direct {v6, v0, v9}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 486
    .local v6, "packet":Ljava/net/DatagramPacket;
    :try_start_0
    invoke-virtual {p1, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 487
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>([B)V

    .line 489
    .local v5, "line":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Qimo quick message received [UDP]: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 491
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_1

    :cond_0
    move v7, v8

    .line 522
    .end local v0    # "buffer":[B
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "packet":Ljava/net/DatagramPacket;
    :goto_0
    return v7

    .line 496
    .restart local v0    # "buffer":[B
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "packet":Ljava/net/DatagramPacket;
    :cond_1
    const/4 v9, 0x1

    new-array v1, v9, [B

    .line 497
    .local v1, "contentByte":[B
    move-object v3, v5

    .line 498
    .local v3, "dataStr":Ljava/lang/String;
    const-string v9, "#"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "dataSplit":[Ljava/lang/String;
    array-length v9, v2

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    .line 502
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to parse Qimo quick message [UDP]: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 504
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lorg/cybergarage/http/HTTPPacket;->setIsSingleSend(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 516
    .end local v1    # "contentByte":[B
    .end local v2    # "dataSplit":[Ljava/lang/String;
    .end local v3    # "dataStr":Ljava/lang/String;
    .end local v5    # "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 518
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move v7, v8

    .line 519
    goto :goto_0

    .line 510
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "contentByte":[B
    .restart local v2    # "dataSplit":[Ljava/lang/String;
    .restart local v3    # "dataStr":Ljava/lang/String;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {p0, v9}, Lorg/cybergarage/http/HTTPPacket;->setIsSingleSend(Z)V

    .line 511
    invoke-virtual {p0, v3}, Lorg/cybergarage/http/HTTPPacket;->setTempContent(Ljava/lang/String;)V

    .line 512
    const/4 v9, 0x0

    const/4 v10, 0x2

    aget-object v10, v2, v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    aput-byte v10, v1, v9

    .line 513
    invoke-virtual {p0, v1}, Lorg/cybergarage/http/HTTPPacket;->setContent([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v0    # "buffer":[B
    .end local v1    # "contentByte":[B
    .end local v2    # "dataSplit":[Ljava/lang/String;
    .end local v3    # "dataStr":Ljava/lang/String;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "packet":Ljava/net/DatagramPacket;
    :cond_3
    move v7, v8

    .line 522
    goto :goto_0
.end method

.method protected set(Lorg/cybergarage/http/HTTPPacket;)V
    .locals 4
    .param p1, "httpPacket"    # Lorg/cybergarage/http/HTTPPacket;

    .prologue
    .line 327
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPPacket;->getFirstLine()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/cybergarage/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->clearHeaders()V

    .line 330
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPPacket;->getNHeaders()I

    move-result v2

    .line 331
    .local v2, "nHeaders":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 336
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPPacket;->getContent()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cybergarage/http/HTTPPacket;->setContent([B)V

    .line 337
    return-void

    .line 333
    :cond_0
    invoke-virtual {p1, v1}, Lorg/cybergarage/http/HTTPPacket;->getHeader(I)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 334
    .local v0, "header":Lorg/cybergarage/http/HTTPHeader;
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->addHeader(Lorg/cybergarage/http/HTTPHeader;)V

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected set(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->set(Ljava/io/InputStream;Z)Z

    move-result v0

    return v0
.end method

.method protected set(Ljava/io/InputStream;Z)Z
    .locals 32
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "onlyHeaders"    # Z

    .prologue
    .line 185
    :try_start_0
    new-instance v22, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 187
    .local v22, "reader":Ljava/io/BufferedInputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v13

    .line 188
    .local v13, "firstLine":Ljava/lang/String;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v28

    if-gtz v28, :cond_1

    .line 189
    :cond_0
    const/16 v28, 0x0

    .line 312
    .end local v13    # "firstLine":Ljava/lang/String;
    .end local v22    # "reader":Ljava/io/BufferedInputStream;
    :goto_0
    return v28

    .line 190
    .restart local v13    # "firstLine":Ljava/lang/String;
    .restart local v22    # "reader":Ljava/io/BufferedInputStream;
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/cybergarage/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 193
    new-instance v16, Lorg/cybergarage/http/HTTPStatus;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Lorg/cybergarage/http/HTTPStatus;-><init>(Ljava/lang/String;)V

    .line 194
    .local v16, "httpStatus":Lorg/cybergarage/http/HTTPStatus;
    invoke-virtual/range {v16 .. v16}, Lorg/cybergarage/http/HTTPStatus;->getStatusCode()I

    move-result v23

    .line 195
    .local v23, "statCode":I
    const/16 v28, 0x64

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 202
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v15

    .line 203
    .local v15, "headerLine":Ljava/lang/String;
    :goto_1
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v28

    if-gtz v28, :cond_5

    .line 211
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "actualFirstLine":Ljava/lang/String;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_7

    .line 215
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/cybergarage/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 222
    .end local v4    # "actualFirstLine":Ljava/lang/String;
    .end local v15    # "headerLine":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v15

    .line 223
    .restart local v15    # "headerLine":Ljava/lang/String;
    :goto_2
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v28

    if-gtz v28, :cond_8

    .line 231
    :cond_4
    if-eqz p2, :cond_a

    .line 233
    const-string v28, ""

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/http/HTTPPacket;->setContent(Ljava/lang/String;Z)V

    .line 234
    const/16 v28, 0x1

    goto :goto_0

    .line 205
    :cond_5
    new-instance v14, Lorg/cybergarage/http/HTTPHeader;

    invoke-direct {v14, v15}, Lorg/cybergarage/http/HTTPHeader;-><init>(Ljava/lang/String;)V

    .line 206
    .local v14, "header":Lorg/cybergarage/http/HTTPHeader;
    invoke-virtual {v14}, Lorg/cybergarage/http/HTTPHeader;->hasName()Z

    move-result v28

    if-eqz v28, :cond_6

    .line 207
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Lorg/cybergarage/http/HTTPHeader;)V

    .line 208
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    .line 218
    .end local v14    # "header":Lorg/cybergarage/http/HTTPHeader;
    .restart local v4    # "actualFirstLine":Ljava/lang/String;
    :cond_7
    const/16 v28, 0x1

    goto :goto_0

    .line 225
    .end local v4    # "actualFirstLine":Ljava/lang/String;
    :cond_8
    new-instance v14, Lorg/cybergarage/http/HTTPHeader;

    invoke-direct {v14, v15}, Lorg/cybergarage/http/HTTPHeader;-><init>(Ljava/lang/String;)V

    .line 226
    .restart local v14    # "header":Lorg/cybergarage/http/HTTPHeader;
    invoke-virtual {v14}, Lorg/cybergarage/http/HTTPHeader;->hasName()Z

    move-result v28

    if-eqz v28, :cond_9

    .line 227
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Lorg/cybergarage/http/HTTPHeader;)V

    .line 228
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    .line 237
    .end local v14    # "header":Lorg/cybergarage/http/HTTPHeader;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/HTTPPacket;->isChunked()Z

    move-result v17

    .line 239
    .local v17, "isChunkedRequest":Z
    const-wide/16 v10, 0x0

    .line 240
    .local v10, "contentLen":J
    if-eqz v17, :cond_c

    .line 242
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v8

    .line 245
    .local v8, "chunkSizeLine":Ljava/lang/String;
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x10

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    .line 249
    .end local v8    # "chunkSizeLine":Ljava/lang/String;
    :goto_3
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 251
    .local v9, "contentBuf":Ljava/io/ByteArrayOutputStream;
    :goto_4
    const-wide/16 v28, 0x0

    cmp-long v28, v28, v10

    if-ltz v28, :cond_d

    .line 304
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/http/HTTPPacket;->setContent([BZ)V

    .line 312
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 245
    .end local v9    # "contentBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "chunkSizeLine":Ljava/lang/String;
    :cond_b
    const-wide/16 v10, 0x0

    goto :goto_3

    .line 247
    .end local v8    # "chunkSizeLine":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/HTTPPacket;->getContentLength()J

    move-result-wide v10

    goto :goto_3

    .line 253
    .restart local v9    # "contentBuf":Ljava/io/ByteArrayOutputStream;
    :cond_d
    invoke-static {}, Lorg/cybergarage/http/HTTP;->getChunkSize()I

    move-result v5

    .line 256
    .local v5, "chunkSize":I
    int-to-long v0, v5

    move-wide/from16 v28, v0

    cmp-long v28, v10, v28

    if-lez v28, :cond_11

    int-to-long v0, v5

    move-wide/from16 v28, v0

    :goto_5
    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 258
    .local v18, "readBuf":[B
    const-wide/16 v20, 0x0

    .line 259
    .local v20, "readCnt":J
    :cond_e
    cmp-long v28, v20, v10

    if-ltz v28, :cond_12

    .line 285
    :cond_f
    :goto_6
    if-eqz v17, :cond_15

    .line 288
    const-wide/16 v26, 0x0

    .line 291
    .local v26, "skipLen":J
    :cond_10
    const-string v28, "\r\n"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    sub-long v28, v28, v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/io/BufferedInputStream;->skip(J)J

    move-result-wide v24

    .line 292
    .local v24, "skipCnt":J
    const-wide/16 v28, 0x0

    cmp-long v28, v24, v28

    if-gez v28, :cond_14

    .line 297
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v8

    .line 299
    .restart local v8    # "chunkSizeLine":Ljava/lang/String;
    new-instance v28, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v31

    add-int/lit8 v31, v31, -0x2

    invoke-direct/range {v28 .. v31}, Ljava/lang/String;-><init>([BII)V

    const/16 v29, 0x10

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    .line 300
    goto :goto_4

    .end local v8    # "chunkSizeLine":Ljava/lang/String;
    .end local v18    # "readBuf":[B
    .end local v20    # "readCnt":J
    .end local v24    # "skipCnt":J
    .end local v26    # "skipLen":J
    :cond_11
    move-wide/from16 v28, v10

    .line 256
    goto :goto_5

    .line 262
    .restart local v18    # "readBuf":[B
    .restart local v20    # "readCnt":J
    :cond_12
    sub-long v6, v10, v20

    .line 263
    .local v6, "bufReadLen":J
    int-to-long v0, v5

    move-wide/from16 v28, v0

    cmp-long v28, v28, v6

    if-gez v28, :cond_13

    .line 264
    int-to-long v6, v5

    .line 265
    :cond_13
    const/16 v28, 0x0

    long-to-int v0, v6

    move/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v19

    .line 266
    .local v19, "readLen":I
    if-ltz v19, :cond_f

    .line 268
    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v19

    invoke-virtual {v9, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 269
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v20, v20, v28

    .line 272
    const-wide/16 v28, 0x7d0

    cmp-long v28, v20, v28

    if-lez v28, :cond_e

    cmp-long v28, v10, v20

    if-lez v28, :cond_e

    .line 274
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v28

    const-string v29, "pl.youku.com"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 275
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v28

    const-string v29, "SetAVTransportURI"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 277
    const-string v28, "Workaround Youku again!"

    invoke-static/range {v28 .. v28}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 278
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "contentLen = "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 279
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "readCnt = "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 305
    .end local v5    # "chunkSize":I
    .end local v6    # "bufReadLen":J
    .end local v9    # "contentBuf":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "contentLen":J
    .end local v13    # "firstLine":Ljava/lang/String;
    .end local v15    # "headerLine":Ljava/lang/String;
    .end local v16    # "httpStatus":Lorg/cybergarage/http/HTTPStatus;
    .end local v17    # "isChunkedRequest":Z
    .end local v18    # "readBuf":[B
    .end local v19    # "readLen":I
    .end local v20    # "readCnt":J
    .end local v22    # "reader":Ljava/io/BufferedInputStream;
    .end local v23    # "statCode":I
    :catch_0
    move-exception v12

    .line 307
    .local v12, "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 308
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 294
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v5    # "chunkSize":I
    .restart local v9    # "contentBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "contentLen":J
    .restart local v13    # "firstLine":Ljava/lang/String;
    .restart local v15    # "headerLine":Ljava/lang/String;
    .restart local v16    # "httpStatus":Lorg/cybergarage/http/HTTPStatus;
    .restart local v17    # "isChunkedRequest":Z
    .restart local v18    # "readBuf":[B
    .restart local v20    # "readCnt":J
    .restart local v22    # "reader":Ljava/io/BufferedInputStream;
    .restart local v23    # "statCode":I
    .restart local v24    # "skipCnt":J
    .restart local v26    # "skipLen":J
    :cond_14
    add-long v26, v26, v24

    .line 295
    :try_start_1
    const-string v28, "\r\n"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    .line 289
    cmp-long v28, v26, v28

    if-ltz v28, :cond_10

    goto/16 :goto_7

    .line 301
    .end local v24    # "skipCnt":J
    .end local v26    # "skipLen":J
    :cond_15
    const-wide/16 v10, 0x0

    goto/16 :goto_4
.end method

.method protected set(Lorg/cybergarage/http/HTTPSocket;)Z
    .locals 1
    .param p1, "httpSock"    # Lorg/cybergarage/http/HTTPSocket;

    .prologue
    .line 322
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->set(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public setCacheControl(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1007
    const-string v0, "max-age"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/HTTPPacket;->setCacheControl(Ljava/lang/String;I)V

    .line 1008
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 1
    .param p1, "directive"    # Ljava/lang/String;

    .prologue
    .line 996
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;I)V
    .locals 3
    .param p1, "directive"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1002
    .local v0, "strVal":Ljava/lang/String;
    const-string v1, "Cache-Control"

    invoke-virtual {p0, v1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    return-void
.end method

.method public setConnection(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 873
    const-string v0, "Connection"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 747
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->setContent(Ljava/lang/String;Z)V

    .line 748
    return-void
.end method

.method public setContent(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "updateWithContentLength"    # Z

    .prologue
    .line 742
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/cybergarage/http/HTTPPacket;->setContent([BZ)V

    .line 743
    return-void
.end method

.method public setContent([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 737
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->setContent([BZ)V

    .line 738
    return-void
.end method

.method public setContent([BZ)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "updateWithContentLength"    # Z

    .prologue
    .line 730
    iput-object p1, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    .line 731
    if-eqz p2, :cond_0

    .line 732
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/http/HTTPPacket;->setContentLength(J)V

    .line 733
    :cond_0
    return-void
.end method

.method public setContentInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 795
    iput-object p1, p0, Lorg/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 796
    return-void
.end method

.method public setContentLength(J)V
    .locals 1
    .param p1, "len"    # J

    .prologue
    .line 854
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0, p1, p2}, Lorg/cybergarage/http/HTTPPacket;->setLongHeader(Ljava/lang/String;J)V

    .line 855
    return-void
.end method

.method public setContentRange(JJJ)V
    .locals 7
    .param p1, "firstPos"    # J
    .param p3, "lastPos"    # J
    .param p5, "length"    # J

    .prologue
    .line 912
    const-string v0, ""

    .line 913
    .local v0, "rangeStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "bytes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 917
    const-string v1, "Content-Range"

    invoke-virtual {p0, v1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    return-void

    .line 916
    :cond_0
    const-string v1, "*"

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 814
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    return-void
.end method

.method public setDate(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 1060
    new-instance v0, Lorg/cybergarage/http/Date;

    invoke-direct {v0, p1}, Lorg/cybergarage/http/Date;-><init>(Ljava/util/Calendar;)V

    .line 1061
    .local v0, "date":Lorg/cybergarage/http/Date;
    const-string v1, "Date"

    invoke-virtual {v0}, Lorg/cybergarage/http/Date;->getDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    return-void
.end method

.method public setHeader(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 623
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method public setHeader(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 628
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 612
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 613
    .local v0, "header":Lorg/cybergarage/http/HTTPHeader;
    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0, p2}, Lorg/cybergarage/http/HTTPHeader;->setValue(Ljava/lang/String;)V

    .line 619
    :goto_0
    return-void

    .line 618
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/cybergarage/http/HTTPPacket;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHeader(Lorg/cybergarage/http/HTTPHeader;)V
    .locals 2
    .param p1, "header"    # Lorg/cybergarage/http/HTTPHeader;

    .prologue
    .line 633
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 1043
    move-object v0, p1

    .line 1044
    .local v0, "hostAddr":Ljava/lang/String;
    invoke-static {p1}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1046
    :cond_0
    const-string v1, "HOST"

    invoke-virtual {p0, v1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    return-void
.end method

.method public setHost(Ljava/lang/String;I)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 1035
    move-object v0, p1

    .line 1036
    .local v0, "hostAddr":Ljava/lang/String;
    invoke-static {p1}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1038
    :cond_0
    const-string v1, "HOST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    return-void
.end method

.method public setIntegerHeader(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 680
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    return-void
.end method

.method public setIsKeepAlive(Z)V
    .locals 0
    .param p1, "isKeepAlive"    # Z

    .prologue
    .line 471
    iput-boolean p1, p0, Lorg/cybergarage/http/HTTPPacket;->isKeepAlive:Z

    .line 472
    return-void
.end method

.method public setIsSingleSend(Z)V
    .locals 0
    .param p1, "isSingleSend"    # Z

    .prologue
    .line 461
    iput-boolean p1, p0, Lorg/cybergarage/http/HTTPPacket;->isSingleSend:Z

    .line 462
    return-void
.end method

.method public setLongHeader(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 685
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1021
    const-string v0, "Server"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    return-void
.end method

.method public setStringHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 660
    const-string v0, "\""

    const-string v1, "\""

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/cybergarage/http/HTTPPacket;->setStringHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method public setStringHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "startWidth"    # Ljava/lang/String;
    .param p4, "endWidth"    # Ljava/lang/String;

    .prologue
    .line 650
    move-object v0, p2

    .line 651
    .local v0, "headerValue":Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    :cond_0
    invoke-virtual {v0, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method public setTempContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "tempContent"    # Ljava/lang/String;

    .prologue
    .line 759
    iput-object p1, p0, Lorg/cybergarage/http/HTTPPacket;->tempContent:Ljava/lang/String;

    .line 760
    return-void
.end method

.method public setTransferEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1080
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "ver"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lorg/cybergarage/http/HTTPPacket;->version:Ljava/lang/String;

    .line 149
    return-void
.end method

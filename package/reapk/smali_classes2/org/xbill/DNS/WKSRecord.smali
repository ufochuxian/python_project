.class public Lorg/xbill/DNS/WKSRecord;
.super Lorg/xbill/DNS/Record;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/WKSRecord$b;,
        Lorg/xbill/DNS/WKSRecord$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7e58d404d2af4f3dL


# instance fields
.field private address:[B

.field private protocol:I

.field private services:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 581
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;I[I)V
    .locals 11
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "address"    # Ljava/net/InetAddress;
    .param p6, "protocol"    # I
    .param p7, "services"    # [I

    .prologue
    const/4 v9, 0x0

    .line 598
    const/16 v4, 0xb

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 599
    invoke-static/range {p5 .. p5}, Lorg/xbill/DNS/a;->b(Ljava/net/InetAddress;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 600
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid IPv4 address"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 601
    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    .line 602
    const-string v2, "protocol"

    move/from16 v0, p6

    invoke-static {v2, v0}, Lorg/xbill/DNS/WKSRecord;->checkU8(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    .line 603
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p7

    array-length v2, v0

    if-ge v8, v2, :cond_1

    .line 604
    const-string v2, "service"

    aget v3, p7, v8

    invoke-static {v2, v3}, Lorg/xbill/DNS/WKSRecord;->checkU16(Ljava/lang/String;I)I

    .line 603
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 606
    :cond_1
    move-object/from16 v0, p7

    array-length v2, v0

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    .line 607
    iget-object v2, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    move-object/from16 v0, p7

    array-length v3, v0

    move-object/from16 v0, p7

    invoke-static {v0, v9, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 608
    iget-object v2, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 609
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 684
    :try_start_0
    iget-object v1, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 686
    :goto_0
    return-object v1

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 585
    new-instance v0, Lorg/xbill/DNS/WKSRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/WKSRecord;-><init>()V

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    .prologue
    .line 695
    iget v0, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    return v0
.end method

.method public getServices()[I
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/at;Lorg/xbill/DNS/Name;)V
    .locals 7
    .param p1, "st"    # Lorg/xbill/DNS/at;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v2

    .line 634
    .local v2, "s":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-static {v2, v5}, Lorg/xbill/DNS/a;->b(Ljava/lang/String;I)[B

    move-result-object v5

    iput-object v5, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    .line 635
    iget-object v5, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    if-nez v5, :cond_0

    .line 636
    const-string v5, "invalid address"

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v5

    throw v5

    .line 638
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v2

    .line 639
    invoke-static {v2}, Lorg/xbill/DNS/WKSRecord$a;->a(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    .line 640
    iget v5, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    if-gez v5, :cond_1

    .line 641
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Invalid IP protocol: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v5

    throw v5

    .line 644
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v1, "list":Ljava/util/List;
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->a()Lorg/xbill/DNS/at$a;

    move-result-object v4

    .line 647
    .local v4, "t":Lorg/xbill/DNS/at$a;
    invoke-virtual {v4}, Lorg/xbill/DNS/at$a;->a()Z

    move-result v5

    if-nez v5, :cond_2

    .line 656
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->b()V

    .line 657
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    .line 658
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 659
    iget-object v6, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v6, v0

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 649
    .end local v0    # "i":I
    :cond_2
    iget-object v5, v4, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    invoke-static {v5}, Lorg/xbill/DNS/WKSRecord$b;->a(Ljava/lang/String;)I

    move-result v3

    .line 650
    .local v3, "service":I
    if-gez v3, :cond_3

    .line 651
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Invalid TCP/UDP service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, v4, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v5

    throw v5

    .line 654
    :cond_3
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 661
    .end local v3    # "service":I
    .restart local v0    # "i":I
    :cond_4
    return-void
.end method

.method rrFromWire(Lorg/xbill/DNS/h;)V
    .locals 7
    .param p1, "in"    # Lorg/xbill/DNS/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/h;->d(I)[B

    move-result-object v5

    iput-object v5, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    .line 614
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v5

    iput v5, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    .line 615
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->j()[B

    move-result-object v0

    .line 616
    .local v0, "array":[B
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v3, "list":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 618
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v5, 0x8

    if-ge v2, v5, :cond_1

    .line 619
    aget-byte v5, v0, v1

    and-int/lit16 v4, v5, 0xff

    .line 620
    .local v4, "octet":I
    const/4 v5, 0x1

    rsub-int/lit8 v6, v2, 0x7

    shl-int/2addr v5, v6

    and-int/2addr v5, v4

    if-eqz v5, :cond_0

    .line 621
    new-instance v5, Ljava/lang/Integer;

    mul-int/lit8 v6, v1, 0x8

    add-int/2addr v6, v2

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 617
    .end local v4    # "octet":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    .end local v2    # "j":I
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    .line 626
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 627
    iget-object v6, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v6, v1

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 629
    :cond_3
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 668
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 669
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    invoke-static {v2}, Lorg/xbill/DNS/a;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 670
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 671
    iget v2, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 672
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 673
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 672
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 675
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method rrToWire(Lorg/xbill/DNS/i;Lorg/xbill/DNS/e;Z)V
    .locals 8
    .param p1, "out"    # Lorg/xbill/DNS/i;
    .param p2, "c"    # Lorg/xbill/DNS/e;
    .param p3, "canonical"    # Z

    .prologue
    .line 708
    iget-object v4, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    invoke-virtual {p1, v4}, Lorg/xbill/DNS/i;->a([B)V

    .line 709
    iget v4, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    invoke-virtual {p1, v4}, Lorg/xbill/DNS/i;->b(I)V

    .line 710
    iget-object v4, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    iget-object v5, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v1, v4, v5

    .line 711
    .local v1, "highestPort":I
    div-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [B

    .line 712
    .local v0, "array":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 713
    iget-object v4, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    aget v3, v4, v2

    .line 714
    .local v3, "port":I
    div-int/lit8 v4, v3, 0x8

    aget-byte v5, v0, v4

    const/4 v6, 0x1

    rem-int/lit8 v7, v3, 0x8

    rsub-int/lit8 v7, v7, 0x7

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 712
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 716
    .end local v3    # "port":I
    :cond_0
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->a([B)V

    .line 717
    return-void
.end method

.class public Lorg/xbill/DNS/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/ba$1;,
        Lorg/xbill/DNS/ba$a;,
        Lorg/xbill/DNS/ba$c;,
        Lorg/xbill/DNS/ba$b;
    }
.end annotation


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3

.field private static final e:I = 0x4

.field private static final f:I = 0x5

.field private static final g:I = 0x6

.field private static final h:I = 0x7


# instance fields
.field private i:Lorg/xbill/DNS/Name;

.field private j:I

.field private k:I

.field private l:J

.field private m:Z

.field private n:Lorg/xbill/DNS/ba$c;

.field private o:Ljava/net/SocketAddress;

.field private p:Ljava/net/SocketAddress;

.field private q:Lorg/xbill/DNS/ap;

.field private r:Lorg/xbill/DNS/aq;

.field private s:Lorg/xbill/DNS/aq$a;

.field private t:J

.field private u:I

.field private v:J

.field private w:J

.field private x:Lorg/xbill/DNS/Record;

.field private y:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lorg/xbill/DNS/ba;->t:J

    .line 167
    return-void
.end method

.method private constructor <init>(Lorg/xbill/DNS/Name;IJZLjava/net/SocketAddress;Lorg/xbill/DNS/aq;)V
    .locals 5
    .param p1, "zone"    # Lorg/xbill/DNS/Name;
    .param p2, "xfrtype"    # I
    .param p3, "serial"    # J
    .param p5, "fallback"    # Z
    .param p6, "address"    # Ljava/net/SocketAddress;
    .param p7, "key"    # Lorg/xbill/DNS/aq;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-wide/32 v2, 0xdbba0

    iput-wide v2, p0, Lorg/xbill/DNS/ba;->t:J

    .line 173
    iput-object p6, p0, Lorg/xbill/DNS/ba;->p:Ljava/net/SocketAddress;

    .line 174
    iput-object p7, p0, Lorg/xbill/DNS/ba;->r:Lorg/xbill/DNS/aq;

    .line 175
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iput-object p1, p0, Lorg/xbill/DNS/ba;->i:Lorg/xbill/DNS/Name;

    .line 186
    :goto_0
    iput p2, p0, Lorg/xbill/DNS/ba;->j:I

    .line 187
    const/4 v1, 0x1

    iput v1, p0, Lorg/xbill/DNS/ba;->k:I

    .line 188
    iput-wide p3, p0, Lorg/xbill/DNS/ba;->l:J

    .line 189
    iput-boolean p5, p0, Lorg/xbill/DNS/ba;->m:Z

    .line 190
    const/4 v1, 0x0

    iput v1, p0, Lorg/xbill/DNS/ba;->u:I

    .line 191
    return-void

    .line 179
    :cond_0
    :try_start_0
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p1, v1}, Lorg/xbill/DNS/Name;->concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/ba;->i:Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Lorg/xbill/DNS/NameTooLongException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ZoneTransferIn: name too long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static a(Lorg/xbill/DNS/Record;)J
    .locals 2
    .param p0, "x0"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 37
    invoke-static {p0}, Lorg/xbill/DNS/ba;->b(Lorg/xbill/DNS/Record;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lorg/xbill/DNS/Name;JZLjava/lang/String;ILorg/xbill/DNS/aq;)Lorg/xbill/DNS/ba;
    .locals 7
    .param p0, "zone"    # Lorg/xbill/DNS/Name;
    .param p1, "serial"    # J
    .param p3, "fallback"    # Z
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "key"    # Lorg/xbill/DNS/aq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 275
    if-nez p5, :cond_0

    .line 276
    const/16 p5, 0x35

    .line 277
    :cond_0
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/ba;->a(Lorg/xbill/DNS/Name;JZLjava/net/SocketAddress;Lorg/xbill/DNS/aq;)Lorg/xbill/DNS/ba;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/xbill/DNS/Name;JZLjava/lang/String;Lorg/xbill/DNS/aq;)Lorg/xbill/DNS/ba;
    .locals 9
    .param p0, "zone"    # Lorg/xbill/DNS/Name;
    .param p1, "serial"    # J
    .param p3, "fallback"    # Z
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "key"    # Lorg/xbill/DNS/aq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 296
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/ba;->a(Lorg/xbill/DNS/Name;JZLjava/lang/String;ILorg/xbill/DNS/aq;)Lorg/xbill/DNS/ba;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/xbill/DNS/Name;JZLjava/net/SocketAddress;Lorg/xbill/DNS/aq;)Lorg/xbill/DNS/ba;
    .locals 9
    .param p0, "zone"    # Lorg/xbill/DNS/Name;
    .param p1, "serial"    # J
    .param p3, "fallback"    # Z
    .param p4, "address"    # Ljava/net/SocketAddress;
    .param p5, "key"    # Lorg/xbill/DNS/aq;

    .prologue
    .line 254
    new-instance v1, Lorg/xbill/DNS/ba;

    const/16 v3, 0xfb

    move-object v2, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lorg/xbill/DNS/ba;-><init>(Lorg/xbill/DNS/Name;IJZLjava/net/SocketAddress;Lorg/xbill/DNS/aq;)V

    return-object v1
.end method

.method public static a(Lorg/xbill/DNS/Name;Ljava/lang/String;ILorg/xbill/DNS/aq;)Lorg/xbill/DNS/ba;
    .locals 1
    .param p0, "zone"    # Lorg/xbill/DNS/Name;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "key"    # Lorg/xbill/DNS/aq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 219
    if-nez p2, :cond_0

    .line 220
    const/16 p2, 0x35

    .line 221
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v0, p3}, Lorg/xbill/DNS/ba;->a(Lorg/xbill/DNS/Name;Ljava/net/SocketAddress;Lorg/xbill/DNS/aq;)Lorg/xbill/DNS/ba;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/xbill/DNS/Name;Ljava/lang/String;Lorg/xbill/DNS/aq;)Lorg/xbill/DNS/ba;
    .locals 1
    .param p0, "zone"    # Lorg/xbill/DNS/Name;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "key"    # Lorg/xbill/DNS/aq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/xbill/DNS/ba;->a(Lorg/xbill/DNS/Name;Ljava/lang/String;ILorg/xbill/DNS/aq;)Lorg/xbill/DNS/ba;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/xbill/DNS/Name;Ljava/net/SocketAddress;Lorg/xbill/DNS/aq;)Lorg/xbill/DNS/ba;
    .locals 9
    .param p0, "zone"    # Lorg/xbill/DNS/Name;
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "key"    # Lorg/xbill/DNS/aq;

    .prologue
    .line 203
    new-instance v1, Lorg/xbill/DNS/ba;

    const/16 v3, 0xfc

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/xbill/DNS/ba;-><init>(Lorg/xbill/DNS/Name;IJZLjava/net/SocketAddress;Lorg/xbill/DNS/aq;)V

    return-object v1
.end method

.method private a([B)Lorg/xbill/DNS/v;
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    .line 518
    :try_start_0
    new-instance v1, Lorg/xbill/DNS/v;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/v;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Ljava/io/IOException;
    instance-of v1, v0, Lorg/xbill/DNS/WireParseException;

    if-eqz v1, :cond_0

    .line 522
    check-cast v0, Lorg/xbill/DNS/WireParseException;

    .end local v0    # "e":Ljava/io/IOException;
    throw v0

    .line 523
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    const-string v2, "Error parsing message"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 385
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/z;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/ba;->i:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 387
    :cond_0
    return-void
.end method

.method private static b(Lorg/xbill/DNS/Record;)J
    .locals 4
    .param p0, "rec"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 379
    move-object v0, p0

    check-cast v0, Lorg/xbill/DNS/SOARecord;

    .line 380
    .local v0, "soa":Lorg/xbill/DNS/SOARecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/SOARecord;->getSerial()J

    move-result-wide v2

    return-wide v2
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .prologue
    .line 391
    new-instance v0, Lorg/xbill/DNS/ZoneTransferException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/ZoneTransferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(Lorg/xbill/DNS/Record;)V
    .locals 13
    .param p1, "rec"    # Lorg/xbill/DNS/Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/16 v10, 0xfb

    const/4 v9, 0x7

    const/4 v8, 0x6

    .line 406
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v2

    .line 409
    .local v2, "type":I
    iget v3, p0, Lorg/xbill/DNS/ba;->u:I

    packed-switch v3, :pswitch_data_0

    .line 500
    const-string v3, "invalid state"

    invoke-direct {p0, v3}, Lorg/xbill/DNS/ba;->b(Ljava/lang/String;)V

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 411
    :pswitch_0
    if-eq v2, v8, :cond_1

    .line 412
    const-string v3, "missing initial SOA"

    invoke-direct {p0, v3}, Lorg/xbill/DNS/ba;->b(Ljava/lang/String;)V

    .line 413
    :cond_1
    iput-object p1, p0, Lorg/xbill/DNS/ba;->x:Lorg/xbill/DNS/Record;

    .line 416
    invoke-static {p1}, Lorg/xbill/DNS/ba;->b(Lorg/xbill/DNS/Record;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/xbill/DNS/ba;->v:J

    .line 417
    iget v3, p0, Lorg/xbill/DNS/ba;->j:I

    if-ne v3, v10, :cond_2

    iget-wide v4, p0, Lorg/xbill/DNS/ba;->v:J

    iget-wide v6, p0, Lorg/xbill/DNS/ba;->l:J

    invoke-static {v4, v5, v6, v7}, Lorg/xbill/DNS/ak;->a(JJ)I

    move-result v3

    if-gtz v3, :cond_2

    .line 420
    const-string v3, "up to date"

    invoke-direct {p0, v3}, Lorg/xbill/DNS/ba;->a(Ljava/lang/String;)V

    .line 421
    iput v9, p0, Lorg/xbill/DNS/ba;->u:I

    goto :goto_0

    .line 424
    :cond_2
    iput v11, p0, Lorg/xbill/DNS/ba;->u:I

    goto :goto_0

    .line 430
    :pswitch_1
    iget v3, p0, Lorg/xbill/DNS/ba;->j:I

    if-ne v3, v10, :cond_3

    if-ne v2, v8, :cond_3

    invoke-static {p1}, Lorg/xbill/DNS/ba;->b(Lorg/xbill/DNS/Record;)J

    move-result-wide v4

    iget-wide v6, p0, Lorg/xbill/DNS/ba;->l:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 433
    iput v10, p0, Lorg/xbill/DNS/ba;->y:I

    .line 434
    iget-object v3, p0, Lorg/xbill/DNS/ba;->n:Lorg/xbill/DNS/ba$c;

    invoke-interface {v3}, Lorg/xbill/DNS/ba$c;->b()V

    .line 435
    const-string v3, "got incremental response"

    invoke-direct {p0, v3}, Lorg/xbill/DNS/ba;->a(Ljava/lang/String;)V

    .line 436
    iput v12, p0, Lorg/xbill/DNS/ba;->u:I

    .line 444
    :goto_1
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ba;->c(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    .line 438
    :cond_3
    const/16 v3, 0xfc

    iput v3, p0, Lorg/xbill/DNS/ba;->y:I

    .line 439
    iget-object v3, p0, Lorg/xbill/DNS/ba;->n:Lorg/xbill/DNS/ba$c;

    invoke-interface {v3}, Lorg/xbill/DNS/ba$c;->a()V

    .line 440
    iget-object v3, p0, Lorg/xbill/DNS/ba;->n:Lorg/xbill/DNS/ba$c;

    iget-object v4, p0, Lorg/xbill/DNS/ba;->x:Lorg/xbill/DNS/Record;

    invoke-interface {v3, v4}, Lorg/xbill/DNS/ba$c;->c(Lorg/xbill/DNS/Record;)V

    .line 441
    const-string v3, "got nonincremental response"

    invoke-direct {p0, v3}, Lorg/xbill/DNS/ba;->a(Ljava/lang/String;)V

    .line 442
    iput v8, p0, Lorg/xbill/DNS/ba;->u:I

    goto :goto_1

    .line 448
    :pswitch_2
    iget-object v3, p0, Lorg/xbill/DNS/ba;->n:Lorg/xbill/DNS/ba$c;

    invoke-interface {v3, p1}, Lorg/xbill/DNS/ba$c;->a(Lorg/xbill/DNS/Record;)V

    .line 449
    const/4 v3, 0x3

    iput v3, p0, Lorg/xbill/DNS/ba;->u:I

    goto :goto_0

    .line 453
    :pswitch_3
    if-ne v2, v8, :cond_4

    .line 454
    invoke-static {p1}, Lorg/xbill/DNS/ba;->b(Lorg/xbill/DNS/Record;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/xbill/DNS/ba;->w:J

    .line 455
    const/4 v3, 0x4

    iput v3, p0, Lorg/xbill/DNS/ba;->u:I

    .line 456
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ba;->c(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    .line 459
    :cond_4
    iget-object v3, p0, Lorg/xbill/DNS/ba;->n:Lorg/xbill/DNS/ba$c;

    invoke-interface {v3, p1}, Lorg/xbill/DNS/ba$c;->c(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    .line 463
    :pswitch_4
    iget-object v3, p0, Lorg/xbill/DNS/ba;->n:Lorg/xbill/DNS/ba$c;

    invoke-interface {v3, p1}, Lorg/xbill/DNS/ba$c;->b(Lorg/xbill/DNS/Record;)V

    .line 464
    const/4 v3, 0x5

    iput v3, p0, Lorg/xbill/DNS/ba;->u:I

    goto/16 :goto_0

    .line 468
    :pswitch_5
    if-ne v2, v8, :cond_6

    .line 469
    invoke-static {p1}, Lorg/xbill/DNS/ba;->b(Lorg/xbill/DNS/Record;)J

    move-result-wide v0

    .line 470
    .local v0, "soa_serial":J
    iget-wide v4, p0, Lorg/xbill/DNS/ba;->v:J

    cmp-long v3, v0, v4

    if-nez v3, :cond_5

    .line 471
    iput v9, p0, Lorg/xbill/DNS/ba;->u:I

    goto/16 :goto_0

    .line 473
    :cond_5
    iget-wide v4, p0, Lorg/xbill/DNS/ba;->w:J

    cmp-long v3, v0, v4

    if-eqz v3, :cond_7

    .line 474
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "IXFR out of sync: expected serial "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-wide v4, p0, Lorg/xbill/DNS/ba;->w:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " , got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/xbill/DNS/ba;->b(Ljava/lang/String;)V

    .line 482
    .end local v0    # "soa_serial":J
    :cond_6
    iget-object v3, p0, Lorg/xbill/DNS/ba;->n:Lorg/xbill/DNS/ba$c;

    invoke-interface {v3, p1}, Lorg/xbill/DNS/ba$c;->c(Lorg/xbill/DNS/Record;)V

    goto/16 :goto_0

    .line 477
    .restart local v0    # "soa_serial":J
    :cond_7
    iput v12, p0, Lorg/xbill/DNS/ba;->u:I

    .line 478
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ba;->c(Lorg/xbill/DNS/Record;)V

    goto/16 :goto_0

    .line 487
    .end local v0    # "soa_serial":J
    :pswitch_6
    if-ne v2, v11, :cond_8

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v3

    iget v4, p0, Lorg/xbill/DNS/ba;->k:I

    if-ne v3, v4, :cond_0

    .line 489
    :cond_8
    iget-object v3, p0, Lorg/xbill/DNS/ba;->n:Lorg/xbill/DNS/ba$c;

    invoke-interface {v3, p1}, Lorg/xbill/DNS/ba$c;->c(Lorg/xbill/DNS/Record;)V

    .line 490
    if-ne v2, v8, :cond_0

    .line 491
    iput v9, p0, Lorg/xbill/DNS/ba;->u:I

    goto/16 :goto_0

    .line 496
    :pswitch_7
    const-string v3, "extra data"

    invoke-direct {p0, v3}, Lorg/xbill/DNS/ba;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private i()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/xbill/DNS/ba;->t:J

    add-long v0, v2, v4

    .line 350
    .local v0, "endTime":J
    new-instance v2, Lorg/xbill/DNS/ap;

    invoke-direct {v2, v0, v1}, Lorg/xbill/DNS/ap;-><init>(J)V

    iput-object v2, p0, Lorg/xbill/DNS/ba;->q:Lorg/xbill/DNS/ap;

    .line 351
    iget-object v2, p0, Lorg/xbill/DNS/ba;->o:Ljava/net/SocketAddress;

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lorg/xbill/DNS/ba;->q:Lorg/xbill/DNS/ap;

    iget-object v3, p0, Lorg/xbill/DNS/ba;->o:Ljava/net/SocketAddress;

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/ap;->a(Ljava/net/SocketAddress;)V

    .line 353
    :cond_0
    iget-object v2, p0, Lorg/xbill/DNS/ba;->q:Lorg/xbill/DNS/ap;

    iget-object v3, p0, Lorg/xbill/DNS/ba;->p:Ljava/net/SocketAddress;

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/ap;->b(Ljava/net/SocketAddress;)V

    .line 354
    return-void
.end method

.method private j()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/xbill/DNS/ba;->i:Lorg/xbill/DNS/Name;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/xbill/DNS/ba;->j:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/xbill/DNS/ba;->k:I

    invoke-static {v4, v5, v6}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v21

    .line 360
    .local v21, "question":Lorg/xbill/DNS/Record;
    new-instance v20, Lorg/xbill/DNS/v;

    invoke-direct/range {v20 .. v20}, Lorg/xbill/DNS/v;-><init>()V

    .line 361
    .local v20, "query":Lorg/xbill/DNS/v;
    invoke-virtual/range {v20 .. v20}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/r;->f(I)V

    .line 362
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;I)V

    .line 363
    move-object/from16 v0, p0

    iget v4, v0, Lorg/xbill/DNS/ba;->j:I

    const/16 v5, 0xfb

    if-ne v4, v5, :cond_0

    .line 364
    new-instance v3, Lorg/xbill/DNS/SOARecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/xbill/DNS/ba;->i:Lorg/xbill/DNS/Name;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/xbill/DNS/ba;->k:I

    const-wide/16 v6, 0x0

    sget-object v8, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    sget-object v9, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/xbill/DNS/ba;->l:J

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v3 .. v19}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    .line 367
    .local v3, "soa":Lorg/xbill/DNS/Record;
    const/4 v4, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;I)V

    .line 369
    .end local v3    # "soa":Lorg/xbill/DNS/Record;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/xbill/DNS/ba;->r:Lorg/xbill/DNS/aq;

    if-eqz v4, :cond_1

    .line 370
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/xbill/DNS/ba;->r:Lorg/xbill/DNS/aq;

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v5}, Lorg/xbill/DNS/aq;->a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/TSIGRecord;)V

    .line 371
    new-instance v4, Lorg/xbill/DNS/aq$a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/xbill/DNS/ba;->r:Lorg/xbill/DNS/aq;

    invoke-virtual/range {v20 .. v20}, Lorg/xbill/DNS/v;->c()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/xbill/DNS/aq$a;-><init>(Lorg/xbill/DNS/aq;Lorg/xbill/DNS/TSIGRecord;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/xbill/DNS/ba;->s:Lorg/xbill/DNS/aq$a;

    .line 373
    :cond_1
    const v4, 0xffff

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/v;->d(I)[B

    move-result-object v2

    .line 374
    .local v2, "out":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/xbill/DNS/ba;->q:Lorg/xbill/DNS/ap;

    invoke-virtual {v4, v2}, Lorg/xbill/DNS/ap;->a([B)V

    .line 375
    return-void
.end method

.method private k()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .prologue
    .line 396
    iget-boolean v0, p0, Lorg/xbill/DNS/ba;->m:Z

    if-nez v0, :cond_0

    .line 397
    const-string v0, "server doesn\'t support IXFR"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ba;->b(Ljava/lang/String;)V

    .line 399
    :cond_0
    const-string v0, "falling back to AXFR"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ba;->a(Ljava/lang/String;)V

    .line 400
    const/16 v0, 0xfc

    iput v0, p0, Lorg/xbill/DNS/ba;->j:I

    .line 401
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbill/DNS/ba;->u:I

    .line 402
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 508
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/ba;->q:Lorg/xbill/DNS/ap;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lorg/xbill/DNS/ba;->q:Lorg/xbill/DNS/ap;

    invoke-virtual {v0}, Lorg/xbill/DNS/ap;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private m()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xfb

    const/4 v10, 0x7

    .line 529
    invoke-direct {p0}, Lorg/xbill/DNS/ba;->j()V

    .line 530
    :cond_0
    :goto_0
    iget v8, p0, Lorg/xbill/DNS/ba;->u:I

    if-eq v8, v10, :cond_2

    .line 531
    iget-object v8, p0, Lorg/xbill/DNS/ba;->q:Lorg/xbill/DNS/ap;

    invoke-virtual {v8}, Lorg/xbill/DNS/ap;->b()[B

    move-result-object v3

    .line 532
    .local v3, "in":[B
    invoke-direct {p0, v3}, Lorg/xbill/DNS/ba;->a([B)Lorg/xbill/DNS/v;

    move-result-object v6

    .line 533
    .local v6, "response":Lorg/xbill/DNS/v;
    invoke-virtual {v6}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v8

    invoke-virtual {v8}, Lorg/xbill/DNS/r;->d()I

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lorg/xbill/DNS/ba;->s:Lorg/xbill/DNS/aq$a;

    if-eqz v8, :cond_1

    .line 536
    invoke-virtual {v6}, Lorg/xbill/DNS/v;->c()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v7

    .line 538
    .local v7, "tsigrec":Lorg/xbill/DNS/TSIGRecord;
    iget-object v8, p0, Lorg/xbill/DNS/ba;->s:Lorg/xbill/DNS/aq$a;

    invoke-virtual {v8, v6, v3}, Lorg/xbill/DNS/aq$a;->a(Lorg/xbill/DNS/v;[B)I

    move-result v1

    .line 539
    .local v1, "error":I
    if-eqz v1, :cond_1

    .line 540
    const-string v8, "TSIG failure"

    invoke-direct {p0, v8}, Lorg/xbill/DNS/ba;->b(Ljava/lang/String;)V

    .line 543
    .end local v1    # "error":I
    .end local v7    # "tsigrec":Lorg/xbill/DNS/TSIGRecord;
    :cond_1
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lorg/xbill/DNS/v;->b(I)[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 545
    .local v0, "answers":[Lorg/xbill/DNS/Record;
    iget v8, p0, Lorg/xbill/DNS/ba;->u:I

    if-nez v8, :cond_6

    .line 546
    invoke-virtual {v6}, Lorg/xbill/DNS/v;->g()I

    move-result v5

    .line 547
    .local v5, "rcode":I
    if-eqz v5, :cond_4

    .line 548
    iget v8, p0, Lorg/xbill/DNS/ba;->j:I

    if-ne v8, v11, :cond_3

    const/4 v8, 0x4

    if-ne v5, v8, :cond_3

    .line 551
    invoke-direct {p0}, Lorg/xbill/DNS/ba;->k()V

    .line 552
    invoke-direct {p0}, Lorg/xbill/DNS/ba;->m()V

    .line 578
    .end local v0    # "answers":[Lorg/xbill/DNS/Record;
    .end local v3    # "in":[B
    .end local v5    # "rcode":I
    .end local v6    # "response":Lorg/xbill/DNS/v;
    :cond_2
    :goto_1
    return-void

    .line 555
    .restart local v0    # "answers":[Lorg/xbill/DNS/Record;
    .restart local v3    # "in":[B
    .restart local v5    # "rcode":I
    .restart local v6    # "response":Lorg/xbill/DNS/v;
    :cond_3
    invoke-static {v5}, Lorg/xbill/DNS/ab;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/xbill/DNS/ba;->b(Ljava/lang/String;)V

    .line 558
    :cond_4
    invoke-virtual {v6}, Lorg/xbill/DNS/v;->b()Lorg/xbill/DNS/Record;

    move-result-object v4

    .line 559
    .local v4, "question":Lorg/xbill/DNS/Record;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getType()I

    move-result v8

    iget v9, p0, Lorg/xbill/DNS/ba;->j:I

    if-eq v8, v9, :cond_5

    .line 560
    const-string v8, "invalid question section"

    invoke-direct {p0, v8}, Lorg/xbill/DNS/ba;->b(Ljava/lang/String;)V

    .line 563
    :cond_5
    array-length v8, v0

    if-nez v8, :cond_6

    iget v8, p0, Lorg/xbill/DNS/ba;->j:I

    if-ne v8, v11, :cond_6

    .line 564
    invoke-direct {p0}, Lorg/xbill/DNS/ba;->k()V

    .line 565
    invoke-direct {p0}, Lorg/xbill/DNS/ba;->m()V

    goto :goto_1

    .line 570
    .end local v4    # "question":Lorg/xbill/DNS/Record;
    .end local v5    # "rcode":I
    :cond_6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v8, v0

    if-ge v2, v8, :cond_7

    .line 571
    aget-object v8, v0, v2

    invoke-direct {p0, v8}, Lorg/xbill/DNS/ba;->c(Lorg/xbill/DNS/Record;)V

    .line 570
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 574
    :cond_7
    iget v8, p0, Lorg/xbill/DNS/ba;->u:I

    if-ne v8, v10, :cond_0

    iget-object v8, p0, Lorg/xbill/DNS/ba;->s:Lorg/xbill/DNS/aq$a;

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Lorg/xbill/DNS/v;->e()Z

    move-result v8

    if-nez v8, :cond_0

    .line 576
    const-string v8, "last message must be signed"

    invoke-direct {p0, v8}, Lorg/xbill/DNS/ba;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private n()Lorg/xbill/DNS/ba$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 619
    iget-object v0, p0, Lorg/xbill/DNS/ba;->n:Lorg/xbill/DNS/ba$c;

    instance-of v0, v0, Lorg/xbill/DNS/ba$a;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lorg/xbill/DNS/ba;->n:Lorg/xbill/DNS/ba$c;

    check-cast v0, Lorg/xbill/DNS/ba$a;

    return-object v0

    .line 621
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ZoneTransferIn used callback interface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/xbill/DNS/ba;->i:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public a(I)V
    .locals 4
    .param p1, "secs"    # I

    .prologue
    .line 322
    if-gez p1, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    const-wide/16 v0, 0x3e8

    int-to-long v2, p1

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/ba;->t:J

    .line 326
    return-void
.end method

.method public a(Ljava/net/SocketAddress;)V
    .locals 0
    .param p1, "addr"    # Ljava/net/SocketAddress;

    .prologue
    .line 344
    iput-object p1, p0, Lorg/xbill/DNS/ba;->o:Ljava/net/SocketAddress;

    .line 345
    return-void
.end method

.method public a(Lorg/xbill/DNS/ba$c;)V
    .locals 1
    .param p1, "handler"    # Lorg/xbill/DNS/ba$c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .prologue
    .line 589
    iput-object p1, p0, Lorg/xbill/DNS/ba;->n:Lorg/xbill/DNS/ba$c;

    .line 591
    :try_start_0
    invoke-direct {p0}, Lorg/xbill/DNS/ba;->i()V

    .line 592
    invoke-direct {p0}, Lorg/xbill/DNS/ba;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    invoke-direct {p0}, Lorg/xbill/DNS/ba;->l()V

    .line 597
    return-void

    .line 595
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/xbill/DNS/ba;->l()V

    throw v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lorg/xbill/DNS/ba;->j:I

    return v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "dclass"    # I

    .prologue
    .line 334
    invoke-static {p1}, Lorg/xbill/DNS/g;->a(I)V

    .line 335
    iput p1, p0, Lorg/xbill/DNS/ba;->k:I

    .line 336
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .prologue
    .line 610
    new-instance v0, Lorg/xbill/DNS/ba$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/xbill/DNS/ba$a;-><init>(Lorg/xbill/DNS/ba$1;)V

    .line 611
    .local v0, "handler":Lorg/xbill/DNS/ba$a;
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/ba;->a(Lorg/xbill/DNS/ba$c;)V

    .line 612
    invoke-static {v0}, Lorg/xbill/DNS/ba$a;->a(Lorg/xbill/DNS/ba$a;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 613
    invoke-static {v0}, Lorg/xbill/DNS/ba$a;->a(Lorg/xbill/DNS/ba$a;)Ljava/util/List;

    move-result-object v1

    .line 614
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/xbill/DNS/ba$a;->b(Lorg/xbill/DNS/ba$a;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 633
    iget v0, p0, Lorg/xbill/DNS/ba;->y:I

    const/16 v1, 0xfc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/util/List;
    .locals 2

    .prologue
    .line 643
    invoke-direct {p0}, Lorg/xbill/DNS/ba;->n()Lorg/xbill/DNS/ba$a;

    move-result-object v0

    .line 644
    .local v0, "handler":Lorg/xbill/DNS/ba$a;
    invoke-static {v0}, Lorg/xbill/DNS/ba$a;->a(Lorg/xbill/DNS/ba$a;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 654
    iget v0, p0, Lorg/xbill/DNS/ba;->y:I

    const/16 v1, 0xfb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/util/List;
    .locals 2

    .prologue
    .line 664
    invoke-direct {p0}, Lorg/xbill/DNS/ba;->n()Lorg/xbill/DNS/ba$a;

    move-result-object v0

    .line 665
    .local v0, "handler":Lorg/xbill/DNS/ba$a;
    invoke-static {v0}, Lorg/xbill/DNS/ba$a;->b(Lorg/xbill/DNS/ba$a;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 676
    invoke-direct {p0}, Lorg/xbill/DNS/ba;->n()Lorg/xbill/DNS/ba$a;

    move-result-object v0

    .line 677
    .local v0, "handler":Lorg/xbill/DNS/ba$a;
    invoke-static {v0}, Lorg/xbill/DNS/ba$a;->a(Lorg/xbill/DNS/ba$a;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/xbill/DNS/ba$a;->b(Lorg/xbill/DNS/ba$a;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.class public Lorg/xbill/DNS/az;
.super Lorg/xbill/DNS/v;
.source "SourceFile"


# instance fields
.field private j:Lorg/xbill/DNS/Name;

.field private k:I


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/Name;)V
    .locals 1
    .param p1, "zone"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/az;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;I)V
    .locals 3
    .param p1, "zone"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/xbill/DNS/v;-><init>()V

    .line 27
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v1

    .line 29
    :cond_0
    invoke-static {p2}, Lorg/xbill/DNS/g;->a(I)V

    .line 30
    invoke-virtual {p0}, Lorg/xbill/DNS/az;->a()Lorg/xbill/DNS/r;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/r;->f(I)V

    .line 31
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 32
    .local v0, "soa":Lorg/xbill/DNS/Record;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/az;->a(Lorg/xbill/DNS/Record;I)V

    .line 33
    iput-object p1, p0, Lorg/xbill/DNS/az;->j:Lorg/xbill/DNS/Name;

    .line 34
    iput p2, p0, Lorg/xbill/DNS/az;->k:I

    .line 35
    return-void
.end method

.method private g(Lorg/xbill/DNS/Record;)V
    .locals 1
    .param p1, "rec"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/xbill/DNS/az;->a(Lorg/xbill/DNS/Record;I)V

    .line 49
    return-void
.end method

.method private h(Lorg/xbill/DNS/Record;)V
    .locals 1
    .param p1, "rec"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 53
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/xbill/DNS/az;->a(Lorg/xbill/DNS/Record;I)V

    .line 54
    return-void
.end method


# virtual methods
.method public a(Lorg/xbill/DNS/Name;IJLjava/lang/String;)V
    .locals 9
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "ttl"    # J
    .param p5, "record"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget v3, p0, Lorg/xbill/DNS/az;->k:I

    iget-object v7, p0, Lorg/xbill/DNS/az;->j:Lorg/xbill/DNS/Name;

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/az;->h(Lorg/xbill/DNS/Record;)V

    .line 137
    return-void
.end method

.method public a(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/at;)V
    .locals 9
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "ttl"    # J
    .param p5, "tokenizer"    # Lorg/xbill/DNS/at;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget v3, p0, Lorg/xbill/DNS/az;->k:I

    iget-object v7, p0, Lorg/xbill/DNS/az;->j:Lorg/xbill/DNS/Name;

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/at;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/az;->h(Lorg/xbill/DNS/Record;)V

    .line 148
    return-void
.end method

.method public a(Lorg/xbill/DNS/Name;ILjava/lang/String;)V
    .locals 8
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "record"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget v3, p0, Lorg/xbill/DNS/az;->k:I

    const-wide/16 v4, 0x0

    iget-object v7, p0, Lorg/xbill/DNS/az;->j:Lorg/xbill/DNS/Name;

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/az;->g(Lorg/xbill/DNS/Record;)V

    .line 85
    return-void
.end method

.method public a(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/at;)V
    .locals 8
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "tokenizer"    # Lorg/xbill/DNS/at;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget v3, p0, Lorg/xbill/DNS/az;->k:I

    const-wide/16 v4, 0x0

    iget-object v7, p0, Lorg/xbill/DNS/az;->j:Lorg/xbill/DNS/Name;

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/at;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/az;->g(Lorg/xbill/DNS/Record;)V

    .line 98
    return-void
.end method

.method public a(Lorg/xbill/DNS/RRset;)V
    .locals 2
    .param p1, "rrset"    # Lorg/xbill/DNS/RRset;

    .prologue
    .line 173
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/az;->d(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method public a([Lorg/xbill/DNS/Record;)V
    .locals 2
    .param p1, "records"    # [Lorg/xbill/DNS/Record;

    .prologue
    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 164
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/az;->d(Lorg/xbill/DNS/Record;)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method

.method public b(Lorg/xbill/DNS/Name;)V
    .locals 3
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .prologue
    const/16 v2, 0xff

    .line 62
    const-wide/16 v0, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/az;->g(Lorg/xbill/DNS/Record;)V

    .line 63
    return-void
.end method

.method public b(Lorg/xbill/DNS/Name;I)V
    .locals 4
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .prologue
    .line 71
    const/16 v0, 0xff

    const-wide/16 v2, 0x0

    invoke-static {p1, p2, v0, v2, v3}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/az;->g(Lorg/xbill/DNS/Record;)V

    .line 72
    return-void
.end method

.method public b(Lorg/xbill/DNS/Name;IJLjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "ttl"    # J
    .param p5, "record"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0, p1, p2}, Lorg/xbill/DNS/az;->d(Lorg/xbill/DNS/Name;I)V

    .line 253
    invoke-virtual/range {p0 .. p5}, Lorg/xbill/DNS/az;->a(Lorg/xbill/DNS/Name;IJLjava/lang/String;)V

    .line 254
    return-void
.end method

.method public b(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/at;)V
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "ttl"    # J
    .param p5, "tokenizer"    # Lorg/xbill/DNS/at;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p0, p1, p2}, Lorg/xbill/DNS/az;->d(Lorg/xbill/DNS/Name;I)V

    .line 266
    invoke-virtual/range {p0 .. p5}, Lorg/xbill/DNS/az;->a(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/at;)V

    .line 267
    return-void
.end method

.method public b(Lorg/xbill/DNS/Name;ILjava/lang/String;)V
    .locals 8
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "record"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    const/16 v3, 0xfe

    const-wide/16 v4, 0x0

    iget-object v7, p0, Lorg/xbill/DNS/az;->j:Lorg/xbill/DNS/Name;

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/az;->h(Lorg/xbill/DNS/Record;)V

    .line 204
    return-void
.end method

.method public b(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/at;)V
    .locals 8
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "tokenizer"    # Lorg/xbill/DNS/at;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    const/16 v3, 0xfe

    const-wide/16 v4, 0x0

    iget-object v7, p0, Lorg/xbill/DNS/az;->j:Lorg/xbill/DNS/Name;

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/at;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/az;->h(Lorg/xbill/DNS/Record;)V

    .line 215
    return-void
.end method

.method public b(Lorg/xbill/DNS/RRset;)V
    .locals 2
    .param p1, "rrset"    # Lorg/xbill/DNS/RRset;

    .prologue
    .line 240
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/az;->e(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    .line 242
    :cond_0
    return-void
.end method

.method public b([Lorg/xbill/DNS/Record;)V
    .locals 2
    .param p1, "records"    # [Lorg/xbill/DNS/Record;

    .prologue
    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 231
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/az;->e(Lorg/xbill/DNS/Record;)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method

.method public c(Lorg/xbill/DNS/Name;)V
    .locals 4
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 117
    const/16 v0, 0xff

    const/16 v1, 0xfe

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/az;->g(Lorg/xbill/DNS/Record;)V

    .line 118
    return-void
.end method

.method public c(Lorg/xbill/DNS/Name;I)V
    .locals 4
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .prologue
    .line 126
    const/16 v0, 0xfe

    const-wide/16 v2, 0x0

    invoke-static {p1, p2, v0, v2, v3}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/az;->g(Lorg/xbill/DNS/Record;)V

    .line 127
    return-void
.end method

.method public c(Lorg/xbill/DNS/RRset;)V
    .locals 3
    .param p1, "rrset"    # Lorg/xbill/DNS/RRset;

    .prologue
    .line 295
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/xbill/DNS/az;->d(Lorg/xbill/DNS/Name;I)V

    .line 296
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/az;->d(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    .line 298
    :cond_0
    return-void
.end method

.method public c(Lorg/xbill/DNS/Record;)V
    .locals 0
    .param p1, "record"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lorg/xbill/DNS/az;->g(Lorg/xbill/DNS/Record;)V

    .line 109
    return-void
.end method

.method public c([Lorg/xbill/DNS/Record;)V
    .locals 2
    .param p1, "records"    # [Lorg/xbill/DNS/Record;

    .prologue
    .line 285
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 286
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/az;->f(Lorg/xbill/DNS/Record;)V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method

.method public d(Lorg/xbill/DNS/Name;)V
    .locals 3
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .prologue
    const/16 v2, 0xff

    .line 183
    const-wide/16 v0, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/az;->h(Lorg/xbill/DNS/Record;)V

    .line 184
    return-void
.end method

.method public d(Lorg/xbill/DNS/Name;I)V
    .locals 4
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .prologue
    .line 192
    const/16 v0, 0xff

    const-wide/16 v2, 0x0

    invoke-static {p1, p2, v0, v2, v3}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/az;->h(Lorg/xbill/DNS/Record;)V

    .line 193
    return-void
.end method

.method public d(Lorg/xbill/DNS/Record;)V
    .locals 0
    .param p1, "record"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lorg/xbill/DNS/az;->h(Lorg/xbill/DNS/Record;)V

    .line 156
    return-void
.end method

.method public e(Lorg/xbill/DNS/Record;)V
    .locals 4
    .param p1, "record"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 222
    const/16 v0, 0xfe

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/xbill/DNS/Record;->withDClass(IJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/az;->h(Lorg/xbill/DNS/Record;)V

    .line 223
    return-void
.end method

.method public f(Lorg/xbill/DNS/Record;)V
    .locals 2
    .param p1, "record"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 275
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/az;->d(Lorg/xbill/DNS/Name;I)V

    .line 276
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/az;->d(Lorg/xbill/DNS/Record;)V

    .line 277
    return-void
.end method

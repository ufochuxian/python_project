.class final Lokhttp3/internal/framed/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:[Lokhttp3/internal/framed/e;

.field b:I

.field c:I

.field d:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/e;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lokio/e;

.field private final g:I

.field private h:I


# direct methods
.method constructor <init>(IILokio/x;)V
    .locals 2
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "maxDynamicTableByteCount"    # I
    .param p3, "source"    # Lokio/x;

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/f$a;->e:Ljava/util/List;

    .line 124
    const/16 v0, 0x8

    new-array v0, v0, [Lokhttp3/internal/framed/e;

    iput-object v0, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    .line 126
    iget-object v0, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/framed/f$a;->b:I

    .line 127
    iput v1, p0, Lokhttp3/internal/framed/f$a;->c:I

    .line 128
    iput v1, p0, Lokhttp3/internal/framed/f$a;->d:I

    .line 135
    iput p1, p0, Lokhttp3/internal/framed/f$a;->g:I

    .line 136
    iput p2, p0, Lokhttp3/internal/framed/f$a;->h:I

    .line 137
    invoke-static {p3}, Lokio/o;->a(Lokio/x;)Lokio/e;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/f$a;->f:Lokio/e;

    .line 138
    return-void
.end method

.method constructor <init>(ILokio/x;)V
    .locals 0
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "source"    # Lokio/x;

    .prologue
    .line 131
    invoke-direct {p0, p1, p1, p2}, Lokhttp3/internal/framed/f$a;-><init>(IILokio/x;)V

    .line 132
    return-void
.end method

.method private a(I)I
    .locals 7
    .param p1, "bytesToRecover"    # I

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "entriesToEvict":I
    if-lez p1, :cond_1

    .line 167
    iget-object v2, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lokhttp3/internal/framed/f$a;->b:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 168
    iget-object v2, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    aget-object v2, v2, v1

    iget v2, v2, Lokhttp3/internal/framed/e;->j:I

    sub-int/2addr p1, v2

    .line 169
    iget v2, p0, Lokhttp3/internal/framed/f$a;->d:I

    iget-object v3, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    aget-object v3, v3, v1

    iget v3, v3, Lokhttp3/internal/framed/e;->j:I

    sub-int/2addr v2, v3

    iput v2, p0, Lokhttp3/internal/framed/f$a;->d:I

    .line 170
    iget v2, p0, Lokhttp3/internal/framed/f$a;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/framed/f$a;->c:I

    .line 171
    add-int/lit8 v0, v0, 0x1

    .line 167
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 173
    :cond_0
    iget-object v2, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    iget v3, p0, Lokhttp3/internal/framed/f$a;->b:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    iget v5, p0, Lokhttp3/internal/framed/f$a;->b:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v0

    iget v6, p0, Lokhttp3/internal/framed/f$a;->c:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iget v2, p0, Lokhttp3/internal/framed/f$a;->b:I

    add-int/2addr v2, v0

    iput v2, p0, Lokhttp3/internal/framed/f$a;->b:I

    .line 177
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method private a(ILokhttp3/internal/framed/e;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "entry"    # Lokhttp3/internal/framed/e;

    .prologue
    const/4 v6, -0x1

    .line 276
    iget-object v4, p0, Lokhttp3/internal/framed/f$a;->e:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget v1, p2, Lokhttp3/internal/framed/e;->j:I

    .line 279
    .local v1, "delta":I
    if-eq p1, v6, :cond_0

    .line 280
    iget-object v4, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    invoke-direct {p0, p1}, Lokhttp3/internal/framed/f$a;->c(I)I

    move-result v5

    aget-object v4, v4, v5

    iget v4, v4, Lokhttp3/internal/framed/e;->j:I

    sub-int/2addr v1, v4

    .line 284
    :cond_0
    iget v4, p0, Lokhttp3/internal/framed/f$a;->h:I

    if-le v1, v4, :cond_1

    .line 285
    invoke-direct {p0}, Lokhttp3/internal/framed/f$a;->f()V

    .line 308
    :goto_0
    return-void

    .line 290
    :cond_1
    iget v4, p0, Lokhttp3/internal/framed/f$a;->d:I

    add-int/2addr v4, v1

    iget v5, p0, Lokhttp3/internal/framed/f$a;->h:I

    sub-int v0, v4, v5

    .line 291
    .local v0, "bytesToRecover":I
    invoke-direct {p0, v0}, Lokhttp3/internal/framed/f$a;->a(I)I

    move-result v3

    .line 293
    .local v3, "entriesEvicted":I
    if-ne p1, v6, :cond_3

    .line 294
    iget v4, p0, Lokhttp3/internal/framed/f$a;->c:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    array-length v5, v5

    if-le v4, v5, :cond_2

    .line 295
    iget-object v4, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    new-array v2, v4, [Lokhttp3/internal/framed/e;

    .line 296
    .local v2, "doubled":[Lokhttp3/internal/framed/e;
    iget-object v4, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    const/4 v5, 0x0

    iget-object v6, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    array-length v6, v6

    iget-object v7, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    array-length v7, v7

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    iget-object v4, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lokhttp3/internal/framed/f$a;->b:I

    .line 298
    iput-object v2, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    .line 300
    .end local v2    # "doubled":[Lokhttp3/internal/framed/e;
    :cond_2
    iget p1, p0, Lokhttp3/internal/framed/f$a;->b:I

    .end local p1    # "index":I
    add-int/lit8 v4, p1, -0x1

    iput v4, p0, Lokhttp3/internal/framed/f$a;->b:I

    .line 301
    .restart local p1    # "index":I
    iget-object v4, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    aput-object p2, v4, p1

    .line 302
    iget v4, p0, Lokhttp3/internal/framed/f$a;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lokhttp3/internal/framed/f$a;->c:I

    .line 307
    :goto_1
    iget v4, p0, Lokhttp3/internal/framed/f$a;->d:I

    add-int/2addr v4, v1

    iput v4, p0, Lokhttp3/internal/framed/f$a;->d:I

    goto :goto_0

    .line 304
    :cond_3
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/f$a;->c(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr p1, v4

    .line 305
    iget-object v4, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    aput-object p2, v4, p1

    goto :goto_1
.end method

.method private b(I)V
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/f$a;->g(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    invoke-static {}, Lokhttp3/internal/framed/f;->a()[Lokhttp3/internal/framed/e;

    move-result-object v2

    aget-object v1, v2, p1

    .line 222
    .local v1, "staticEntry":Lokhttp3/internal/framed/e;
    iget-object v2, p0, Lokhttp3/internal/framed/f$a;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v1    # "staticEntry":Lokhttp3/internal/framed/e;
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-static {}, Lokhttp3/internal/framed/f;->a()[Lokhttp3/internal/framed/e;

    move-result-object v2

    array-length v2, v2

    sub-int v2, p1, v2

    invoke-direct {p0, v2}, Lokhttp3/internal/framed/f$a;->c(I)I

    move-result v0

    .line 225
    .local v0, "dynamicTableIndex":I
    if-ltz v0, :cond_1

    iget-object v2, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_2

    .line 226
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Header index too large "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 228
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/framed/f$a;->e:Ljava/util/List;

    iget-object v3, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private c(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 234
    iget v0, p0, Lokhttp3/internal/framed/f$a;->b:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private d(I)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/f$a;->f(I)Lokio/ByteString;

    move-result-object v0

    .line 239
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lokhttp3/internal/framed/f$a;->d()Lokio/ByteString;

    move-result-object v1

    .line 240
    .local v1, "value":Lokio/ByteString;
    iget-object v2, p0, Lokhttp3/internal/framed/f$a;->e:Ljava/util/List;

    new-instance v3, Lokhttp3/internal/framed/e;

    invoke-direct {v3, v0, v1}, Lokhttp3/internal/framed/e;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 145
    iget v0, p0, Lokhttp3/internal/framed/f$a;->h:I

    iget v1, p0, Lokhttp3/internal/framed/f$a;->d:I

    if-ge v0, v1, :cond_0

    .line 146
    iget v0, p0, Lokhttp3/internal/framed/f$a;->h:I

    if-nez v0, :cond_1

    .line 147
    invoke-direct {p0}, Lokhttp3/internal/framed/f$a;->f()V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget v0, p0, Lokhttp3/internal/framed/f$a;->d:I

    iget v1, p0, Lokhttp3/internal/framed/f$a;->h:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lokhttp3/internal/framed/f$a;->a(I)I

    goto :goto_0
.end method

.method private e(I)V
    .locals 4
    .param p1, "nameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/f$a;->f(I)Lokio/ByteString;

    move-result-object v0

    .line 252
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lokhttp3/internal/framed/f$a;->d()Lokio/ByteString;

    move-result-object v1

    .line 253
    .local v1, "value":Lokio/ByteString;
    const/4 v2, -0x1

    new-instance v3, Lokhttp3/internal/framed/e;

    invoke-direct {v3, v0, v1}, Lokhttp3/internal/framed/e;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-direct {p0, v2, v3}, Lokhttp3/internal/framed/f$a;->a(ILokhttp3/internal/framed/e;)V

    .line 254
    return-void
.end method

.method private f(I)Lokio/ByteString;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/f$a;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {}, Lokhttp3/internal/framed/f;->a()[Lokhttp3/internal/framed/e;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lokhttp3/internal/framed/e;->h:Lokio/ByteString;

    .line 266
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    invoke-static {}, Lokhttp3/internal/framed/f;->a()[Lokhttp3/internal/framed/e;

    move-result-object v1

    array-length v1, v1

    sub-int v1, p1, v1

    invoke-direct {p0, v1}, Lokhttp3/internal/framed/f$a;->c(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lokhttp3/internal/framed/e;->h:Lokio/ByteString;

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lokhttp3/internal/framed/f$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 156
    iget-object v0, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lokhttp3/internal/framed/f$a;->a:[Lokhttp3/internal/framed/e;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/framed/f$a;->b:I

    .line 158
    iput v2, p0, Lokhttp3/internal/framed/f$a;->c:I

    .line 159
    iput v2, p0, Lokhttp3/internal/framed/f$a;->d:I

    .line 160
    return-void
.end method

.method private g()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0}, Lokhttp3/internal/framed/f$a;->d()Lokio/ByteString;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/internal/framed/f;->a(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 245
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lokhttp3/internal/framed/f$a;->d()Lokio/ByteString;

    move-result-object v1

    .line 246
    .local v1, "value":Lokio/ByteString;
    iget-object v2, p0, Lokhttp3/internal/framed/f$a;->e:Ljava/util/List;

    new-instance v3, Lokhttp3/internal/framed/e;

    invoke-direct {v3, v0, v1}, Lokhttp3/internal/framed/e;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method private g(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 271
    if-ltz p1, :cond_0

    invoke-static {}, Lokhttp3/internal/framed/f;->a()[Lokhttp3/internal/framed/e;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0}, Lokhttp3/internal/framed/f$a;->d()Lokio/ByteString;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/internal/framed/f;->a(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 258
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lokhttp3/internal/framed/f$a;->d()Lokio/ByteString;

    move-result-object v1

    .line 259
    .local v1, "value":Lokio/ByteString;
    const/4 v2, -0x1

    new-instance v3, Lokhttp3/internal/framed/e;

    invoke-direct {v3, v0, v1}, Lokhttp3/internal/framed/e;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-direct {p0, v2, v3}, Lokhttp3/internal/framed/f$a;->a(ILokhttp3/internal/framed/e;)V

    .line 260
    return-void
.end method

.method private i()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lokhttp3/internal/framed/f$a;->f:Lokio/e;

    invoke-interface {v0}, Lokio/e;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lokhttp3/internal/framed/f$a;->h:I

    return v0
.end method

.method a(II)I
    .locals 5
    .param p1, "firstByte"    # I
    .param p2, "prefixMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    and-int v1, p1, p2

    .line 316
    .local v1, "prefix":I
    if-ge v1, p2, :cond_0

    .line 333
    .end local v1    # "prefix":I
    :goto_0
    return v1

    .line 321
    .restart local v1    # "prefix":I
    :cond_0
    move v2, p2

    .line 322
    .local v2, "result":I
    const/4 v3, 0x0

    .line 324
    .local v3, "shift":I
    :goto_1
    invoke-direct {p0}, Lokhttp3/internal/framed/f$a;->i()I

    move-result v0

    .line 325
    .local v0, "b":I
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_1

    .line 326
    and-int/lit8 v4, v0, 0x7f

    shl-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 327
    add-int/lit8 v3, v3, 0x7

    goto :goto_1

    .line 329
    :cond_1
    shl-int v4, v0, v3

    add-int/2addr v2, v4

    move v1, v2

    .line 333
    goto :goto_0
.end method

.method b()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    const/16 v4, 0x40

    .line 185
    :goto_0
    iget-object v2, p0, Lokhttp3/internal/framed/f$a;->f:Lokio/e;

    invoke-interface {v2}, Lokio/e;->f()Z

    move-result v2

    if-nez v2, :cond_9

    .line 186
    iget-object v2, p0, Lokhttp3/internal/framed/f$a;->f:Lokio/e;

    invoke-interface {v2}, Lokio/e;->i()B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 187
    .local v0, "b":I
    if-ne v0, v5, :cond_0

    .line 188
    new-instance v2, Ljava/io/IOException;

    const-string v3, "index == 0"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_0
    and-int/lit16 v2, v0, 0x80

    if-ne v2, v5, :cond_1

    .line 190
    const/16 v2, 0x7f

    invoke-virtual {p0, v0, v2}, Lokhttp3/internal/framed/f$a;->a(II)I

    move-result v1

    .line 191
    .local v1, "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lokhttp3/internal/framed/f$a;->b(I)V

    goto :goto_0

    .line 192
    .end local v1    # "index":I
    :cond_1
    if-ne v0, v4, :cond_2

    .line 193
    invoke-direct {p0}, Lokhttp3/internal/framed/f$a;->h()V

    goto :goto_0

    .line 194
    :cond_2
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v4, :cond_3

    .line 195
    const/16 v2, 0x3f

    invoke-virtual {p0, v0, v2}, Lokhttp3/internal/framed/f$a;->a(II)I

    move-result v1

    .line 196
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lokhttp3/internal/framed/f$a;->e(I)V

    goto :goto_0

    .line 197
    .end local v1    # "index":I
    :cond_3
    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 198
    const/16 v2, 0x1f

    invoke-virtual {p0, v0, v2}, Lokhttp3/internal/framed/f$a;->a(II)I

    move-result v2

    iput v2, p0, Lokhttp3/internal/framed/f$a;->h:I

    .line 199
    iget v2, p0, Lokhttp3/internal/framed/f$a;->h:I

    if-ltz v2, :cond_4

    iget v2, p0, Lokhttp3/internal/framed/f$a;->h:I

    iget v3, p0, Lokhttp3/internal/framed/f$a;->g:I

    if-le v2, v3, :cond_5

    .line 201
    :cond_4
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid dynamic table size update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lokhttp3/internal/framed/f$a;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_5
    invoke-direct {p0}, Lokhttp3/internal/framed/f$a;->e()V

    goto :goto_0

    .line 204
    :cond_6
    const/16 v2, 0x10

    if-eq v0, v2, :cond_7

    if-nez v0, :cond_8

    .line 205
    :cond_7
    invoke-direct {p0}, Lokhttp3/internal/framed/f$a;->g()V

    goto :goto_0

    .line 207
    :cond_8
    const/16 v2, 0xf

    invoke-virtual {p0, v0, v2}, Lokhttp3/internal/framed/f$a;->a(II)I

    move-result v1

    .line 208
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lokhttp3/internal/framed/f$a;->d(I)V

    goto/16 :goto_0

    .line 211
    .end local v0    # "b":I
    .end local v1    # "index":I
    :cond_9
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lokhttp3/internal/framed/f$a;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 215
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/e;>;"
    iget-object v1, p0, Lokhttp3/internal/framed/f$a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 216
    return-object v0
.end method

.method d()Lokio/ByteString;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-direct {p0}, Lokhttp3/internal/framed/f$a;->i()I

    move-result v0

    .line 339
    .local v0, "firstByte":I
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    .line 340
    .local v1, "huffmanDecode":Z
    :goto_0
    const/16 v3, 0x7f

    invoke-virtual {p0, v0, v3}, Lokhttp3/internal/framed/f$a;->a(II)I

    move-result v2

    .line 342
    .local v2, "length":I
    if-eqz v1, :cond_1

    .line 343
    invoke-static {}, Lokhttp3/internal/framed/h;->a()Lokhttp3/internal/framed/h;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/framed/f$a;->f:Lokio/e;

    int-to-long v6, v2

    invoke-interface {v4, v6, v7}, Lokio/e;->g(J)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/internal/framed/h;->b([B)[B

    move-result-object v3

    invoke-static {v3}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v3

    .line 345
    :goto_1
    return-object v3

    .line 339
    .end local v1    # "huffmanDecode":Z
    .end local v2    # "length":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 345
    .restart local v1    # "huffmanDecode":Z
    .restart local v2    # "length":I
    :cond_1
    iget-object v3, p0, Lokhttp3/internal/framed/f$a;->f:Lokio/e;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lokio/e;->d(J)Lokio/ByteString;

    move-result-object v3

    goto :goto_1
.end method

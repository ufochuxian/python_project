.class public Lorg/xbill/DNS/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xbill/DNS/ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/m$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x5


# instance fields
.field private b:Ljava/util/List;

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-boolean v3, p0, Lorg/xbill/DNS/m;->c:Z

    .line 238
    iput v3, p0, Lorg/xbill/DNS/m;->d:I

    .line 239
    const/4 v3, 0x3

    iput v3, p0, Lorg/xbill/DNS/m;->e:I

    .line 256
    invoke-direct {p0}, Lorg/xbill/DNS/m;->b()V

    .line 257
    invoke-static {}, Lorg/xbill/DNS/ae;->e()Lorg/xbill/DNS/ae;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/ae;->a()[Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "servers":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 260
    new-instance v1, Lorg/xbill/DNS/am;

    aget-object v3, v2, v0

    invoke-direct {v1, v3}, Lorg/xbill/DNS/am;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, "r":Lorg/xbill/DNS/ad;
    const/4 v3, 0x5

    invoke-interface {v1, v3}, Lorg/xbill/DNS/ad;->c(I)V

    .line 262
    iget-object v3, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    .end local v0    # "i":I
    .end local v1    # "r":Lorg/xbill/DNS/ad;
    :cond_0
    iget-object v3, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    new-instance v4, Lorg/xbill/DNS/am;

    invoke-direct {v4}, Lorg/xbill/DNS/am;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_1
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3
    .param p1, "servers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-boolean v2, p0, Lorg/xbill/DNS/m;->c:Z

    .line 238
    iput v2, p0, Lorg/xbill/DNS/m;->d:I

    .line 239
    const/4 v2, 0x3

    iput v2, p0, Lorg/xbill/DNS/m;->e:I

    .line 278
    invoke-direct {p0}, Lorg/xbill/DNS/m;->b()V

    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 280
    new-instance v1, Lorg/xbill/DNS/am;

    aget-object v2, p1, v0

    invoke-direct {v1, v2}, Lorg/xbill/DNS/am;-><init>(Ljava/lang/String;)V

    .line 281
    .local v1, "r":Lorg/xbill/DNS/ad;
    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lorg/xbill/DNS/ad;->c(I)V

    .line 282
    iget-object v2, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    .end local v1    # "r":Lorg/xbill/DNS/ad;
    :cond_0
    return-void
.end method

.method public constructor <init>([Lorg/xbill/DNS/ad;)V
    .locals 3
    .param p1, "res"    # [Lorg/xbill/DNS/ad;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-boolean v1, p0, Lorg/xbill/DNS/m;->c:Z

    .line 238
    iput v1, p0, Lorg/xbill/DNS/m;->d:I

    .line 239
    const/4 v1, 0x3

    iput v1, p0, Lorg/xbill/DNS/m;->e:I

    .line 294
    invoke-direct {p0}, Lorg/xbill/DNS/m;->b()V

    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 296
    iget-object v1, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    return-void
.end method

.method static a(Lorg/xbill/DNS/m;I)I
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/m;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iget v0, p0, Lorg/xbill/DNS/m;->d:I

    rem-int/2addr v0, p1

    iput v0, p0, Lorg/xbill/DNS/m;->d:I

    return v0
.end method

.method static a(Lorg/xbill/DNS/m;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/m;

    .prologue
    .line 17
    iget-object v0, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    .line 244
    return-void
.end method

.method static b(Lorg/xbill/DNS/m;)Z
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/m;

    .prologue
    .line 17
    iget-boolean v0, p0, Lorg/xbill/DNS/m;->c:Z

    return v0
.end method

.method static c(Lorg/xbill/DNS/m;)I
    .locals 2
    .param p0, "x0"    # Lorg/xbill/DNS/m;

    .prologue
    .line 17
    iget v0, p0, Lorg/xbill/DNS/m;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/xbill/DNS/m;->d:I

    return v0
.end method

.method static d(Lorg/xbill/DNS/m;)I
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/m;

    .prologue
    .line 17
    iget v0, p0, Lorg/xbill/DNS/m;->d:I

    return v0
.end method

.method static e(Lorg/xbill/DNS/m;)I
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/m;

    .prologue
    .line 17
    iget v0, p0, Lorg/xbill/DNS/m;->e:I

    return v0
.end method


# virtual methods
.method public a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/af;)Ljava/lang/Object;
    .locals 1
    .param p1, "query"    # Lorg/xbill/DNS/v;
    .param p2, "listener"    # Lorg/xbill/DNS/af;

    .prologue
    .line 373
    new-instance v0, Lorg/xbill/DNS/m$a;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/m$a;-><init>(Lorg/xbill/DNS/m;Lorg/xbill/DNS/v;)V

    .line 374
    .local v0, "res":Lorg/xbill/DNS/m$a;
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/m$a;->a(Lorg/xbill/DNS/af;)V

    .line 375
    return-object v0
.end method

.method public a(Lorg/xbill/DNS/v;)Lorg/xbill/DNS/v;
    .locals 2
    .param p1, "query"    # Lorg/xbill/DNS/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    new-instance v0, Lorg/xbill/DNS/m$a;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/m$a;-><init>(Lorg/xbill/DNS/m;Lorg/xbill/DNS/v;)V

    .line 358
    .local v0, "res":Lorg/xbill/DNS/m$a;
    invoke-virtual {v0}, Lorg/xbill/DNS/m$a;->a()Lorg/xbill/DNS/v;

    move-result-object v1

    return-object v1
.end method

.method public a(I)V
    .locals 2
    .param p1, "port"    # I

    .prologue
    .line 301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 302
    iget-object v1, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/ad;

    invoke-interface {v1, p1}, Lorg/xbill/DNS/ad;->a(I)V

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2
    .param p1, "secs"    # I
    .param p2, "msecs"    # I

    .prologue
    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 339
    iget-object v1, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/ad;

    invoke-interface {v1, p1, p2}, Lorg/xbill/DNS/ad;->a(II)V

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_0
    return-void
.end method

.method public a(IIILjava/util/List;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "payloadSize"    # I
    .param p3, "flags"    # I
    .param p4, "options"    # Ljava/util/List;

    .prologue
    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 326
    iget-object v1, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/ad;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/xbill/DNS/ad;->a(IIILjava/util/List;)V

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_0
    return-void
.end method

.method public a(Lorg/xbill/DNS/ad;)V
    .locals 1
    .param p1, "r"    # Lorg/xbill/DNS/ad;

    .prologue
    .line 395
    iget-object v0, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    return-void
.end method

.method public a(Lorg/xbill/DNS/aq;)V
    .locals 2
    .param p1, "key"    # Lorg/xbill/DNS/aq;

    .prologue
    .line 332
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 333
    iget-object v1, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/ad;

    invoke-interface {v1, p1}, Lorg/xbill/DNS/ad;->a(Lorg/xbill/DNS/aq;)V

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 308
    iget-object v1, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/ad;

    invoke-interface {v1, p1}, Lorg/xbill/DNS/ad;->a(Z)V

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_0
    return-void
.end method

.method public a()[Lorg/xbill/DNS/ad;
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    iget-object v1, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/ad;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/ad;

    check-cast v0, [Lorg/xbill/DNS/ad;

    return-object v0
.end method

.method public b(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 319
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 320
    iget-object v1, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/ad;

    invoke-interface {v1, p1}, Lorg/xbill/DNS/ad;->b(I)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_0
    return-void
.end method

.method public b(Lorg/xbill/DNS/ad;)V
    .locals 1
    .param p1, "r"    # Lorg/xbill/DNS/ad;

    .prologue
    .line 401
    iget-object v0, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 402
    return-void
.end method

.method public b(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 314
    iget-object v1, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/ad;

    invoke-interface {v1, p1}, Lorg/xbill/DNS/ad;->b(Z)V

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1
    .param p1, "secs"    # I

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/xbill/DNS/m;->a(II)V

    .line 345
    return-void
.end method

.method public c(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 410
    iput-boolean p1, p0, Lorg/xbill/DNS/m;->c:Z

    .line 411
    return-void
.end method

.method public d(I)Lorg/xbill/DNS/ad;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 382
    iget-object v0, p0, Lorg/xbill/DNS/m;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/ad;

    .line 383
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(I)V
    .locals 0
    .param p1, "retries"    # I

    .prologue
    .line 416
    iput p1, p0, Lorg/xbill/DNS/m;->e:I

    .line 417
    return-void
.end method

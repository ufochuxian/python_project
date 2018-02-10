.class public Lar/com/hjg/pngj/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J = 0x35b42f29L

.field public static final b:J = 0x4ca918L

.field public static final c:J = 0x1ee258L


# instance fields
.field public final d:Lar/com/hjg/pngj/s;

.field public final e:Z

.field protected final f:Lar/com/hjg/pngj/d;

.field protected final g:Lar/com/hjg/pngj/a;

.field protected final h:Lar/com/hjg/pngj/chunks/ai;

.field protected i:I

.field protected j:Lar/com/hjg/pngj/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lar/com/hjg/pngj/o",
            "<+",
            "Lar/com/hjg/pngj/l;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/zip/CRC32;

.field l:Ljava/util/zip/Adler32;

.field private m:Lar/com/hjg/pngj/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lar/com/hjg/pngj/p",
            "<+",
            "Lar/com/hjg/pngj/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 165
    invoke-static {p1}, Lar/com/hjg/pngj/x;->a(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lar/com/hjg/pngj/z;-><init>(Ljava/io/InputStream;Z)V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lar/com/hjg/pngj/z;-><init>(Ljava/io/InputStream;Z)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "shouldCloseStream"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput v2, p0, Lar/com/hjg/pngj/z;->i:I

    .line 131
    new-instance v2, Lar/com/hjg/pngj/a;

    invoke-direct {v2, p1}, Lar/com/hjg/pngj/a;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lar/com/hjg/pngj/z;->g:Lar/com/hjg/pngj/a;

    .line 132
    iget-object v2, p0, Lar/com/hjg/pngj/z;->g:Lar/com/hjg/pngj/a;

    invoke-virtual {v2, p2}, Lar/com/hjg/pngj/a;->a(Z)V

    .line 133
    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->n()Lar/com/hjg/pngj/d;

    move-result-object v2

    iput-object v2, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    .line 135
    :try_start_0
    iget-object v2, p0, Lar/com/hjg/pngj/z;->g:Lar/com/hjg/pngj/a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lar/com/hjg/pngj/a;->b(Z)V

    .line 136
    iget-object v2, p0, Lar/com/hjg/pngj/z;->g:Lar/com/hjg/pngj/a;

    iget-object v3, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    const/16 v4, 0x24

    invoke-virtual {v2, v3, v4}, Lar/com/hjg/pngj/a;->b(Lar/com/hjg/pngj/i;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    const-string v2, "error reading first 21 bytes"

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lar/com/hjg/pngj/z;->g:Lar/com/hjg/pngj/a;

    invoke-virtual {v1}, Lar/com/hjg/pngj/a;->d()V

    .line 152
    iget-object v1, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v1}, Lar/com/hjg/pngj/d;->g()V

    .line 153
    throw v0

    .line 138
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v2}, Lar/com/hjg/pngj/d;->q()Lar/com/hjg/pngj/s;

    move-result-object v2

    iput-object v2, p0, Lar/com/hjg/pngj/z;->d:Lar/com/hjg/pngj/s;

    .line 139
    iget-object v2, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v2}, Lar/com/hjg/pngj/d;->s()Lar/com/hjg/pngj/h;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lar/com/hjg/pngj/z;->e:Z

    .line 140
    const-wide/32 v2, 0x4ca918

    invoke-virtual {p0, v2, v3}, Lar/com/hjg/pngj/z;->b(J)V

    .line 141
    const-wide/32 v2, 0x35b42f29

    invoke-virtual {p0, v2, v3}, Lar/com/hjg/pngj/z;->a(J)V

    .line 142
    const-wide/32 v2, 0x1ee258    # 1.0000007E-317

    invoke-virtual {p0, v2, v3}, Lar/com/hjg/pngj/z;->c(J)V

    .line 143
    iget-object v1, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    const-string v2, "fdAT"

    invoke-virtual {v1, v2}, Lar/com/hjg/pngj/d;->c(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    const-string v2, "fcTL"

    invoke-virtual {v1, v2}, Lar/com/hjg/pngj/d;->c(Ljava/lang/String;)V

    .line 145
    new-instance v1, Lar/com/hjg/pngj/chunks/ai;

    iget-object v2, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    iget-object v2, v2, Lar/com/hjg/pngj/d;->g:Lar/com/hjg/pngj/chunks/f;

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/chunks/ai;-><init>(Lar/com/hjg/pngj/chunks/f;)V

    iput-object v1, p0, Lar/com/hjg/pngj/z;->h:Lar/com/hjg/pngj/chunks/ai;

    .line 148
    invoke-static {}, Lar/com/hjg/pngj/w;->c()Lar/com/hjg/pngj/p;

    move-result-object v1

    invoke-virtual {p0, v1}, Lar/com/hjg/pngj/z;->a(Lar/com/hjg/pngj/p;)V

    .line 149
    const/4 v1, -0x1

    iput v1, p0, Lar/com/hjg/pngj/z;->i:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    return-void

    .line 139
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Z)Lar/com/hjg/pngj/chunks/f;
    .locals 1
    .param p1, "forceLoadingOfFirstChunks"    # Z

    .prologue
    .line 214
    if-eqz p1, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0}, Lar/com/hjg/pngj/d;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->a()V

    .line 216
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    iget-object v0, v0, Lar/com/hjg/pngj/d;->g:Lar/com/hjg/pngj/chunks/f;

    return-object v0
.end method

.method public a(I)Lar/com/hjg/pngj/l;
    .locals 6
    .param p1, "nrow"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 256
    iget-object v1, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v1}, Lar/com/hjg/pngj/d;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->a()V

    .line 258
    :cond_0
    iget-boolean v1, p0, Lar/com/hjg/pngj/z;->e:Z

    if-nez v1, :cond_8

    .line 259
    iget-object v1, p0, Lar/com/hjg/pngj/z;->j:Lar/com/hjg/pngj/o;

    if-nez v1, :cond_1

    .line 260
    const/4 v1, -0x1

    invoke-virtual {p0, v4, v1, v5, v4}, Lar/com/hjg/pngj/z;->a(ZIII)Lar/com/hjg/pngj/o;

    move-result-object v1

    iput-object v1, p0, Lar/com/hjg/pngj/z;->j:Lar/com/hjg/pngj/o;

    .line 261
    :cond_1
    iget-object v1, p0, Lar/com/hjg/pngj/z;->j:Lar/com/hjg/pngj/o;

    invoke-interface {v1, p1}, Lar/com/hjg/pngj/o;->a(I)Lar/com/hjg/pngj/l;

    move-result-object v0

    .line 262
    .local v0, "line":Lar/com/hjg/pngj/l;
    iget v1, p0, Lar/com/hjg/pngj/z;->i:I

    if-ne p1, v1, :cond_3

    .line 286
    .end local v0    # "line":Lar/com/hjg/pngj/l;
    :cond_2
    :goto_0
    return-object v0

    .line 264
    .restart local v0    # "line":Lar/com/hjg/pngj/l;
    :cond_3
    iget v1, p0, Lar/com/hjg/pngj/z;->i:I

    if-ge p1, v1, :cond_6

    .line 265
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rows must be read in increasing order: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_4
    iget v1, p0, Lar/com/hjg/pngj/z;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lar/com/hjg/pngj/z;->i:I

    .line 271
    iget-object v1, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v1}, Lar/com/hjg/pngj/d;->o()Lar/com/hjg/pngj/r;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/zip/Checksum;

    iget-object v3, p0, Lar/com/hjg/pngj/z;->k:Ljava/util/zip/CRC32;

    aput-object v3, v2, v5

    iget-object v3, p0, Lar/com/hjg/pngj/z;->l:Ljava/util/zip/Adler32;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lar/com/hjg/pngj/r;->a([Ljava/util/zip/Checksum;)V

    .line 272
    iget v1, p0, Lar/com/hjg/pngj/z;->i:I

    if-ne v1, p1, :cond_5

    .line 273
    iget-object v1, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v1}, Lar/com/hjg/pngj/d;->o()Lar/com/hjg/pngj/r;

    move-result-object v1

    invoke-virtual {v1}, Lar/com/hjg/pngj/r;->t()[B

    move-result-object v1

    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->t()Lar/com/hjg/pngj/s;

    move-result-object v2

    iget v2, v2, Lar/com/hjg/pngj/s;->l:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2, v5, v4}, Lar/com/hjg/pngj/l;->a([BIII)V

    .line 275
    invoke-interface {v0}, Lar/com/hjg/pngj/l;->a()V

    .line 277
    :cond_5
    iget-object v1, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v1}, Lar/com/hjg/pngj/d;->o()Lar/com/hjg/pngj/r;

    move-result-object v1

    invoke-virtual {v1}, Lar/com/hjg/pngj/r;->s()I

    .line 266
    :cond_6
    iget v1, p0, Lar/com/hjg/pngj/z;->i:I

    if-ge v1, p1, :cond_2

    .line 267
    :cond_7
    iget-object v1, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v1}, Lar/com/hjg/pngj/d;->o()Lar/com/hjg/pngj/r;

    move-result-object v1

    invoke-virtual {v1}, Lar/com/hjg/pngj/r;->f()Z

    move-result v1

    if-nez v1, :cond_4

    .line 268
    iget-object v1, p0, Lar/com/hjg/pngj/z;->g:Lar/com/hjg/pngj/a;

    iget-object v2, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v1, v2}, Lar/com/hjg/pngj/a;->a(Lar/com/hjg/pngj/i;)I

    move-result v1

    if-ge v1, v4, :cond_7

    .line 269
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    const-string v2, "premature ending"

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    .end local v0    # "line":Lar/com/hjg/pngj/l;
    :cond_8
    iget-object v1, p0, Lar/com/hjg/pngj/z;->j:Lar/com/hjg/pngj/o;

    if-nez v1, :cond_9

    .line 282
    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->t()Lar/com/hjg/pngj/s;

    move-result-object v1

    iget v1, v1, Lar/com/hjg/pngj/s;->c:I

    invoke-virtual {p0, v5, v1, v5, v4}, Lar/com/hjg/pngj/z;->a(ZIII)Lar/com/hjg/pngj/o;

    move-result-object v1

    iput-object v1, p0, Lar/com/hjg/pngj/z;->j:Lar/com/hjg/pngj/o;

    .line 283
    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->t()Lar/com/hjg/pngj/s;

    move-result-object v1

    iget v1, v1, Lar/com/hjg/pngj/s;->c:I

    invoke-virtual {p0, v1, v5, v4}, Lar/com/hjg/pngj/z;->b(III)V

    .line 285
    :cond_9
    iput p1, p0, Lar/com/hjg/pngj/z;->i:I

    .line 286
    iget-object v1, p0, Lar/com/hjg/pngj/z;->j:Lar/com/hjg/pngj/o;

    invoke-interface {v1, p1}, Lar/com/hjg/pngj/o;->a(I)Lar/com/hjg/pngj/l;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(III)Lar/com/hjg/pngj/o;
    .locals 7
    .param p1, "nRows"    # I
    .param p2, "rowOffset"    # I
    .param p3, "rowStep"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lar/com/hjg/pngj/o",
            "<+",
            "Lar/com/hjg/pngj/l;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 308
    iget-object v2, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v2}, Lar/com/hjg/pngj/d;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->a()V

    .line 310
    :cond_0
    if-gez p1, :cond_1

    .line 311
    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->t()Lar/com/hjg/pngj/s;

    move-result-object v2

    iget v2, v2, Lar/com/hjg/pngj/s;->c:I

    sub-int/2addr v2, p2

    div-int p1, v2, p3

    .line 312
    :cond_1
    if-lt p3, v5, :cond_2

    if-ltz p2, :cond_2

    if-eqz p1, :cond_2

    mul-int v2, p1, p3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->t()Lar/com/hjg/pngj/s;

    move-result-object v3

    iget v3, v3, Lar/com/hjg/pngj/s;->c:I

    if-le v2, v3, :cond_3

    .line 314
    :cond_2
    new-instance v2, Lar/com/hjg/pngj/PngjInputException;

    const-string v3, "bad args"

    invoke-direct {v2, v3}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 315
    :cond_3
    iget v2, p0, Lar/com/hjg/pngj/z;->i:I

    if-lt v2, p2, :cond_4

    .line 316
    new-instance v2, Lar/com/hjg/pngj/PngjInputException;

    const-string v3, "readRows cannot be mixed with readRow"

    invoke-direct {v2, v3}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    :cond_4
    invoke-virtual {p0, v6, p1, p2, p3}, Lar/com/hjg/pngj/z;->a(ZIII)Lar/com/hjg/pngj/o;

    move-result-object v2

    iput-object v2, p0, Lar/com/hjg/pngj/z;->j:Lar/com/hjg/pngj/o;

    .line 318
    iget-boolean v2, p0, Lar/com/hjg/pngj/z;->e:Z

    if-nez v2, :cond_8

    .line 319
    const/4 v1, -0x1

    .line 320
    .local v1, "m":I
    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-ge v1, v2, :cond_9

    .line 321
    :cond_5
    iget-object v2, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v2}, Lar/com/hjg/pngj/d;->o()Lar/com/hjg/pngj/r;

    move-result-object v2

    invoke-virtual {v2}, Lar/com/hjg/pngj/r;->f()Z

    move-result v2

    if-nez v2, :cond_6

    .line 322
    iget-object v2, p0, Lar/com/hjg/pngj/z;->g:Lar/com/hjg/pngj/a;

    iget-object v3, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v2, v3}, Lar/com/hjg/pngj/a;->a(Lar/com/hjg/pngj/i;)I

    move-result v2

    if-ge v2, v5, :cond_5

    .line 323
    new-instance v2, Lar/com/hjg/pngj/PngjInputException;

    const-string v3, "Premature ending"

    invoke-direct {v2, v3}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    :cond_6
    iget v2, p0, Lar/com/hjg/pngj/z;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lar/com/hjg/pngj/z;->i:I

    .line 325
    iget-object v2, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v2}, Lar/com/hjg/pngj/d;->o()Lar/com/hjg/pngj/r;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/util/zip/Checksum;

    iget-object v4, p0, Lar/com/hjg/pngj/z;->k:Ljava/util/zip/CRC32;

    aput-object v4, v3, v6

    iget-object v4, p0, Lar/com/hjg/pngj/z;->l:Ljava/util/zip/Adler32;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lar/com/hjg/pngj/r;->a([Ljava/util/zip/Checksum;)V

    .line 326
    iget v2, p0, Lar/com/hjg/pngj/z;->i:I

    sub-int/2addr v2, p2

    div-int v1, v2, p3

    .line 327
    iget v2, p0, Lar/com/hjg/pngj/z;->i:I

    if-lt v2, p2, :cond_7

    mul-int v2, p3, v1

    add-int/2addr v2, p2

    iget v3, p0, Lar/com/hjg/pngj/z;->i:I

    if-ne v2, v3, :cond_7

    .line 328
    iget-object v2, p0, Lar/com/hjg/pngj/z;->j:Lar/com/hjg/pngj/o;

    iget v3, p0, Lar/com/hjg/pngj/z;->i:I

    invoke-interface {v2, v3}, Lar/com/hjg/pngj/o;->a(I)Lar/com/hjg/pngj/l;

    move-result-object v0

    .line 329
    .local v0, "line":Lar/com/hjg/pngj/l;
    iget-object v2, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v2}, Lar/com/hjg/pngj/d;->o()Lar/com/hjg/pngj/r;

    move-result-object v2

    invoke-virtual {v2}, Lar/com/hjg/pngj/r;->t()[B

    move-result-object v2

    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->t()Lar/com/hjg/pngj/s;

    move-result-object v3

    iget v3, v3, Lar/com/hjg/pngj/s;->l:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v2, v3, v6, v5}, Lar/com/hjg/pngj/l;->a([BIII)V

    .line 331
    invoke-interface {v0}, Lar/com/hjg/pngj/l;->a()V

    .line 333
    .end local v0    # "line":Lar/com/hjg/pngj/l;
    :cond_7
    iget-object v2, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v2}, Lar/com/hjg/pngj/d;->o()Lar/com/hjg/pngj/r;

    move-result-object v2

    invoke-virtual {v2}, Lar/com/hjg/pngj/r;->s()I

    goto :goto_0

    .line 336
    .end local v1    # "m":I
    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lar/com/hjg/pngj/z;->b(III)V

    .line 338
    :cond_9
    iget-object v2, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v2}, Lar/com/hjg/pngj/d;->o()Lar/com/hjg/pngj/r;

    move-result-object v2

    invoke-virtual {v2}, Lar/com/hjg/pngj/r;->k()V

    .line 339
    iget-object v2, p0, Lar/com/hjg/pngj/z;->j:Lar/com/hjg/pngj/o;

    return-object v2
.end method

.method protected a(ZIII)Lar/com/hjg/pngj/o;
    .locals 6
    .param p1, "singleCursor"    # Z
    .param p2, "nlines"    # I
    .param p3, "noffset"    # I
    .param p4, "step"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIII)",
            "Lar/com/hjg/pngj/o",
            "<+",
            "Lar/com/hjg/pngj/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lar/com/hjg/pngj/z;->m:Lar/com/hjg/pngj/p;

    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->t()Lar/com/hjg/pngj/s;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lar/com/hjg/pngj/p;->a(Lar/com/hjg/pngj/s;ZIII)Lar/com/hjg/pngj/o;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 182
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    iget v0, v0, Lar/com/hjg/pngj/d;->f:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 183
    iget-object v0, p0, Lar/com/hjg/pngj/z;->g:Lar/com/hjg/pngj/a;

    iget-object v1, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/a;->a(Lar/com/hjg/pngj/i;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 184
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "premature ending reading first chunks"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 1
    .param p1, "maxTotalBytesToRead"    # J

    .prologue
    .line 407
    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0, p1, p2}, Lar/com/hjg/pngj/d;->a(J)V

    .line 408
    return-void
.end method

.method public a(Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;)V
    .locals 1
    .param p1, "chunkLoadBehaviour"    # Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    .prologue
    .line 196
    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/d;->a(Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;)V

    .line 197
    return-void
.end method

.method public a(Lar/com/hjg/pngj/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lar/com/hjg/pngj/p",
            "<+",
            "Lar/com/hjg/pngj/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, "factory":Lar/com/hjg/pngj/p;, "Lar/com/hjg/pngj/p<+Lar/com/hjg/pngj/l;>;"
    iput-object p1, p0, Lar/com/hjg/pngj/z;->m:Lar/com/hjg/pngj/p;

    .line 352
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "chunkToSkip"    # Ljava/lang/String;

    .prologue
    .line 437
    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/d;->c(Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public varargs a([Ljava/lang/String;)V
    .locals 1
    .param p1, "chunksToSkip"    # [Ljava/lang/String;

    .prologue
    .line 433
    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/d;->a([Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public b()Lar/com/hjg/pngj/chunks/f;
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/z;->a(Z)Lar/com/hjg/pngj/chunks/f;

    move-result-object v0

    return-object v0
.end method

.method protected b(III)V
    .locals 11
    .param p1, "nRows"    # I
    .param p2, "rowOffset"    # I
    .param p3, "rowStep"    # I

    .prologue
    .line 365
    iget-object v6, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v6}, Lar/com/hjg/pngj/d;->o()Lar/com/hjg/pngj/r;

    move-result-object v1

    .line 366
    .local v1, "idat":Lar/com/hjg/pngj/r;
    const/4 v4, 0x0

    .line 368
    .local v4, "nread":I
    :cond_0
    iget-object v6, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v6}, Lar/com/hjg/pngj/d;->o()Lar/com/hjg/pngj/r;

    move-result-object v6

    invoke-virtual {v6}, Lar/com/hjg/pngj/r;->f()Z

    move-result v6

    if-nez v6, :cond_1

    .line 369
    iget-object v6, p0, Lar/com/hjg/pngj/z;->g:Lar/com/hjg/pngj/a;

    iget-object v7, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v6, v7}, Lar/com/hjg/pngj/a;->a(Lar/com/hjg/pngj/i;)I

    move-result v6

    if-gtz v6, :cond_0

    .line 371
    :cond_1
    iget-object v6, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v6}, Lar/com/hjg/pngj/d;->o()Lar/com/hjg/pngj/r;

    move-result-object v6

    invoke-virtual {v6}, Lar/com/hjg/pngj/r;->f()Z

    move-result v6

    if-nez v6, :cond_2

    .line 372
    new-instance v6, Lar/com/hjg/pngj/PngjInputException;

    const-string v7, "Premature ending?"

    invoke-direct {v6, v7}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 373
    :cond_2
    iget-object v6, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v6}, Lar/com/hjg/pngj/d;->o()Lar/com/hjg/pngj/r;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/util/zip/Checksum;

    const/4 v8, 0x0

    iget-object v9, p0, Lar/com/hjg/pngj/z;->k:Ljava/util/zip/CRC32;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lar/com/hjg/pngj/z;->l:Ljava/util/zip/Adler32;

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lar/com/hjg/pngj/r;->a([Ljava/util/zip/Checksum;)V

    .line 374
    iget-object v6, v1, Lar/com/hjg/pngj/r;->j:Lar/com/hjg/pngj/ag;

    iget v5, v6, Lar/com/hjg/pngj/ag;->i:I

    .line 375
    .local v5, "rowNumreal":I
    iget-object v6, p0, Lar/com/hjg/pngj/z;->j:Lar/com/hjg/pngj/o;

    invoke-interface {v6, v5}, Lar/com/hjg/pngj/o;->c(I)Z

    move-result v2

    .line 376
    .local v2, "inset":Z
    if-eqz v2, :cond_3

    .line 377
    iget-object v6, p0, Lar/com/hjg/pngj/z;->j:Lar/com/hjg/pngj/o;

    invoke-interface {v6, v5}, Lar/com/hjg/pngj/o;->a(I)Lar/com/hjg/pngj/l;

    move-result-object v6

    invoke-virtual {v1}, Lar/com/hjg/pngj/r;->t()[B

    move-result-object v7

    iget-object v8, v1, Lar/com/hjg/pngj/r;->j:Lar/com/hjg/pngj/ag;

    iget v8, v8, Lar/com/hjg/pngj/ag;->p:I

    iget-object v9, v1, Lar/com/hjg/pngj/r;->j:Lar/com/hjg/pngj/ag;

    iget v9, v9, Lar/com/hjg/pngj/ag;->g:I

    iget-object v10, v1, Lar/com/hjg/pngj/r;->j:Lar/com/hjg/pngj/ag;

    iget v10, v10, Lar/com/hjg/pngj/ag;->e:I

    invoke-interface {v6, v7, v8, v9, v10}, Lar/com/hjg/pngj/l;->a([BIII)V

    .line 379
    add-int/lit8 v4, v4, 0x1

    .line 381
    :cond_3
    invoke-virtual {v1}, Lar/com/hjg/pngj/r;->s()I

    .line 382
    if-lt v4, p1, :cond_0

    invoke-virtual {v1}, Lar/com/hjg/pngj/r;->g()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 383
    invoke-virtual {v1}, Lar/com/hjg/pngj/r;->k()V

    .line 384
    const/4 v0, 0x0

    .local v0, "i":I
    move v3, p2

    .local v3, "j":I
    :goto_0
    if-ge v0, p1, :cond_4

    .line 385
    iget-object v6, p0, Lar/com/hjg/pngj/z;->j:Lar/com/hjg/pngj/o;

    invoke-interface {v6, v3}, Lar/com/hjg/pngj/o;->a(I)Lar/com/hjg/pngj/l;

    move-result-object v6

    invoke-interface {v6}, Lar/com/hjg/pngj/l;->a()V

    .line 384
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v3, p3

    goto :goto_0

    .line 387
    :cond_4
    return-void
.end method

.method public b(J)V
    .locals 1
    .param p1, "maxBytesMetadata"    # J

    .prologue
    .line 415
    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0, p1, p2}, Lar/com/hjg/pngj/d;->c(J)V

    .line 416
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1, "chunkToSkip"    # Ljava/lang/String;

    .prologue
    .line 441
    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/d;->d(Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method public b(Z)V
    .locals 1
    .param p1, "shouldCloseStream"    # Z

    .prologue
    .line 451
    iget-object v0, p0, Lar/com/hjg/pngj/z;->g:Lar/com/hjg/pngj/a;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/a;->a(Z)V

    .line 452
    return-void
.end method

.method c()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    iget v0, v0, Lar/com/hjg/pngj/d;->f:I

    return v0
.end method

.method public c(J)V
    .locals 1
    .param p1, "skipChunkMaxSize"    # J

    .prologue
    .line 424
    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0, p1, p2}, Lar/com/hjg/pngj/d;->b(J)V

    .line 425
    return-void
.end method

.method public d()Lar/com/hjg/pngj/chunks/ai;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0}, Lar/com/hjg/pngj/d;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->a()V

    .line 231
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/z;->h:Lar/com/hjg/pngj/chunks/ai;

    return-object v0
.end method

.method public e()Lar/com/hjg/pngj/l;
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lar/com/hjg/pngj/z;->i:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/z;->a(I)Lar/com/hjg/pngj/l;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 249
    iget v0, p0, Lar/com/hjg/pngj/z;->i:I

    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->t()Lar/com/hjg/pngj/s;

    move-result-object v1

    iget v1, v1, Lar/com/hjg/pngj/s;->c:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lar/com/hjg/pngj/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lar/com/hjg/pngj/o",
            "<+",
            "Lar/com/hjg/pngj/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->t()Lar/com/hjg/pngj/s;

    move-result-object v0

    iget v0, v0, Lar/com/hjg/pngj/s;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lar/com/hjg/pngj/z;->a(III)Lar/com/hjg/pngj/o;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    const-string v1, "IDAT"

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/d;->c(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    const-string v1, "fdAT"

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/d;->c(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0}, Lar/com/hjg/pngj/d;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->a()V

    .line 399
    :cond_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->i()V

    .line 400
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 467
    :try_start_0
    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0}, Lar/com/hjg/pngj/d;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->a()V

    .line 469
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0}, Lar/com/hjg/pngj/d;->o()Lar/com/hjg/pngj/r;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0}, Lar/com/hjg/pngj/d;->o()Lar/com/hjg/pngj/r;

    move-result-object v0

    invoke-virtual {v0}, Lar/com/hjg/pngj/r;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 470
    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0}, Lar/com/hjg/pngj/d;->o()Lar/com/hjg/pngj/r;

    move-result-object v0

    invoke-virtual {v0}, Lar/com/hjg/pngj/r;->k()V

    .line 471
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0}, Lar/com/hjg/pngj/d;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 472
    iget-object v0, p0, Lar/com/hjg/pngj/z;->g:Lar/com/hjg/pngj/a;

    iget-object v1, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/a;->a(Lar/com/hjg/pngj/i;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    .line 475
    :cond_2
    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->j()V

    .line 477
    return-void

    .line 475
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->j()V

    throw v0
.end method

.method public j()V
    .locals 4

    .prologue
    .line 486
    :try_start_0
    iget-object v1, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    if-eqz v1, :cond_0

    .line 487
    iget-object v1, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v1}, Lar/com/hjg/pngj/d;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :cond_0
    :goto_0
    iget-object v1, p0, Lar/com/hjg/pngj/z;->g:Lar/com/hjg/pngj/a;

    if-eqz v1, :cond_1

    .line 492
    iget-object v1, p0, Lar/com/hjg/pngj/z;->g:Lar/com/hjg/pngj/a;

    invoke-virtual {v1}, Lar/com/hjg/pngj/a;->d()V

    .line 493
    :cond_1
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lar/com/hjg/pngj/x;->b:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error closing chunk sequence:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lar/com/hjg/pngj/z;->e:Z

    return v0
.end method

.method public l()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/d;->a(Z)V

    .line 508
    return-void
.end method

.method public m()Lar/com/hjg/pngj/d;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    return-object v0
.end method

.method protected n()Lar/com/hjg/pngj/d;
    .locals 2

    .prologue
    .line 519
    new-instance v0, Lar/com/hjg/pngj/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/d;-><init>(Z)V

    return-object v0
.end method

.method public o()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lar/com/hjg/pngj/z;->k:Ljava/util/zip/CRC32;

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/z;->k:Ljava/util/zip/CRC32;

    .line 532
    :goto_0
    iget-object v0, p0, Lar/com/hjg/pngj/z;->l:Ljava/util/zip/Adler32;

    if-nez v0, :cond_1

    .line 533
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/z;->l:Ljava/util/zip/Adler32;

    .line 536
    :goto_1
    iget-object v0, p0, Lar/com/hjg/pngj/z;->d:Lar/com/hjg/pngj/s;

    iget-object v1, p0, Lar/com/hjg/pngj/z;->k:Ljava/util/zip/CRC32;

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/s;->a(Ljava/util/zip/Checksum;)V

    .line 537
    iget-object v0, p0, Lar/com/hjg/pngj/z;->l:Ljava/util/zip/Adler32;

    iget-object v1, p0, Lar/com/hjg/pngj/z;->d:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->c:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/util/zip/Adler32;->update(I)V

    .line 538
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/z;->k:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    goto :goto_0

    .line 535
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/z;->l:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    goto :goto_1
.end method

.method p()J
    .locals 5

    .prologue
    .line 541
    iget-object v0, p0, Lar/com/hjg/pngj/z;->k:Ljava/util/zip/CRC32;

    if-nez v0, :cond_0

    .line 542
    const-wide/16 v0, 0x0

    .line 544
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/z;->k:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    iget-object v2, p0, Lar/com/hjg/pngj/z;->l:Ljava/util/zip/Adler32;

    invoke-virtual {v2}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v2

    const/16 v4, 0x1f

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    goto :goto_0
.end method

.method public q()Ljava/lang/String;
    .locals 6

    .prologue
    .line 557
    const-string v0, "%016X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lar/com/hjg/pngj/z;->p()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lar/com/hjg/pngj/z;->d:Lar/com/hjg/pngj/s;

    invoke-virtual {v1}, Lar/com/hjg/pngj/s;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lar/com/hjg/pngj/z;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "i"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public s()Lar/com/hjg/pngj/s;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lar/com/hjg/pngj/z;->d:Lar/com/hjg/pngj/s;

    return-object v0
.end method

.method public t()Lar/com/hjg/pngj/s;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lar/com/hjg/pngj/z;->f:Lar/com/hjg/pngj/d;

    invoke-virtual {v0}, Lar/com/hjg/pngj/d;->A()Lar/com/hjg/pngj/s;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lar/com/hjg/pngj/z;->d:Lar/com/hjg/pngj/s;

    invoke-virtual {v1}, Lar/com/hjg/pngj/s;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " interlaced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/z;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

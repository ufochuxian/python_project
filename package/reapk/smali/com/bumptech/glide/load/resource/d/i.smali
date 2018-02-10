.class public Lcom/bumptech/glide/load/resource/d/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/d/i$b;,
        Lcom/bumptech/glide/load/resource/d/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/d",
        "<",
        "Ljava/io/InputStream;",
        "Lcom/bumptech/glide/load/resource/d/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "GifResourceDecoder"

.field private static final b:Lcom/bumptech/glide/load/resource/d/i$b;

.field private static final c:Lcom/bumptech/glide/load/resource/d/i$a;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/bumptech/glide/load/resource/d/i$b;

.field private final f:Lcom/bumptech/glide/load/engine/a/c;

.field private final g:Lcom/bumptech/glide/load/resource/d/i$a;

.field private final h:Lcom/bumptech/glide/load/resource/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/bumptech/glide/load/resource/d/i$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/d/i$b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/d/i;->b:Lcom/bumptech/glide/load/resource/d/i$b;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/resource/d/i$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/d/i$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/d/i;->c:Lcom/bumptech/glide/load/resource/d/i$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-static {p1}, Lcom/bumptech/glide/l;->b(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/l;->c()Lcom/bumptech/glide/load/engine/a/c;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/d/i;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;

    .prologue
    .line 42
    sget-object v0, Lcom/bumptech/glide/load/resource/d/i;->b:Lcom/bumptech/glide/load/resource/d/i$b;

    sget-object v1, Lcom/bumptech/glide/load/resource/d/i;->c:Lcom/bumptech/glide/load/resource/d/i$a;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bumptech/glide/load/resource/d/i;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/resource/d/i$b;Lcom/bumptech/glide/load/resource/d/i$a;)V

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/resource/d/i$b;Lcom/bumptech/glide/load/resource/d/i$a;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;
    .param p3, "parserPool"    # Lcom/bumptech/glide/load/resource/d/i$b;
    .param p4, "decoderPool"    # Lcom/bumptech/glide/load/resource/d/i$a;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/i;->d:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/d/i;->f:Lcom/bumptech/glide/load/engine/a/c;

    .line 50
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/d/i;->g:Lcom/bumptech/glide/load/resource/d/i$a;

    .line 51
    new-instance v0, Lcom/bumptech/glide/load/resource/d/a;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/resource/d/a;-><init>(Lcom/bumptech/glide/load/engine/a/c;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/i;->h:Lcom/bumptech/glide/load/resource/d/a;

    .line 52
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/d/i;->e:Lcom/bumptech/glide/load/resource/d/i$b;

    .line 53
    return-void
.end method

.method private a(Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/b/c;[B)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "decoder"    # Lcom/bumptech/glide/b/a;
    .param p2, "header"    # Lcom/bumptech/glide/b/c;
    .param p3, "data"    # [B

    .prologue
    .line 89
    invoke-virtual {p1, p2, p3}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/c;[B)V

    .line 90
    invoke-virtual {p1}, Lcom/bumptech/glide/b/a;->e()V

    .line 91
    invoke-virtual {p1}, Lcom/bumptech/glide/b/a;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a([BIILcom/bumptech/glide/b/d;Lcom/bumptech/glide/b/a;)Lcom/bumptech/glide/load/resource/d/d;
    .locals 10
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "parser"    # Lcom/bumptech/glide/b/d;
    .param p5, "decoder"    # Lcom/bumptech/glide/b/a;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p4}, Lcom/bumptech/glide/b/d;->b()Lcom/bumptech/glide/b/c;

    move-result-object v7

    .line 70
    .local v7, "header":Lcom/bumptech/glide/b/c;
    invoke-virtual {v7}, Lcom/bumptech/glide/b/c;->c()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v7}, Lcom/bumptech/glide/b/c;->d()I

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-object v1

    .line 75
    :cond_1
    invoke-direct {p0, p5, v7, p1}, Lcom/bumptech/glide/load/resource/d/i;->a(Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/b/c;[B)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 76
    .local v9, "firstFrame":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_0

    .line 80
    invoke-static {}, Lcom/bumptech/glide/load/resource/e;->b()Lcom/bumptech/glide/load/resource/e;

    move-result-object v4

    .line 82
    .local v4, "unitTransformation":Lcom/bumptech/glide/load/f;, "Lcom/bumptech/glide/load/f<Landroid/graphics/Bitmap;>;"
    new-instance v0, Lcom/bumptech/glide/load/resource/d/b;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/i;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/d/i;->h:Lcom/bumptech/glide/load/resource/d/a;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/d/i;->f:Lcom/bumptech/glide/load/engine/a/c;

    move v5, p2

    move v6, p3

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/resource/d/b;-><init>(Landroid/content/Context;Lcom/bumptech/glide/b/a$a;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/f;IILcom/bumptech/glide/b/c;[BLandroid/graphics/Bitmap;)V

    .line 85
    .local v0, "gifDrawable":Lcom/bumptech/glide/load/resource/d/b;
    new-instance v1, Lcom/bumptech/glide/load/resource/d/d;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/resource/d/d;-><init>(Lcom/bumptech/glide/load/resource/d/b;)V

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/16 v5, 0x4000

    .line 100
    const/16 v1, 0x4000

    .line 101
    .local v1, "bufferSize":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 104
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x4000

    :try_start_0
    new-array v2, v5, [B

    .line 105
    .local v2, "data":[B
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "nRead":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 106
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v2    # "data":[B
    .end local v4    # "nRead":I
    :catch_0
    move-exception v3

    .line 110
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "GifResourceDecoder"

    const-string v6, "Error reading data from stream"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 108
    .restart local v2    # "data":[B
    .restart local v4    # "nRead":I
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/k;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    check-cast p1, Ljava/io/InputStream;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/d/i;->a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/d/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/d/d;
    .locals 6
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 57
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/d/i;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 58
    .local v1, "data":[B
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/i;->e:Lcom/bumptech/glide/load/resource/d/i$b;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/resource/d/i$b;->a([B)Lcom/bumptech/glide/b/d;

    move-result-object v4

    .line 59
    .local v4, "parser":Lcom/bumptech/glide/b/d;
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/i;->g:Lcom/bumptech/glide/load/resource/d/i$a;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/d/i;->h:Lcom/bumptech/glide/load/resource/d/a;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/resource/d/i$a;->a(Lcom/bumptech/glide/b/a$a;)Lcom/bumptech/glide/b/a;

    move-result-object v5

    .local v5, "decoder":Lcom/bumptech/glide/b/a;
    move-object v0, p0

    move v2, p2

    move v3, p3

    .line 61
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/d/i;->a([BIILcom/bumptech/glide/b/d;Lcom/bumptech/glide/b/a;)Lcom/bumptech/glide/load/resource/d/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 63
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/d/i;->e:Lcom/bumptech/glide/load/resource/d/i$b;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/load/resource/d/i$b;->a(Lcom/bumptech/glide/b/d;)V

    .line 64
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/d/i;->g:Lcom/bumptech/glide/load/resource/d/i$a;

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/load/resource/d/i$a;->a(Lcom/bumptech/glide/b/a;)V

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/d/i;->e:Lcom/bumptech/glide/load/resource/d/i$b;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/load/resource/d/i$b;->a(Lcom/bumptech/glide/b/d;)V

    .line 64
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/d/i;->g:Lcom/bumptech/glide/load/resource/d/i$a;

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/load/resource/d/i$a;->a(Lcom/bumptech/glide/b/a;)V

    throw v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, ""

    return-object v0
.end method

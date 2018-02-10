.class public Lcom/bumptech/glide/load/resource/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/e/c$b;,
        Lcom/bumptech/glide/load/resource/e/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/d",
        "<",
        "Lcom/bumptech/glide/load/b/g;",
        "Lcom/bumptech/glide/load/resource/e/a;",
        ">;"
    }
.end annotation


# static fields
.field static final a:I = 0x800

.field private static final b:Lcom/bumptech/glide/load/resource/e/c$b;

.field private static final c:Lcom/bumptech/glide/load/resource/e/c$a;


# instance fields
.field private final d:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/bumptech/glide/load/b/g;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/bumptech/glide/load/engine/a/c;

.field private final g:Lcom/bumptech/glide/load/resource/e/c$b;

.field private final h:Lcom/bumptech/glide/load/resource/e/c$a;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/bumptech/glide/load/resource/e/c$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/e/c$b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/e/c;->b:Lcom/bumptech/glide/load/resource/e/c$b;

    .line 24
    new-instance v0, Lcom/bumptech/glide/load/resource/e/c$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/e/c$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/e/c;->c:Lcom/bumptech/glide/load/resource/e/c$a;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/engine/a/c;)V
    .locals 6
    .param p3, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/bumptech/glide/load/b/g;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;",
            "Lcom/bumptech/glide/load/engine/a/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "bitmapDecoder":Lcom/bumptech/glide/load/d;, "Lcom/bumptech/glide/load/d<Lcom/bumptech/glide/load/b/g;Landroid/graphics/Bitmap;>;"
    .local p2, "gifDecoder":Lcom/bumptech/glide/load/d;, "Lcom/bumptech/glide/load/d<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/d/b;>;"
    sget-object v4, Lcom/bumptech/glide/load/resource/e/c;->b:Lcom/bumptech/glide/load/resource/e/c$b;

    sget-object v5, Lcom/bumptech/glide/load/resource/e/c;->c:Lcom/bumptech/glide/load/resource/e/c$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/e/c;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/resource/e/c$b;Lcom/bumptech/glide/load/resource/e/c$a;)V

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/resource/e/c$b;Lcom/bumptech/glide/load/resource/e/c$a;)V
    .locals 0
    .param p3, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;
    .param p4, "parser"    # Lcom/bumptech/glide/load/resource/e/c$b;
    .param p5, "streamFactory"    # Lcom/bumptech/glide/load/resource/e/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/bumptech/glide/load/b/g;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;",
            "Lcom/bumptech/glide/load/engine/a/c;",
            "Lcom/bumptech/glide/load/resource/e/c$b;",
            "Lcom/bumptech/glide/load/resource/e/c$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "bitmapDecoder":Lcom/bumptech/glide/load/d;, "Lcom/bumptech/glide/load/d<Lcom/bumptech/glide/load/b/g;Landroid/graphics/Bitmap;>;"
    .local p2, "gifDecoder":Lcom/bumptech/glide/load/d;, "Lcom/bumptech/glide/load/d<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/d/b;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/e/c;->d:Lcom/bumptech/glide/load/d;

    .line 46
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/e/c;->e:Lcom/bumptech/glide/load/d;

    .line 47
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/e/c;->f:Lcom/bumptech/glide/load/engine/a/c;

    .line 48
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/e/c;->g:Lcom/bumptech/glide/load/resource/e/c$b;

    .line 49
    iput-object p5, p0, Lcom/bumptech/glide/load/resource/e/c;->h:Lcom/bumptech/glide/load/resource/e/c$a;

    .line 50
    return-void
.end method

.method private a(Lcom/bumptech/glide/load/b/g;II[B)Lcom/bumptech/glide/load/resource/e/a;
    .locals 2
    .param p1, "source"    # Lcom/bumptech/glide/load/b/g;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/g;->a()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/e/c;->b(Lcom/bumptech/glide/load/b/g;II[B)Lcom/bumptech/glide/load/resource/e/a;

    move-result-object v0

    .line 75
    .local v0, "result":Lcom/bumptech/glide/load/resource/e/a;
    :goto_0
    return-object v0

    .line 73
    .end local v0    # "result":Lcom/bumptech/glide/load/resource/e/a;
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/e/c;->b(Lcom/bumptech/glide/load/b/g;II)Lcom/bumptech/glide/load/resource/e/a;

    move-result-object v0

    .restart local v0    # "result":Lcom/bumptech/glide/load/resource/e/a;
    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/e/a;
    .locals 7
    .param p1, "bis"    # Ljava/io/InputStream;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 100
    const/4 v3, 0x0

    .line 101
    .local v3, "result":Lcom/bumptech/glide/load/resource/e/a;
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/e/c;->e:Lcom/bumptech/glide/load/d;

    invoke-interface {v4, p1, p2, p3}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/k;

    move-result-object v2

    .line 102
    .local v2, "gifResource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Lcom/bumptech/glide/load/resource/d/b;>;"
    if-eqz v2, :cond_0

    .line 103
    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/k;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/resource/d/b;

    .line 108
    .local v1, "drawable":Lcom/bumptech/glide/load/resource/d/b;
    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/d/b;->f()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 109
    new-instance v3, Lcom/bumptech/glide/load/resource/e/a;

    .end local v3    # "result":Lcom/bumptech/glide/load/resource/e/a;
    invoke-direct {v3, v6, v2}, Lcom/bumptech/glide/load/resource/e/a;-><init>(Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/engine/k;)V

    .line 115
    .end local v1    # "drawable":Lcom/bumptech/glide/load/resource/d/b;
    .restart local v3    # "result":Lcom/bumptech/glide/load/resource/e/a;
    :cond_0
    :goto_0
    return-object v3

    .line 111
    .restart local v1    # "drawable":Lcom/bumptech/glide/load/resource/d/b;
    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/d;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/d/b;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/resource/e/c;->f:Lcom/bumptech/glide/load/engine/a/c;

    invoke-direct {v0, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/d;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/c;)V

    .line 112
    .local v0, "bitmapResource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Landroid/graphics/Bitmap;>;"
    new-instance v3, Lcom/bumptech/glide/load/resource/e/a;

    .end local v3    # "result":Lcom/bumptech/glide/load/resource/e/a;
    invoke-direct {v3, v0, v6}, Lcom/bumptech/glide/load/resource/e/a;-><init>(Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/engine/k;)V

    .restart local v3    # "result":Lcom/bumptech/glide/load/resource/e/a;
    goto :goto_0
.end method

.method private b(Lcom/bumptech/glide/load/b/g;II)Lcom/bumptech/glide/load/resource/e/a;
    .locals 3
    .param p1, "toDecode"    # Lcom/bumptech/glide/load/b/g;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 121
    .local v1, "result":Lcom/bumptech/glide/load/resource/e/a;
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/e/c;->d:Lcom/bumptech/glide/load/d;

    invoke-interface {v2, p1, p2, p3}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    .line 122
    .local v0, "bitmapResource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 123
    new-instance v1, Lcom/bumptech/glide/load/resource/e/a;

    .end local v1    # "result":Lcom/bumptech/glide/load/resource/e/a;
    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/load/resource/e/a;-><init>(Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/engine/k;)V

    .line 126
    .restart local v1    # "result":Lcom/bumptech/glide/load/resource/e/a;
    :cond_0
    return-object v1
.end method

.method private b(Lcom/bumptech/glide/load/b/g;II[B)Lcom/bumptech/glide/load/resource/e/a;
    .locals 6
    .param p1, "source"    # Lcom/bumptech/glide/load/b/g;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/e/c;->h:Lcom/bumptech/glide/load/resource/e/c$a;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/g;->a()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v4, v5, p4}, Lcom/bumptech/glide/load/resource/e/c$a;->a(Ljava/io/InputStream;[B)Ljava/io/InputStream;

    move-result-object v0

    .line 81
    .local v0, "bis":Ljava/io/InputStream;
    const/16 v4, 0x800

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->mark(I)V

    .line 82
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/e/c;->g:Lcom/bumptech/glide/load/resource/e/c$b;

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/load/resource/e/c$b;->a(Ljava/io/InputStream;)Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v3

    .line 83
    .local v3, "type":Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 85
    const/4 v2, 0x0

    .line 86
    .local v2, "result":Lcom/bumptech/glide/load/resource/e/a;
    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    if-ne v3, v4, :cond_0

    .line 87
    invoke-direct {p0, v0, p2, p3}, Lcom/bumptech/glide/load/resource/e/c;->a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/e/a;

    move-result-object v2

    .line 90
    :cond_0
    if-nez v2, :cond_1

    .line 93
    new-instance v1, Lcom/bumptech/glide/load/b/g;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/g;->b()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/bumptech/glide/load/b/g;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    .line 94
    .local v1, "forBitmapDecoder":Lcom/bumptech/glide/load/b/g;
    invoke-direct {p0, v1, p2, p3}, Lcom/bumptech/glide/load/resource/e/c;->b(Lcom/bumptech/glide/load/b/g;II)Lcom/bumptech/glide/load/resource/e/a;

    move-result-object v2

    .line 96
    .end local v1    # "forBitmapDecoder":Lcom/bumptech/glide/load/b/g;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b/g;II)Lcom/bumptech/glide/load/engine/k;
    .locals 4
    .param p1, "source"    # Lcom/bumptech/glide/load/b/g;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/g;",
            "II)",
            "Lcom/bumptech/glide/load/engine/k",
            "<",
            "Lcom/bumptech/glide/load/resource/e/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lcom/bumptech/glide/i/a;->a()Lcom/bumptech/glide/i/a;

    move-result-object v0

    .line 57
    .local v0, "pool":Lcom/bumptech/glide/i/a;
    invoke-virtual {v0}, Lcom/bumptech/glide/i/a;->c()[B

    move-result-object v1

    .line 59
    .local v1, "tempBytes":[B
    const/4 v2, 0x0

    .line 61
    .local v2, "wrapper":Lcom/bumptech/glide/load/resource/e/a;
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/bumptech/glide/load/resource/e/c;->a(Lcom/bumptech/glide/load/b/g;II[B)Lcom/bumptech/glide/load/resource/e/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 63
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i/a;->a([B)Z

    .line 65
    if-eqz v2, :cond_0

    new-instance v3, Lcom/bumptech/glide/load/resource/e/b;

    invoke-direct {v3, v2}, Lcom/bumptech/glide/load/resource/e/b;-><init>(Lcom/bumptech/glide/load/resource/e/a;)V

    :goto_0
    return-object v3

    .line 63
    :catchall_0
    move-exception v3

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i/a;->a([B)Z

    throw v3

    .line 65
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

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
    .line 22
    check-cast p1, Lcom/bumptech/glide/load/b/g;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/e/c;->a(Lcom/bumptech/glide/load/b/g;II)Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/c;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/e/c;->e:Lcom/bumptech/glide/load/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/e/c;->d:Lcom/bumptech/glide/load/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/e/c;->i:Ljava/lang/String;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/c;->i:Ljava/lang/String;

    return-object v0
.end method

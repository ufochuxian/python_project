.class public Lcom/bumptech/glide/load/resource/bitmap/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/d",
        "<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "StreamBitmapDecoder.com.bumptech.glide.load.resource.bitmap"


# instance fields
.field private final b:Lcom/bumptech/glide/load/resource/bitmap/g;

.field private c:Lcom/bumptech/glide/load/engine/a/c;

.field private d:Lcom/bumptech/glide/load/DecodeFormat;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-static {p1}, Lcom/bumptech/glide/l;->b(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/l;->c()Lcom/bumptech/glide/load/engine/a/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/p;-><init>(Lcom/bumptech/glide/load/engine/a/c;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "decodeFormat"    # Lcom/bumptech/glide/load/DecodeFormat;

    .prologue
    .line 35
    invoke-static {p1}, Lcom/bumptech/glide/l;->b(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/l;->c()Lcom/bumptech/glide/load/engine/a/c;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bumptech/glide/load/resource/bitmap/p;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/c;)V
    .locals 1
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;

    .prologue
    .line 31
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->DEFAULT:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/bitmap/p;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 1
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;
    .param p2, "decodeFormat"    # Lcom/bumptech/glide/load/DecodeFormat;

    .prologue
    .line 39
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/g;->a:Lcom/bumptech/glide/load/resource/bitmap/g;

    invoke-direct {p0, v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/p;-><init>(Lcom/bumptech/glide/load/resource/bitmap/g;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/g;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 0
    .param p1, "downsampler"    # Lcom/bumptech/glide/load/resource/bitmap/g;
    .param p2, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;
    .param p3, "decodeFormat"    # Lcom/bumptech/glide/load/DecodeFormat;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->b:Lcom/bumptech/glide/load/resource/bitmap/g;

    .line 44
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->c:Lcom/bumptech/glide/load/engine/a/c;

    .line 45
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->d:Lcom/bumptech/glide/load/DecodeFormat;

    .line 46
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/engine/k;
    .locals 7
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II)",
            "Lcom/bumptech/glide/load/engine/k",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->b:Lcom/bumptech/glide/load/resource/bitmap/g;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->c:Lcom/bumptech/glide/load/engine/a/c;

    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->d:Lcom/bumptech/glide/load/DecodeFormat;

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/g;->a(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/a/c;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 51
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->c:Lcom/bumptech/glide/load/engine/a/c;

    invoke-static {v6, v0}, Lcom/bumptech/glide/load/resource/bitmap/d;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/c;)Lcom/bumptech/glide/load/resource/bitmap/d;

    move-result-object v0

    return-object v0
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
    .line 19
    check-cast p1, Ljava/io/InputStream;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/p;->a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StreamBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->b:Lcom/bumptech/glide/load/resource/bitmap/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->d:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/DecodeFormat;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->e:Ljava/lang/String;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/p;->e:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/bumptech/glide/load/resource/bitmap/i;
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
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/bitmap/r;

.field private final b:Lcom/bumptech/glide/load/engine/a/c;

.field private c:Lcom/bumptech/glide/load/DecodeFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-static {p1}, Lcom/bumptech/glide/l;->b(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/l;->c()Lcom/bumptech/glide/load/engine/a/c;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->DEFAULT:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/i;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "decodeFormat"    # Lcom/bumptech/glide/load/DecodeFormat;

    .prologue
    .line 29
    invoke-static {p1}, Lcom/bumptech/glide/l;->b(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/l;->c()Lcom/bumptech/glide/load/engine/a/c;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bumptech/glide/load/resource/bitmap/i;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 1
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;
    .param p2, "decodeFormat"    # Lcom/bumptech/glide/load/DecodeFormat;

    .prologue
    .line 33
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/r;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/r;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/i;-><init>(Lcom/bumptech/glide/load/resource/bitmap/r;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/r;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 0
    .param p1, "bitmapDecoder"    # Lcom/bumptech/glide/load/resource/bitmap/r;
    .param p2, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;
    .param p3, "decodeFormat"    # Lcom/bumptech/glide/load/DecodeFormat;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/i;->a:Lcom/bumptech/glide/load/resource/bitmap/r;

    .line 39
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/i;->b:Lcom/bumptech/glide/load/engine/a/c;

    .line 40
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/bitmap/i;->c:Lcom/bumptech/glide/load/DecodeFormat;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Landroid/os/ParcelFileDescriptor;II)Lcom/bumptech/glide/load/engine/k;
    .locals 7
    .param p1, "source"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "II)",
            "Lcom/bumptech/glide/load/engine/k",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/i;->a:Lcom/bumptech/glide/load/resource/bitmap/r;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/i;->b:Lcom/bumptech/glide/load/engine/a/c;

    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/i;->c:Lcom/bumptech/glide/load/DecodeFormat;

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/r;->a(Landroid/os/ParcelFileDescriptor;Lcom/bumptech/glide/load/engine/a/c;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 46
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/i;->b:Lcom/bumptech/glide/load/engine/a/c;

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
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/i;->a(Landroid/os/ParcelFileDescriptor;II)Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "FileDescriptorBitmapDecoder.com.bumptech.glide.load.data.bitmap"

    return-object v0
.end method

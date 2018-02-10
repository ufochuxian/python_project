.class public Lcom/bumptech/glide/load/resource/bitmap/m;
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
        "Lcom/bumptech/glide/load/b/g;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ImageVideoDecoder"


# instance fields
.field private final b:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "streamDecoder":Lcom/bumptech/glide/load/d;, "Lcom/bumptech/glide/load/d<Ljava/io/InputStream;Landroid/graphics/Bitmap;>;"
    .local p2, "fileDescriptorDecoder":Lcom/bumptech/glide/load/d;, "Lcom/bumptech/glide/load/d<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/m;->b:Lcom/bumptech/glide/load/d;

    .line 28
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/m;->c:Lcom/bumptech/glide/load/d;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b/g;II)Lcom/bumptech/glide/load/engine/k;
    .locals 6
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
    .line 35
    const/4 v3, 0x0

    .line 36
    .local v3, "result":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/g;->a()Ljava/io/InputStream;

    move-result-object v2

    .line 37
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 39
    :try_start_0
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/m;->b:Lcom/bumptech/glide/load/d;

    invoke-interface {v4, v2, p2, p3}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/k;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 47
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 48
    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/g;->b()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 49
    .local v1, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 50
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/m;->c:Lcom/bumptech/glide/load/d;

    invoke-interface {v4, v1, p2, p3}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/k;

    move-result-object v3

    .line 53
    .end local v1    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    :cond_1
    return-object v3

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "ImageVideoDecoder"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    const-string v4, "ImageVideoDecoder"

    const-string v5, "Failed to load image from stream, trying FileDescriptor"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
    .line 20
    check-cast p1, Lcom/bumptech/glide/load/b/g;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/m;->a(Lcom/bumptech/glide/load/b/g;II)Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "ImageVideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method

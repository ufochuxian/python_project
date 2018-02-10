.class public Lcom/bumptech/glide/load/resource/bitmap/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/bitmap/a",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/resource/bitmap/r$a;

.field private static final b:I = -0x1


# instance fields
.field private c:Lcom/bumptech/glide/load/resource/bitmap/r$a;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/r$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/r$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/r;->a:Lcom/bumptech/glide/load/resource/bitmap/r$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/r;->a:Lcom/bumptech/glide/load/resource/bitmap/r$a;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/r;-><init>(Lcom/bumptech/glide/load/resource/bitmap/r$a;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "frame"    # I

    .prologue
    .line 29
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/r;->a:Lcom/bumptech/glide/load/resource/bitmap/r$a;

    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/r;->a(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/r;-><init>(Lcom/bumptech/glide/load/resource/bitmap/r$a;I)V

    .line 30
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/r$a;)V
    .locals 1
    .param p1, "factory"    # Lcom/bumptech/glide/load/resource/bitmap/r$a;

    .prologue
    .line 33
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/bitmap/r;-><init>(Lcom/bumptech/glide/load/resource/bitmap/r$a;I)V

    .line 34
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/r$a;I)V
    .locals 0
    .param p1, "factory"    # Lcom/bumptech/glide/load/resource/bitmap/r$a;
    .param p2, "frame"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/r;->c:Lcom/bumptech/glide/load/resource/bitmap/r$a;

    .line 38
    iput p2, p0, Lcom/bumptech/glide/load/resource/bitmap/r;->d:I

    .line 39
    return-void
.end method

.method private static a(I)I
    .locals 2
    .param p0, "frame"    # I

    .prologue
    .line 71
    if-gez p0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested frame must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    return p0
.end method


# virtual methods
.method public a(Landroid/os/ParcelFileDescriptor;Lcom/bumptech/glide/load/engine/a/c;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "resource"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I
    .param p5, "decodeFormat"    # Lcom/bumptech/glide/load/DecodeFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/r;->c:Lcom/bumptech/glide/load/resource/bitmap/r$a;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/bitmap/r$a;->a()Landroid/media/MediaMetadataRetriever;

    move-result-object v0

    .line 46
    .local v0, "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 48
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/r;->d:I

    if-ltz v2, :cond_0

    .line 49
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/r;->d:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 53
    .local v1, "result":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 54
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 55
    return-object v1

    .line 51
    .end local v1    # "result":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "result":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/engine/a/c;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/bumptech/glide/load/engine/a/c;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/bumptech/glide/load/DecodeFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    move-object v1, p1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/r;->a(Landroid/os/ParcelFileDescriptor;Lcom/bumptech/glide/load/engine/a/c;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "VideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method

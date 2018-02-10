.class public Lcom/jiliguala/niuwa/module/story/helpers/BitmapHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IO_BUFFER_SIZE:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeArtwork(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
        .annotation build Lorg/b/a/d;
        .end annotation
    .end param
    .param p1, "divisor"    # I

    .prologue
    .line 37
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 38
    .local v0, "buffIn":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    invoke-static {p1}, Lcom/jiliguala/niuwa/module/story/helpers/BitmapHelper;->makeArtworkOptions(I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static makeArtworkOptions(I)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .param p0, "divisor"    # I

    .prologue
    .line 19
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 20
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 21
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 22
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 23
    return-object v0
.end method

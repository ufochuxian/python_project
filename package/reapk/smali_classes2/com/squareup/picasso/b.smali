.class Lcom/squareup/picasso/b;
.super Lcom/squareup/picasso/x;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String; = "android_asset"

.field private static final b:I


# instance fields
.field private final c:Landroid/content/res/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "file:///android_asset/"

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/squareup/picasso/b;->b:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/squareup/picasso/x;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/b;->c:Landroid/content/res/AssetManager;

    .line 38
    return-void
.end method


# virtual methods
.method a(Lcom/squareup/picasso/v;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "data"    # Lcom/squareup/picasso/v;
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p1}, Lcom/squareup/picasso/b;->d(Lcom/squareup/picasso/v;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 53
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Lcom/squareup/picasso/b;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Lcom/squareup/picasso/b;->c:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 57
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-static {v0}, Lcom/squareup/picasso/af;->a(Ljava/io/InputStream;)V

    .line 61
    iget v2, p1, Lcom/squareup/picasso/v;->h:I

    iget v3, p1, Lcom/squareup/picasso/v;->i:I

    invoke-static {v2, v3, v1, p1}, Lcom/squareup/picasso/b;->a(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/v;)V

    .line 63
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_0
    iget-object v2, p0, Lcom/squareup/picasso/b;->c:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 65
    .restart local v0    # "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 67
    invoke-static {v0}, Lcom/squareup/picasso/af;->a(Ljava/io/InputStream;)V

    return-object v2

    .line 59
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/squareup/picasso/af;->a(Ljava/io/InputStream;)V

    throw v2

    .line 67
    :catchall_1
    move-exception v2

    invoke-static {v0}, Lcom/squareup/picasso/af;->a(Ljava/io/InputStream;)V

    throw v2
.end method

.method public a(Lcom/squareup/picasso/v;)Z
    .locals 4
    .param p1, "data"    # Lcom/squareup/picasso/v;

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p1, Lcom/squareup/picasso/v;->d:Landroid/net/Uri;

    .line 42
    .local v0, "uri":Landroid/net/Uri;
    const-string v2, "file"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android_asset"

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public b(Lcom/squareup/picasso/v;)Lcom/squareup/picasso/x$a;
    .locals 4
    .param p1, "data"    # Lcom/squareup/picasso/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v1, p1, Lcom/squareup/picasso/v;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/squareup/picasso/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "filePath":Ljava/lang/String;
    new-instance v1, Lcom/squareup/picasso/x$a;

    invoke-virtual {p0, p1, v0}, Lcom/squareup/picasso/b;->a(Lcom/squareup/picasso/v;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {v1, v2, v3}, Lcom/squareup/picasso/x$a;-><init>(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    return-object v1
.end method

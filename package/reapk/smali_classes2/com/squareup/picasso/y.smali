.class Lcom/squareup/picasso/y;
.super Lcom/squareup/picasso/x;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/squareup/picasso/x;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/squareup/picasso/y;->a:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private static a(Landroid/content/res/Resources;ILcom/squareup/picasso/v;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "data"    # Lcom/squareup/picasso/v;

    .prologue
    .line 49
    invoke-static {p2}, Lcom/squareup/picasso/y;->d(Lcom/squareup/picasso/v;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 50
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/squareup/picasso/y;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 52
    iget v1, p2, Lcom/squareup/picasso/v;->h:I

    iget v2, p2, Lcom/squareup/picasso/v;->i:I

    invoke-static {v1, v2, v0, p2}, Lcom/squareup/picasso/y;->a(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/v;)V

    .line 54
    :cond_0
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public a(Lcom/squareup/picasso/v;)Z
    .locals 2
    .param p1, "data"    # Lcom/squareup/picasso/v;

    .prologue
    .line 35
    iget v0, p1, Lcom/squareup/picasso/v;->e:I

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    :cond_0
    const-string v0, "android.resource"

    iget-object v1, p1, Lcom/squareup/picasso/v;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Lcom/squareup/picasso/v;)Lcom/squareup/picasso/x$a;
    .locals 5
    .param p1, "data"    # Lcom/squareup/picasso/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v2, p0, Lcom/squareup/picasso/y;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/squareup/picasso/af;->a(Landroid/content/Context;Lcom/squareup/picasso/v;)Landroid/content/res/Resources;

    move-result-object v1

    .line 44
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {v1, p1}, Lcom/squareup/picasso/af;->a(Landroid/content/res/Resources;Lcom/squareup/picasso/v;)I

    move-result v0

    .line 45
    .local v0, "id":I
    new-instance v2, Lcom/squareup/picasso/x$a;

    invoke-static {v1, v0, p1}, Lcom/squareup/picasso/y;->a(Landroid/content/res/Resources;ILcom/squareup/picasso/v;)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {v2, v3, v4}, Lcom/squareup/picasso/x$a;-><init>(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    return-object v2
.end method

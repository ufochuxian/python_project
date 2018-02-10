.class public Lcom/squareup/picasso/Downloader$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/io/InputStream;

.field final b:Landroid/graphics/Bitmap;

.field final c:Z

.field final d:J


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "loadedFromCache"    # Z

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/picasso/Downloader$a;->a:Ljava/io/InputStream;

    .line 69
    iput-object p1, p0, Lcom/squareup/picasso/Downloader$a;->b:Landroid/graphics/Bitmap;

    .line 70
    iput-boolean p2, p0, Lcom/squareup/picasso/Downloader$a;->c:Z

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/squareup/picasso/Downloader$a;->d:J

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;ZJ)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "loadedFromCache"    # Z
    .param p3, "contentLength"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/squareup/picasso/Downloader$a;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "loadedFromCache"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/squareup/picasso/Downloader$a;-><init>(Ljava/io/InputStream;ZJ)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZJ)V
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "loadedFromCache"    # Z
    .param p3, "contentLength"    # J

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/squareup/picasso/Downloader$a;->a:Ljava/io/InputStream;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/picasso/Downloader$a;->b:Landroid/graphics/Bitmap;

    .line 115
    iput-boolean p2, p0, Lcom/squareup/picasso/Downloader$a;->c:Z

    .line 116
    iput-wide p3, p0, Lcom/squareup/picasso/Downloader$a;->d:J

    .line 117
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/squareup/picasso/Downloader$a;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/squareup/picasso/Downloader$a;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/squareup/picasso/Downloader$a;->d:J

    return-wide v0
.end method

.class Lcom/bumptech/glide/load/engine/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "CacheLoader"


# instance fields
.field private final b:Lcom/bumptech/glide/load/engine/b/a;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/b/a;)V
    .locals 0
    .param p1, "diskCache"    # Lcom/bumptech/glide/load/engine/b/a;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a;->b:Lcom/bumptech/glide/load/engine/b/a;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/d;II)Lcom/bumptech/glide/load/engine/k;
    .locals 6
    .param p1, "key"    # Lcom/bumptech/glide/load/b;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/b;",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/File;",
            "TZ;>;II)",
            "Lcom/bumptech/glide/load/engine/k",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .local p2, "decoder":Lcom/bumptech/glide/load/d;, "Lcom/bumptech/glide/load/d<Ljava/io/File;TZ;>;"
    const/4 v5, 0x3

    .line 21
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/a;->b:Lcom/bumptech/glide/load/engine/b/a;

    invoke-interface {v3, p1}, Lcom/bumptech/glide/load/engine/b/a;->a(Lcom/bumptech/glide/load/b;)Ljava/io/File;

    move-result-object v1

    .line 22
    .local v1, "fromCache":Ljava/io/File;
    if-nez v1, :cond_1

    .line 23
    const/4 v2, 0x0

    .line 40
    :cond_0
    :goto_0
    return-object v2

    .line 26
    :cond_1
    const/4 v2, 0x0

    .line 28
    .local v2, "result":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<TZ;>;"
    :try_start_0
    invoke-interface {p2, v1, p3, p4}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/k;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 34
    :cond_2
    :goto_1
    if-nez v2, :cond_0

    .line 35
    const-string v3, "CacheLoader"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 36
    const-string v3, "CacheLoader"

    const-string v4, "Failed to decode image from cache or not present in cache"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_3
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/a;->b:Lcom/bumptech/glide/load/engine/b/a;

    invoke-interface {v3, p1}, Lcom/bumptech/glide/load/engine/b/a;->b(Lcom/bumptech/glide/load/b;)V

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "CacheLoader"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 31
    const-string v3, "CacheLoader"

    const-string v4, "Exception decoding image from cache"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

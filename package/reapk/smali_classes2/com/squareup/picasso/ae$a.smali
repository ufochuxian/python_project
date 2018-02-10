.class Lcom/squareup/picasso/ae$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {p0}, Lcom/squareup/picasso/af;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 99
    .local v1, "cacheDir":Ljava/io/File;
    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    move-result-object v0

    .line 100
    .local v0, "cache":Landroid/net/http/HttpResponseCache;
    if-nez v0, :cond_0

    .line 101
    invoke-static {v1}, Lcom/squareup/picasso/af;->a(Ljava/io/File;)J

    move-result-wide v2

    .line 102
    .local v2, "maxSize":J
    invoke-static {v1, v2, v3}, Landroid/net/http/HttpResponseCache;->install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;

    move-result-object v0

    .line 104
    .end local v2    # "maxSize":J
    :cond_0
    return-object v0
.end method

.method static a(Ljava/lang/Object;)V
    .locals 1
    .param p0, "cache"    # Ljava/lang/Object;

    .prologue
    .line 109
    :try_start_0
    check-cast p0, Landroid/net/http/HttpResponseCache;

    .end local p0    # "cache":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/net/http/HttpResponseCache;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method

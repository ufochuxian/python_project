.class public Lcom/bumptech/glide/load/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/a/i$e;,
        Lcom/bumptech/glide/load/a/i$f;,
        Lcom/bumptech/glide/load/a/i$b;,
        Lcom/bumptech/glide/load/a/i$d;,
        Lcom/bumptech/glide/load/a/i$c;,
        Lcom/bumptech/glide/load/a/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/c",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MediaStoreThumbFetcher"

.field private static final b:I = 0x200

.field private static final c:I = 0x180

.field private static final d:Lcom/bumptech/glide/load/a/i$e;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Landroid/net/Uri;

.field private final g:Lcom/bumptech/glide/load/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a/c",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final h:I

.field private final i:I

.field private final j:Lcom/bumptech/glide/load/a/i$e;

.field private k:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/bumptech/glide/load/a/i$e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/a/i$e;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/a/i;->d:Lcom/bumptech/glide/load/a/i$e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/a/c;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaStoreUri"    # Landroid/net/Uri;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/load/a/c",
            "<",
            "Ljava/io/InputStream;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, "defaultFetcher":Lcom/bumptech/glide/load/a/c;, "Lcom/bumptech/glide/load/a/c<Ljava/io/InputStream;>;"
    sget-object v6, Lcom/bumptech/glide/load/a/i;->d:Lcom/bumptech/glide/load/a/i$e;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/a/i;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/a/c;IILcom/bumptech/glide/load/a/i$e;)V

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/a/c;IILcom/bumptech/glide/load/a/i$e;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaStoreUri"    # Landroid/net/Uri;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "factory"    # Lcom/bumptech/glide/load/a/i$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/load/a/c",
            "<",
            "Ljava/io/InputStream;",
            ">;II",
            "Lcom/bumptech/glide/load/a/i$e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p3, "defaultFetcher":Lcom/bumptech/glide/load/a/c;, "Lcom/bumptech/glide/load/a/c<Ljava/io/InputStream;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/bumptech/glide/load/a/i;->e:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/bumptech/glide/load/a/i;->f:Landroid/net/Uri;

    .line 49
    iput-object p3, p0, Lcom/bumptech/glide/load/a/i;->g:Lcom/bumptech/glide/load/a/c;

    .line 50
    iput p4, p0, Lcom/bumptech/glide/load/a/i;->h:I

    .line 51
    iput p5, p0, Lcom/bumptech/glide/load/a/i;->i:I

    .line 52
    iput-object p6, p0, Lcom/bumptech/glide/load/a/i;->j:Lcom/bumptech/glide/load/a/i$e;

    .line 53
    return-void
.end method

.method private a(Lcom/bumptech/glide/load/a/i$d;)Ljava/io/InputStream;
    .locals 6
    .param p1, "fetcher"    # Lcom/bumptech/glide/load/a/i$d;

    .prologue
    .line 71
    const/4 v2, 0x0

    .line 73
    .local v2, "result":Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/bumptech/glide/load/a/i;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/bumptech/glide/load/a/i;->f:Landroid/net/Uri;

    invoke-virtual {p1, v4, v5}, Lcom/bumptech/glide/load/a/i$d;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 80
    .end local v2    # "result":Ljava/io/InputStream;
    .local v3, "result":Ljava/io/InputStream;
    :goto_0
    const/4 v1, -0x1

    .line 81
    .local v1, "orientation":I
    if-eqz v3, :cond_0

    .line 82
    iget-object v4, p0, Lcom/bumptech/glide/load/a/i;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/bumptech/glide/load/a/i;->f:Landroid/net/Uri;

    invoke-virtual {p1, v4, v5}, Lcom/bumptech/glide/load/a/i$d;->a(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    .line 85
    :cond_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 86
    new-instance v2, Lcom/bumptech/glide/load/a/d;

    invoke-direct {v2, v3, v1}, Lcom/bumptech/glide/load/a/d;-><init>(Ljava/io/InputStream;I)V

    .line 88
    .end local v3    # "result":Ljava/io/InputStream;
    .restart local v2    # "result":Ljava/io/InputStream;
    :goto_1
    return-object v2

    .line 74
    .end local v1    # "orientation":I
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v4, "MediaStoreThumbFetcher"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    const-string v4, "MediaStoreThumbFetcher"

    const-string v5, "Failed to find thumbnail file"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v3, v2

    .end local v2    # "result":Ljava/io/InputStream;
    .restart local v3    # "result":Ljava/io/InputStream;
    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "orientation":I
    :cond_2
    move-object v2, v3

    .end local v3    # "result":Ljava/io/InputStream;
    .restart local v2    # "result":Ljava/io/InputStream;
    goto :goto_1
.end method

.method static synthetic a(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 26
    invoke-static {p0}, Lcom/bumptech/glide/load/a/i;->c(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 26
    invoke-static {p0}, Lcom/bumptech/glide/load/a/i;->d(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 114
    if-eqz p0, :cond_0

    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "media"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 120
    invoke-static {p0}, Lcom/bumptech/glide/load/a/i;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const-string v1, "video"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public synthetic a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/a/i;->b(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/load/a/i;->k:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/a/i;->k:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/a/i;->g:Lcom/bumptech/glide/load/a/c;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/c;->a()V

    .line 101
    return-void

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;
    .locals 5
    .param p1, "priority"    # Lcom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v1, p0, Lcom/bumptech/glide/load/a/i;->j:Lcom/bumptech/glide/load/a/i$e;

    iget-object v2, p0, Lcom/bumptech/glide/load/a/i;->f:Landroid/net/Uri;

    iget v3, p0, Lcom/bumptech/glide/load/a/i;->h:I

    iget v4, p0, Lcom/bumptech/glide/load/a/i;->i:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/load/a/i$e;->a(Landroid/net/Uri;II)Lcom/bumptech/glide/load/a/i$d;

    move-result-object v0

    .line 59
    .local v0, "fetcher":Lcom/bumptech/glide/load/a/i$d;
    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/a/i;->a(Lcom/bumptech/glide/load/a/i$d;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/a/i;->k:Ljava/io/InputStream;

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/a/i;->k:Ljava/io/InputStream;

    if-nez v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/bumptech/glide/load/a/i;->g:Lcom/bumptech/glide/load/a/c;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/a/c;->a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    iput-object v1, p0, Lcom/bumptech/glide/load/a/i;->k:Ljava/io/InputStream;

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/a/i;->k:Ljava/io/InputStream;

    return-object v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/bumptech/glide/load/a/i;->f:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

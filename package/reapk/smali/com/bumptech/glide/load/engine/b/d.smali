.class public Lcom/bumptech/glide/load/engine/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/b/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/b/d$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/bumptech/glide/load/engine/b/d$a;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/b/d$a;I)V
    .locals 0
    .param p1, "cacheDirectoryGetter"    # Lcom/bumptech/glide/load/engine/b/d$a;
    .param p2, "diskCacheSize"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p2, p0, Lcom/bumptech/glide/load/engine/b/d;->a:I

    .line 51
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/d;->b:Lcom/bumptech/glide/load/engine/b/d$a;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "diskCacheFolder"    # Ljava/lang/String;
    .param p2, "diskCacheSize"    # I

    .prologue
    .line 25
    new-instance v0, Lcom/bumptech/glide/load/engine/b/d$1;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/b/d$1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/bumptech/glide/load/engine/b/d;-><init>(Lcom/bumptech/glide/load/engine/b/d$a;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "diskCacheFolder"    # Ljava/lang/String;
    .param p2, "diskCacheName"    # Ljava/lang/String;
    .param p3, "diskCacheSize"    # I

    .prologue
    .line 34
    new-instance v0, Lcom/bumptech/glide/load/engine/b/d$2;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/engine/b/d$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/bumptech/glide/load/engine/b/d;-><init>(Lcom/bumptech/glide/load/engine/b/d$a;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/b/a;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/b/d;->b:Lcom/bumptech/glide/load/engine/b/d$a;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/b/d$a;->a()Ljava/io/File;

    move-result-object v0

    .line 58
    .local v0, "cacheDir":Ljava/io/File;
    if-nez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-object v1

    .line 62
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    :cond_2
    iget v1, p0, Lcom/bumptech/glide/load/engine/b/d;->a:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/engine/b/e;->a(Ljava/io/File;I)Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v1

    goto :goto_0
.end method

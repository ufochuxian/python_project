.class Lcom/bumptech/glide/load/engine/b/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/b/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/b/g;-><init>(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/g$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/b/g$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 3

    .prologue
    .line 25
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/b/g$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 26
    .local v0, "cacheDirectory":Ljava/io/File;
    if-nez v0, :cond_1

    .line 27
    const/4 v0, 0x0

    .line 32
    .end local v0    # "cacheDirectory":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 29
    .restart local v0    # "cacheDirectory":Ljava/io/File;
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/b/g$1;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 30
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/b/g$1;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

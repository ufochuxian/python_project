.class public final Lcom/bumptech/glide/load/engine/b/g;
.super Lcom/bumptech/glide/load/engine/b/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const-string v0, "image_manager_disk_cache"

    const/high16 v1, 0xfa00000

    invoke-direct {p0, p1, v0, v1}, Lcom/bumptech/glide/load/engine/b/g;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCacheSize"    # I

    .prologue
    .line 18
    const-string v0, "image_manager_disk_cache"

    invoke-direct {p0, p1, v0, p2}, Lcom/bumptech/glide/load/engine/b/g;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCacheName"    # Ljava/lang/String;
    .param p3, "diskCacheSize"    # I

    .prologue
    .line 22
    new-instance v0, Lcom/bumptech/glide/load/engine/b/g$1;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/engine/b/g$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/bumptech/glide/load/engine/b/d;-><init>(Lcom/bumptech/glide/load/engine/b/d$a;I)V

    .line 35
    return-void
.end method

.class Lcom/nostra13/universalimageloader/core/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostra13/universalimageloader/core/f;->a(Lcom/nostra13/universalimageloader/core/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nostra13/universalimageloader/core/h;

.field final synthetic b:Lcom/nostra13/universalimageloader/core/f;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/f;Lcom/nostra13/universalimageloader/core/h;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/f$1;->b:Lcom/nostra13/universalimageloader/core/f;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/f$1;->a:Lcom/nostra13/universalimageloader/core/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 72
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/f$1;->b:Lcom/nostra13/universalimageloader/core/f;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/f;->a:Lcom/nostra13/universalimageloader/core/e;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/e;->o:Lcom/nostra13/universalimageloader/a/a/a;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/f$1;->a:Lcom/nostra13/universalimageloader/core/h;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nostra13/universalimageloader/a/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 73
    .local v0, "image":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 74
    .local v1, "isImageCachedOnDisk":Z
    :goto_0
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/f$1;->b:Lcom/nostra13/universalimageloader/core/f;

    invoke-static {v2}, Lcom/nostra13/universalimageloader/core/f;->a(Lcom/nostra13/universalimageloader/core/f;)V

    .line 75
    if-eqz v1, :cond_1

    .line 76
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/f$1;->b:Lcom/nostra13/universalimageloader/core/f;

    invoke-static {v2}, Lcom/nostra13/universalimageloader/core/f;->b(Lcom/nostra13/universalimageloader/core/f;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/f$1;->a:Lcom/nostra13/universalimageloader/core/h;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    :goto_1
    return-void

    .line 73
    .end local v1    # "isImageCachedOnDisk":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 78
    .restart local v1    # "isImageCachedOnDisk":Z
    :cond_1
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/f$1;->b:Lcom/nostra13/universalimageloader/core/f;

    invoke-static {v2}, Lcom/nostra13/universalimageloader/core/f;->c(Lcom/nostra13/universalimageloader/core/f;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/f$1;->a:Lcom/nostra13/universalimageloader/core/h;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

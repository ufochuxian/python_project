.class public Lcom/bumptech/glide/load/resource/f/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/resource/f/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/f/f",
        "<",
        "Lcom/bumptech/glide/load/resource/d/b;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/k;)Lcom/bumptech/glide/load/engine/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/k",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/k",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "toTranscode":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Lcom/bumptech/glide/load/resource/d/b;>;"
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/k;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/d/b;

    .line 16
    .local v0, "gifData":Lcom/bumptech/glide/load/resource/d/b;
    new-instance v1, Lcom/bumptech/glide/load/resource/a/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/b;->e()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/resource/a/a;-><init>([B)V

    return-object v1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "GifDrawableBytesTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method

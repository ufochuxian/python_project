.class public Lcom/bumptech/glide/load/resource/f/b;
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
        "Landroid/graphics/Bitmap;",
        "Lcom/bumptech/glide/load/resource/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/f/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    new-instance v0, Lcom/bumptech/glide/load/resource/f/e;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/f/e;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/f/b;-><init>(Lcom/bumptech/glide/load/resource/f/e;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/f/e;)V
    .locals 0
    .param p1, "glideBitmapDrawableTranscoder"    # Lcom/bumptech/glide/load/resource/f/e;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/f/b;->a:Lcom/bumptech/glide/load/resource/f/e;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/k;)Lcom/bumptech/glide/load/engine/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/k",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/k",
            "<",
            "Lcom/bumptech/glide/load/resource/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "toTranscode":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/f/b;->a:Lcom/bumptech/glide/load/resource/f/e;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/f/e;->a(Lcom/bumptech/glide/load/engine/k;)Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/f/b;->a:Lcom/bumptech/glide/load/resource/f/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/f/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

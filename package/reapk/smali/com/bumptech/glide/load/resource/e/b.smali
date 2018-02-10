.class public Lcom/bumptech/glide/load/resource/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/k",
        "<",
        "Lcom/bumptech/glide/load/resource/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/e/a;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/e/a;)V
    .locals 2
    .param p1, "data"    # Lcom/bumptech/glide/load/resource/e/a;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-nez p1, :cond_0

    .line 16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Data must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/e/b;->a:Lcom/bumptech/glide/load/resource/e/a;

    .line 19
    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/resource/e/a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/b;->a:Lcom/bumptech/glide/load/resource/e/a;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/e/b;->a()Lcom/bumptech/glide/load/resource/e/a;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/b;->a:Lcom/bumptech/glide/load/resource/e/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/e/a;->a()I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 33
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/e/b;->a:Lcom/bumptech/glide/load/resource/e/a;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/e/a;->b()Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    .line 34
    .local v0, "bitmapResource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/k;->d()V

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/e/b;->a:Lcom/bumptech/glide/load/resource/e/a;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/e/a;->c()Lcom/bumptech/glide/load/engine/k;

    move-result-object v1

    .line 38
    .local v1, "gifDataResource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Lcom/bumptech/glide/load/resource/d/b;>;"
    if-eqz v1, :cond_1

    .line 39
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/k;->d()V

    .line 41
    :cond_1
    return-void
.end method

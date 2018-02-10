.class public Lcom/bumptech/glide/load/resource/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/e",
        "<",
        "Lcom/bumptech/glide/load/resource/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/e",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/e",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "bitmapEncoder":Lcom/bumptech/glide/load/e;, "Lcom/bumptech/glide/load/e<Landroid/graphics/Bitmap;>;"
    .local p2, "gifEncoder":Lcom/bumptech/glide/load/e;, "Lcom/bumptech/glide/load/e<Lcom/bumptech/glide/load/resource/d/b;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/e/d;->a:Lcom/bumptech/glide/load/e;

    .line 23
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/e/d;->b:Lcom/bumptech/glide/load/e;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/d;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/e/d;->a:Lcom/bumptech/glide/load/e;

    invoke-interface {v1}, Lcom/bumptech/glide/load/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/e/d;->b:Lcom/bumptech/glide/load/e;

    invoke-interface {v1}, Lcom/bumptech/glide/load/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/e/d;->c:Ljava/lang/String;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/engine/k;Ljava/io/OutputStream;)Z
    .locals 4
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/k",
            "<",
            "Lcom/bumptech/glide/load/resource/e/a;",
            ">;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "resource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Lcom/bumptech/glide/load/resource/e/a;>;"
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/k;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/resource/e/a;

    .line 29
    .local v1, "gifBitmap":Lcom/bumptech/glide/load/resource/e/a;
    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/e/a;->b()Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    .line 31
    .local v0, "bitmapResource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 32
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/e/d;->a:Lcom/bumptech/glide/load/e;

    invoke-interface {v2, v0, p2}, Lcom/bumptech/glide/load/e;->a(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v2

    .line 34
    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/e/d;->b:Lcom/bumptech/glide/load/e;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/e/a;->c()Lcom/bumptech/glide/load/engine/k;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/bumptech/glide/load/e;->a(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 15
    check-cast p1, Lcom/bumptech/glide/load/engine/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/e/d;->a(Lcom/bumptech/glide/load/engine/k;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

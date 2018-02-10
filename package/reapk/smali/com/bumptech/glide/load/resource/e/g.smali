.class public Lcom/bumptech/glide/load/resource/e/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/f/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/f/b",
        "<",
        "Lcom/bumptech/glide/load/b/g;",
        "Lcom/bumptech/glide/load/resource/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/resource/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/bumptech/glide/load/b/g;",
            "Lcom/bumptech/glide/load/resource/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/e",
            "<",
            "Lcom/bumptech/glide/load/resource/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/load/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a",
            "<",
            "Lcom/bumptech/glide/load/b/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/load/engine/a/c;)V
    .locals 4
    .param p3, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f/b",
            "<",
            "Lcom/bumptech/glide/load/b/g;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/f/b",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;",
            "Lcom/bumptech/glide/load/engine/a/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "bitmapProvider":Lcom/bumptech/glide/f/b;, "Lcom/bumptech/glide/f/b<Lcom/bumptech/glide/load/b/g;Landroid/graphics/Bitmap;>;"
    .local p2, "gifProvider":Lcom/bumptech/glide/f/b;, "Lcom/bumptech/glide/f/b<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/d/b;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/bumptech/glide/load/resource/e/c;

    invoke-interface {p1}, Lcom/bumptech/glide/f/b;->b()Lcom/bumptech/glide/load/d;

    move-result-object v1

    invoke-interface {p2}, Lcom/bumptech/glide/f/b;->b()Lcom/bumptech/glide/load/d;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3}, Lcom/bumptech/glide/load/resource/e/c;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/engine/a/c;)V

    .line 36
    .local v0, "decoder":Lcom/bumptech/glide/load/resource/e/c;
    new-instance v1, Lcom/bumptech/glide/load/resource/c/c;

    new-instance v2, Lcom/bumptech/glide/load/resource/e/e;

    invoke-direct {v2, v0}, Lcom/bumptech/glide/load/resource/e/e;-><init>(Lcom/bumptech/glide/load/d;)V

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/resource/c/c;-><init>(Lcom/bumptech/glide/load/d;)V

    iput-object v1, p0, Lcom/bumptech/glide/load/resource/e/g;->a:Lcom/bumptech/glide/load/d;

    .line 37
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/e/g;->b:Lcom/bumptech/glide/load/d;

    .line 38
    new-instance v1, Lcom/bumptech/glide/load/resource/e/d;

    invoke-interface {p1}, Lcom/bumptech/glide/f/b;->d()Lcom/bumptech/glide/load/e;

    move-result-object v2

    invoke-interface {p2}, Lcom/bumptech/glide/f/b;->d()Lcom/bumptech/glide/load/e;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/resource/e/d;-><init>(Lcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/e;)V

    iput-object v1, p0, Lcom/bumptech/glide/load/resource/e/g;->c:Lcom/bumptech/glide/load/e;

    .line 41
    invoke-interface {p1}, Lcom/bumptech/glide/f/b;->c()Lcom/bumptech/glide/load/a;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/resource/e/g;->d:Lcom/bumptech/glide/load/a;

    .line 42
    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/resource/e/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/g;->a:Lcom/bumptech/glide/load/d;

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/load/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/bumptech/glide/load/b/g;",
            "Lcom/bumptech/glide/load/resource/e/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/g;->b:Lcom/bumptech/glide/load/d;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/load/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/a",
            "<",
            "Lcom/bumptech/glide/load/b/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/g;->d:Lcom/bumptech/glide/load/a;

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/load/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Lcom/bumptech/glide/load/resource/e/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/g;->c:Lcom/bumptech/glide/load/e;

    return-object v0
.end method

.class public Lcom/bumptech/glide/load/resource/bitmap/n;
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/bitmap/m;

.field private final b:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/e",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/load/b/h;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/f/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f/b",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/f/b",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "streamBitmapProvider":Lcom/bumptech/glide/f/b;, "Lcom/bumptech/glide/f/b<Ljava/io/InputStream;Landroid/graphics/Bitmap;>;"
    .local p2, "fileDescriptorBitmapProvider":Lcom/bumptech/glide/f/b;, "Lcom/bumptech/glide/f/b<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p1}, Lcom/bumptech/glide/f/b;->d()Lcom/bumptech/glide/load/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/n;->c:Lcom/bumptech/glide/load/e;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/b/h;

    invoke-interface {p1}, Lcom/bumptech/glide/f/b;->c()Lcom/bumptech/glide/load/a;

    move-result-object v1

    invoke-interface {p2}, Lcom/bumptech/glide/f/b;->c()Lcom/bumptech/glide/load/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/b/h;-><init>(Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/a;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/n;->d:Lcom/bumptech/glide/load/b/h;

    .line 31
    invoke-interface {p1}, Lcom/bumptech/glide/f/b;->a()Lcom/bumptech/glide/load/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/n;->b:Lcom/bumptech/glide/load/d;

    .line 32
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/m;

    invoke-interface {p1}, Lcom/bumptech/glide/f/b;->b()Lcom/bumptech/glide/load/d;

    move-result-object v1

    invoke-interface {p2}, Lcom/bumptech/glide/f/b;->b()Lcom/bumptech/glide/load/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/m;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/n;->a:Lcom/bumptech/glide/load/resource/bitmap/m;

    .line 34
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
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/n;->b:Lcom/bumptech/glide/load/d;

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
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/n;->a:Lcom/bumptech/glide/load/resource/bitmap/m;

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
    .line 48
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/n;->d:Lcom/bumptech/glide/load/b/h;

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/load/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/n;->c:Lcom/bumptech/glide/load/e;

    return-object v0
.end method

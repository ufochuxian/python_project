.class public Lcom/bumptech/glide/load/resource/bitmap/o;
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
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/bitmap/p;

.field private final b:Lcom/bumptech/glide/load/resource/bitmap/c;

.field private final c:Lcom/bumptech/glide/load/b/o;

.field private final d:Lcom/bumptech/glide/load/resource/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/c/c",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 2
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;
    .param p2, "decodeFormat"    # Lcom/bumptech/glide/load/DecodeFormat;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/bumptech/glide/load/b/o;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/o;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/o;->c:Lcom/bumptech/glide/load/b/o;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/p;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/p;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/o;->a:Lcom/bumptech/glide/load/resource/bitmap/p;

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/o;->b:Lcom/bumptech/glide/load/resource/bitmap/c;

    .line 31
    new-instance v0, Lcom/bumptech/glide/load/resource/c/c;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/o;->a:Lcom/bumptech/glide/load/resource/bitmap/p;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/c/c;-><init>(Lcom/bumptech/glide/load/d;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/o;->d:Lcom/bumptech/glide/load/resource/c/c;

    .line 32
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
    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/o;->d:Lcom/bumptech/glide/load/resource/c/c;

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/load/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/o;->a:Lcom/bumptech/glide/load/resource/bitmap/p;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/load/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/a",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/o;->c:Lcom/bumptech/glide/load/b/o;

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
    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/o;->b:Lcom/bumptech/glide/load/resource/bitmap/c;

    return-object v0
.end method

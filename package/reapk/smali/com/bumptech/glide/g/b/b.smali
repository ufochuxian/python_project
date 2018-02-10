.class public abstract Lcom/bumptech/glide/g/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/g/b/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/g/b/m",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private b:Lcom/bumptech/glide/g/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, "this":Lcom/bumptech/glide/g/b/b;, "Lcom/bumptech/glide/g/b/b<TZ;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 59
    .local p0, "this":Lcom/bumptech/glide/g/b/b;, "Lcom/bumptech/glide/g/b/b<TZ;>;"
    return-void
.end method

.method public a(Lcom/bumptech/glide/g/c;)V
    .locals 0
    .param p1, "request"    # Lcom/bumptech/glide/g/c;

    .prologue
    .line 34
    .local p0, "this":Lcom/bumptech/glide/g/b/b;, "Lcom/bumptech/glide/g/b/b<TZ;>;"
    iput-object p1, p0, Lcom/bumptech/glide/g/b/b;->b:Lcom/bumptech/glide/g/c;

    .line 35
    return-void
.end method

.method public a(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 67
    .local p0, "this":Lcom/bumptech/glide/g/b/b;, "Lcom/bumptech/glide/g/b/b<TZ;>;"
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 51
    .local p0, "this":Lcom/bumptech/glide/g/b/b;, "Lcom/bumptech/glide/g/b/b<TZ;>;"
    return-void
.end method

.method public b_()Lcom/bumptech/glide/g/c;
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lcom/bumptech/glide/g/b/b;, "Lcom/bumptech/glide/g/b/b<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/g/b/b;->b:Lcom/bumptech/glide/g/c;

    return-object v0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 75
    .local p0, "this":Lcom/bumptech/glide/g/b/b;, "Lcom/bumptech/glide/g/b/b<TZ;>;"
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 83
    .local p0, "this":Lcom/bumptech/glide/g/b/b;, "Lcom/bumptech/glide/g/b/b<TZ;>;"
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 91
    .local p0, "this":Lcom/bumptech/glide/g/b/b;, "Lcom/bumptech/glide/g/b/b<TZ;>;"
    return-void
.end method

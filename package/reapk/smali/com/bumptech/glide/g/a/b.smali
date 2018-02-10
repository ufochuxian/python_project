.class public Lcom/bumptech/glide/g/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/g/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/g/a/c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/g/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/a/c",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/g/a/c;I)V
    .locals 0
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g/a/c",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/bumptech/glide/g/a/b;, "Lcom/bumptech/glide/g/a/b<TT;>;"
    .local p1, "defaultAnimation":Lcom/bumptech/glide/g/a/c;, "Lcom/bumptech/glide/g/a/c<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/g/a/b;->a:Lcom/bumptech/glide/g/a/c;

    .line 26
    iput p2, p0, Lcom/bumptech/glide/g/a/b;->b:I

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/g/a/c$a;)Z
    .locals 5
    .param p2, "adapter"    # Lcom/bumptech/glide/g/a/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/bumptech/glide/g/a/c$a;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bumptech/glide/g/a/b;, "Lcom/bumptech/glide/g/a/b<TT;>;"
    .local p1, "current":Landroid/graphics/drawable/Drawable;, "TT;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 44
    invoke-interface {p2}, Lcom/bumptech/glide/g/a/c$a;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 45
    .local v0, "previous":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 46
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v4, v3

    aput-object p1, v4, v2

    invoke-direct {v1, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 47
    .local v1, "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 48
    iget v3, p0, Lcom/bumptech/glide/g/a/b;->b:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 49
    invoke-interface {p2, v1}, Lcom/bumptech/glide/g/a/c$a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 53
    .end local v1    # "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    :goto_0
    return v2

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/g/a/b;->a:Lcom/bumptech/glide/g/a/c;

    invoke-interface {v2, p1, p2}, Lcom/bumptech/glide/g/a/c;->a(Ljava/lang/Object;Lcom/bumptech/glide/g/a/c$a;)Z

    move v2, v3

    .line 53
    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/g/a/c$a;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/bumptech/glide/g/a/c$a;

    .prologue
    .line 14
    .local p0, "this":Lcom/bumptech/glide/g/a/b;, "Lcom/bumptech/glide/g/a/b<TT;>;"
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/g/a/b;->a(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/g/a/c$a;)Z

    move-result v0

    return v0
.end method

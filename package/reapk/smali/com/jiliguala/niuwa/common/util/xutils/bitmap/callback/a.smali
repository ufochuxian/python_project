.class public abstract Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a<TT;>;"
    .local p1, "container":Landroid/view/View;, "TT;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/b;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/b;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/b;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    .end local p1    # "container":Landroid/view/View;, "TT;"
    :goto_0
    return-object v0

    .line 103
    .restart local p1    # "container":Landroid/view/View;, "TT;"
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 104
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "container":Landroid/view/View;, "TT;"
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 106
    .restart local p1    # "container":Landroid/view/View;, "TT;"
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a<TT;>;"
    .local p1, "container":Landroid/view/View;, "TT;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/b;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/b;

    invoke-interface {v0, p1, p2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/b;->a(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 88
    .end local p1    # "container":Landroid/view/View;, "TT;"
    :goto_0
    return-void

    .line 83
    .restart local p1    # "container":Landroid/view/View;, "TT;"
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 84
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "container":Landroid/view/View;, "TT;"
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 86
    .restart local p1    # "container":Landroid/view/View;, "TT;"
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a<TT;>;"
    .local p1, "container":Landroid/view/View;, "TT;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/b;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/b;

    invoke-interface {v0, p1, p2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/b;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 98
    .end local p1    # "container":Landroid/view/View;, "TT;"
    :goto_0
    return-void

    .line 93
    .restart local p1    # "container":Landroid/view/View;, "TT;"
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 94
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "container":Landroid/view/View;, "TT;"
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 96
    .restart local p1    # "container":Landroid/view/View;, "TT;"
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public abstract a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/BitmapLoadFrom;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;",
            "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/BitmapLoadFrom;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;)V
    .locals 0
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a<TT;>;"
    .local p1, "container":Landroid/view/View;, "TT;"
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;JJ)V
    .locals 0
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;
    .param p4, "total"    # J
    .param p6, "current"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;",
            "JJ)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a<TT;>;"
    .local p1, "container":Landroid/view/View;, "TT;"
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a<TT;>;"
    .local p1, "bitmapSetter":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/b;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/b<TT;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/b;

    .line 78
    return-void
.end method

.method public b(Landroid/view/View;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;)V
    .locals 0
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/callback/a<TT;>;"
    .local p1, "container":Landroid/view/View;, "TT;"
    return-void
.end method

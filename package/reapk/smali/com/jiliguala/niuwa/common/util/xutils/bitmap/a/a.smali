.class public Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/graphics/drawable/Drawable;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/common/util/xutils/a$a",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/jiliguala/niuwa/common/util/xutils/a$a;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/jiliguala/niuwa/common/util/xutils/a$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    .local p2, "bitmapWorkerTask":Lcom/jiliguala/niuwa/common/util/xutils/a$a;, "Lcom/jiliguala/niuwa/common/util/xutils/a$a<TT;>;"
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    if-nez p2, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmapWorkerTask may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->a:Ljava/lang/ref/WeakReference;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Lcom/jiliguala/niuwa/common/util/xutils/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jiliguala/niuwa/common/util/xutils/a$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/util/xutils/a$a;

    return-object v0
.end method

.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 137
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 40
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 43
    :cond_0
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    goto :goto_0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 201
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 156
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 176
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 186
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 181
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/16 v0, 0x7f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 191
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 151
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    goto :goto_0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 166
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    goto :goto_0
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 109
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 196
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .prologue
    .line 113
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 116
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 47
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 50
    :cond_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 66
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    :cond_0
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 73
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 76
    :cond_0
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .param p1, "configs"    # I

    .prologue
    .line 85
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 88
    :cond_0
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 127
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 130
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 54
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 57
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 92
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 95
    :cond_0
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 99
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 102
    :cond_0
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 146
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 161
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 120
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;, "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 123
    :cond_0
    return-void
.end method

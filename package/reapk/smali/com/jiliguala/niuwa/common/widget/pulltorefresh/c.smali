.class public Lcom/jiliguala/niuwa/common/widget/pulltorefresh/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;


# instance fields
.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/c;->a:Ljava/util/HashSet;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    .prologue
    .line 27
    if-eqz p1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/c;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_0
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 34
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/c;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    .line 35
    .local v0, "layout":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 37
    .end local v0    # "layout":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    :cond_0
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 41
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/c;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    .line 42
    .local v0, "layout":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 44
    .end local v0    # "layout":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    :cond_0
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/c;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    .line 56
    .local v0, "layout":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 58
    .end local v0    # "layout":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    :cond_0
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/c;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    .line 49
    .local v0, "layout":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 51
    .end local v0    # "layout":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    :cond_0
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/c;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    .line 63
    .local v0, "layout":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setReleaseLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    .end local v0    # "layout":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    :cond_0
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 3
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/c;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;

    .line 69
    .local v0, "layout":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;->setTextTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 71
    .end local v0    # "layout":Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    :cond_0
    return-void
.end method

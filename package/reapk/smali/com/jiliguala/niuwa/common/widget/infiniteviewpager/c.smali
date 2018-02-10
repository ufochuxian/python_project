.class public final Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Landroid/view/ViewGroup;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c<TT;>;"
    .local p2, "indicator":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->b:Landroid/view/ViewGroup;

    .line 39
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->a:Ljava/lang/Object;

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 41
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->c:Ljava/util/List;

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 44
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c<TT;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 71
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c<TT;>;"
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->c(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c<TT;>;"
    .local p1, "indicator":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->a:Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public b(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 76
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 67
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->f()V

    .line 68
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    return-void
.end method

.method public d()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->a:Ljava/lang/Object;

    return-object v0
.end method

.class public Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field private af:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private ah:Landroid/support/v7/widget/RecyclerView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->af:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->ag:Ljava/util/ArrayList;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->af:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->ag:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->af:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->ag:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public p(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->af:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->af:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->ah:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->ah:Landroid/support/v7/widget/RecyclerView$a;

    instance-of v0, v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->af:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->ag:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->ah:Landroid/support/v7/widget/RecyclerView$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v7/widget/RecyclerView$a;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->ah:Landroid/support/v7/widget/RecyclerView$a;

    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->ah:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->notifyDataSetChanged()V

    .line 39
    :cond_0
    return-void
.end method

.method public q(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->ag:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->ag:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->ah:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->ah:Landroid/support/v7/widget/RecyclerView$a;

    instance-of v0, v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->af:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->ag:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->ah:Landroid/support/v7/widget/RecyclerView$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v7/widget/RecyclerView$a;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->ah:Landroid/support/v7/widget/RecyclerView$a;

    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->ah:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->notifyDataSetChanged()V

    .line 50
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 3
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$a;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->af:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->ag:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 61
    :goto_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->ah:Landroid/support/v7/widget/RecyclerView$a;

    .line 62
    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->af:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/WrapRecyclerView;->ag:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v7/widget/RecyclerView$a;)V

    .line 59
    .end local p1    # "adapter":Landroid/support/v7/widget/RecyclerView$a;
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$a;
    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    move-object p1, v0

    .end local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$a;
    .restart local p1    # "adapter":Landroid/support/v7/widget/RecyclerView$a;
    goto :goto_0
.end method

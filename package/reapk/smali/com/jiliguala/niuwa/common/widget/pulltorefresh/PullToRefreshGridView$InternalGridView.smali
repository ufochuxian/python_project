.class Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshGridView$InternalGridView;
.super Landroid/widget/GridView;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalGridView"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshGridView;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshGridView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshGridView$InternalGridView;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshGridView;

    .line 67
    invoke-direct {p0, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method


# virtual methods
.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshGridView$InternalGridView;->a:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshGridView;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshGridView;->setEmptyView(Landroid/view/View;)V

    .line 73
    return-void
.end method

.method public setEmptyViewInternal(Landroid/view/View;)V
    .locals 0
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 78
    return-void
.end method

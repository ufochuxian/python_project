.class public Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshGridView;
.super Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshGridView$InternalGridViewSDK9;,
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshGridView$InternalGridView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase",
        "<",
        "Landroid/widget/GridView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "style"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshGridView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 54
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshGridView$InternalGridViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshGridView$InternalGridViewSDK9;-><init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    .local v0, "gv":Landroid/widget/GridView;
    :goto_0
    const v1, 0x7f090243

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setId(I)V

    .line 61
    return-object v0

    .line 56
    .end local v0    # "gv":Landroid/widget/GridView;
    :cond_0
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshGridView$InternalGridView;

    invoke-direct {v0, p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshGridView$InternalGridView;-><init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "gv":Landroid/widget/GridView;
    goto :goto_0
.end method

.method public final getPullToRefreshScrollDirection()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;

    return-object v0
.end method

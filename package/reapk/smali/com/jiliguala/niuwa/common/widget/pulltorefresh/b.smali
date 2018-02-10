.class public interface abstract Lcom/jiliguala/niuwa/common/widget/pulltorefresh/b;
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


# virtual methods
.method public abstract a(ZZ)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;
.end method

.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public abstract getCurrentMode()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;
.end method

.method public abstract getFilterTouchEvents()Z
.end method

.method public abstract getLoadingLayoutProxy()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/a;
.end method

.method public abstract getMode()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;
.end method

.method public abstract getRefreshableView()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getShowViewWhileRefreshing()Z
.end method

.method public abstract getState()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$State;
.end method

.method public abstract setFilterTouchEvents(Z)V
.end method

.method public abstract setMode(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V
.end method

.method public abstract setOnPullEventListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$b;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$b",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setOnRefreshListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setOnRefreshListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$d;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$d",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setPullToRefreshOverScrollEnabled(Z)V
.end method

.method public abstract setRefreshing(Z)V
.end method

.method public abstract setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
.end method

.method public abstract setScrollingWhileRefreshingEnabled(Z)V
.end method

.method public abstract setShowViewWhileRefreshing(Z)V
.end method

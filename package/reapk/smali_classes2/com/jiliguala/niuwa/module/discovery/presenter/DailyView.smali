.class public interface abstract Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getSubscriptions()Lrx/i/b;
.end method

.method public abstract onLoadMoreFailed()V
.end method

.method public abstract onLoadMoreSuccess(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onLoadingMore()V
.end method

.method public abstract onRefreshNewFailed()V
.end method

.method public abstract onRefreshNewSuccess(Ljava/util/ArrayList;Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRefreshingNew()V
.end method

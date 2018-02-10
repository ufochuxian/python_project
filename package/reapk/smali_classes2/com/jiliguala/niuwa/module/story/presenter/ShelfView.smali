.class public interface abstract Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getSubscriptions()Lrx/i/b;
.end method

.method public abstract onLoadMoreFail()V
.end method

.method public abstract onLoadMoreSuccess(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent$DataPart;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRefreshNewFail()V
.end method

.method public abstract onRefreshNewSuccess(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent$DataPart;",
            ">;)V"
        }
    .end annotation
.end method

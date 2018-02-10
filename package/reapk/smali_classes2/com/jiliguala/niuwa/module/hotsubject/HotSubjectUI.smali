.class public interface abstract Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/base/e;


# virtual methods
.method public abstract addListHeaderView()V
.end method

.method public abstract getChannelID()Ljava/lang/String;
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

.method public abstract onRefreshNewFailed()V
.end method

.method public abstract onRefreshNewSuccess(Ljava/util/ArrayList;)V
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

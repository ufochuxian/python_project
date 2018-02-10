.class public interface abstract Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract apkDownloadComplete(Ljava/lang/String;)V
.end method

.method public abstract apkDownloadFailed()V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getSubscriptions()Lrx/i/b;
.end method

.method public abstract handleUpdate(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract hideRedDot()V
.end method

.method public abstract newStart()V
.end method

.method public abstract normalStart()V
.end method

.method public abstract onDataMigration()V
.end method

.method public abstract onFinishMigration()V
.end method

.method public abstract onFinishUserMigration()V
.end method

.method public abstract reportSubscribeDataToServerSuccess()V
.end method

.method public abstract setYouzanSharePrefix(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showApkDownloadProgress()V
.end method

.method public abstract showRecommendRedDot(Z)V
.end method

.method public abstract showRedDot()V
.end method

.method public abstract showTreasure(Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;)V
.end method

.method public abstract updateApkDownloadProgress(I)V
.end method

.method public abstract updateStart()V
.end method

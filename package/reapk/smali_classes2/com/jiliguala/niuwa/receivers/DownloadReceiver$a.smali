.class public interface abstract Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/receivers/DownloadReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract onDownloadTaskAdded(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onDownloadTaskComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onDownloadTaskError(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract onDownloadTaskProgress(Ljava/lang/String;Ljava/lang/String;IJ)V
.end method

.method public abstract onDownloadTaskStop(Ljava/lang/String;Ljava/lang/String;I)V
.end method

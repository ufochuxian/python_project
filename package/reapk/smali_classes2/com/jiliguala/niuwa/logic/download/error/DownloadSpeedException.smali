.class public Lcom/jiliguala/niuwa/logic/download/error/DownloadSpeedException;
.super Lcom/jiliguala/niuwa/logic/download/error/DownloadException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/download/error/DownloadException;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.class public Lcom/jiliguala/niuwa/logic/download/error/NoMemoryException;
.super Lcom/jiliguala/niuwa/logic/download/error/DownloadException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/download/error/DownloadException;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

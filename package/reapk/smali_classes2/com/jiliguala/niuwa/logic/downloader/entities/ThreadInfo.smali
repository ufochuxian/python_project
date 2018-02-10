.class public Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;
.super Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public end:I

.field public id:Ljava/lang/String;

.field public start:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "dlLocalFile"    # Ljava/io/File;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "realUrl"    # Ljava/lang/String;
    .param p4, "start"    # I
    .param p5, "end"    # I
    .param p6, "id"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iput p4, p0, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->start:I

    .line 20
    iput p5, p0, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->end:I

    .line 21
    iput-object p6, p0, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;->id:Ljava/lang/String;

    .line 22
    return-void
.end method

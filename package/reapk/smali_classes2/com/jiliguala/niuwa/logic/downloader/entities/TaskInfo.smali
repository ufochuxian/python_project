.class public Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;
.super Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public length:I

.field public progress:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "dlLocalFile"    # Ljava/io/File;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "realUrl"    # Ljava/lang/String;
    .param p4, "progress"    # I
    .param p5, "length"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iput p4, p0, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->progress:I

    .line 19
    iput p5, p0, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;->length:I

    .line 20
    return-void
.end method

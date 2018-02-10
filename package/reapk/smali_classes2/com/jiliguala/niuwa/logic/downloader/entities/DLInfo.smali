.class public Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public baseUrl:Ljava/lang/String;

.field public dlLocalFile:Ljava/io/File;

.field public realUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "dlLocalFile"    # Ljava/io/File;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "realUrl"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;->dlLocalFile:Ljava/io/File;

    .line 17
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;->baseUrl:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;->realUrl:Ljava/lang/String;

    .line 19
    return-void
.end method

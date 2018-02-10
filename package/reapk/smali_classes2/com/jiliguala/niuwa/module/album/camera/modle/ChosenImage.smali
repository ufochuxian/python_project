.class public Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;
.super Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenMedia;
.source "SourceFile"


# instance fields
.field private filePathOriginal:Ljava/lang/String;

.field private fileThumbnail:Ljava/lang/String;

.field private fileThumbnailSmall:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->filePathOriginal:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilePathOriginal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->filePathOriginal:Ljava/lang/String;

    return-object v0
.end method

.method public getFileThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->fileThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getFileThumbnailSmall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->fileThumbnailSmall:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->filePathOriginal:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->getHeight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->filePathOriginal:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->getWidth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFilePathOriginal(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePathOriginal"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->filePathOriginal:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setFileThumbnail(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileThumbnail"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->fileThumbnail:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setFileThumbnailSmall(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileThumbnailSmall"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->fileThumbnailSmall:Ljava/lang/String;

    .line 48
    return-void
.end method

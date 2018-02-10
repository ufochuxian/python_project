.class public Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;
.super Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageProcessorThread"


# instance fields
.field private listener:Lcom/jiliguala/niuwa/module/album/camera/IProcessorListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "foldername"    # Ljava/lang/String;
    .param p3, "shouldCreateThumbnails"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/album/camera/threads/MediaProcessorThread;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 39
    const-string v0, "jpg"

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->setMediaExtension(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private processImage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 76
    const-string v0, "PREFS_KEY_PIC_PATH"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    const-string v1, "content:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->getAbsoluteImagePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->listener:Lcom/jiliguala/niuwa/module/album/camera/IProcessorListener;

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->listener:Lcom/jiliguala/niuwa/module/album/camera/IProcessorListener;

    const-string v1, "Couldn\'t process a null file"

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/album/camera/IProcessorListener;->onError(Ljava/lang/String;)V

    .line 97
    :cond_3
    :goto_0
    return-void

    .line 86
    :cond_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->downloadAndProcess(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    const-string v1, "content://com.google.android.gallery3d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    const-string v1, "content://com.microsoft.skydrive.content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 89
    :cond_6
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    const-string v1, ".jpg"

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->processPicasaMedia(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_7
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    const-string v1, "content://com.google.android.apps.photos.content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    const-string v1, "content://com.android.providers.media.documents"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    const-string v1, "content://com.google.android.apps.docs.storage"

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 93
    :cond_8
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    const-string v1, ".jpg"

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->processGooglePhotosMedia(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_9
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->process()V

    goto :goto_0
.end method


# virtual methods
.method protected process()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->shouldCreateThumnails:Z

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->createThumbnails(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "thumbnails":[Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->processingDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .end local v0    # "thumbnails":[Ljava/lang/String;
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->filePath:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->processingDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected processingDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "original"    # Ljava/lang/String;
    .param p2, "thumbnail"    # Ljava/lang/String;
    .param p3, "thunbnailSmall"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->listener:Lcom/jiliguala/niuwa/module/album/camera/IProcessorListener;

    if-eqz v1, :cond_0

    .line 113
    new-instance v0, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;-><init>()V

    .line 114
    .local v0, "image":Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->setFilePathOriginal(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p2}, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->setFileThumbnail(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, p3}, Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;->setFileThumbnailSmall(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->listener:Lcom/jiliguala/niuwa/module/album/camera/IProcessorListener;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/album/camera/IProcessorListener;->onProcessedImage(Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;)V

    .line 119
    .end local v0    # "image":Lcom/jiliguala/niuwa/module/album/camera/modle/ChosenImage;
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 53
    :try_start_0
    const-string v1, "jpg"

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->manageDiretoryCache(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->processImage()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 57
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->listener:Lcom/jiliguala/niuwa/module/album/camera/IProcessorListener;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->listener:Lcom/jiliguala/niuwa/module/album/camera/IProcessorListener;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/album/camera/IProcessorListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->listener:Lcom/jiliguala/niuwa/module/album/camera/IProcessorListener;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->listener:Lcom/jiliguala/niuwa/module/album/camera/IProcessorListener;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/album/camera/IProcessorListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->context:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public setListener(Lcom/jiliguala/niuwa/module/album/camera/IProcessorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/album/camera/IProcessorListener;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/camera/threads/ImageProcessorThread;->listener:Lcom/jiliguala/niuwa/module/album/camera/IProcessorListener;

    .line 44
    return-void
.end method

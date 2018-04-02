.class public Lcom/jiliguala/niuwa/module/game/DownloadGameResView;
.super Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method


# virtual methods
.method protected doAfterFinishedUnzipDownloadRes()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->mHasFinishUnZipFile:Z

    .line 44
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/e;

    const/16 v2, 0x1028

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/e;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public getDownloadSaveFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jiliguala/niuwa/module/game/GameActivity;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->mSaveDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "downloadFile":Ljava/io/File;
    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/jiliguala/niuwa/module/game/GameActivity;->PATH_PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveFileDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jiliguala/niuwa/module/game/GameActivity;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->mSaveDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSuccessTextFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jiliguala/niuwa/module/game/GameActivity;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->mSaveDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/success.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "zipFile":Ljava/io/File;
    return-object v0
.end method

.method public onUnZipSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->mSaveDir:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->mHasFinishUnZipFile:Z

    .line 52
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/y;->a()Lcom/jiliguala/niuwa/common/util/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/y;->c()Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    move-result-object v0

    .line 53
    .local v0, "activity":Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;
    if-eqz v0, :cond_0

    .line 54
    const-string v1, "[DownloadGameResView],onUnZipSuccess"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->startServer(Ljava/lang/String;)V

    .line 59
    .end local v0    # "activity":Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;
    :cond_0
    return-void
.end method

.method protected realDownload()V
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->showDownloadProgress()V

    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->mPrepareInteractResViewCtrlr:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->mCurrentDownloadUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->mSaveDir:Ljava/lang/String;

    sget-object v3, Lcom/jiliguala/niuwa/module/game/GameActivity;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->downloadInteractLessonResources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method protected reportDownloadFail()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Type"

    const-string v2, "game"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Download Fail"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 96
    return-void
.end method

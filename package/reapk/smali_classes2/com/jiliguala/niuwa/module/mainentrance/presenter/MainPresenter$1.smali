.class Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$1;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadTaskAdded(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I

    .prologue
    .line 73
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$1;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$000(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$1;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$000(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;->showApkDownloadProgress()V

    .line 77
    :cond_0
    return-void
.end method

.method public onDownloadTaskComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "full_path"    # Ljava/lang/String;
    .param p4, "download_type"    # I

    .prologue
    .line 81
    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$1;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$000(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$1;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$000(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;->apkDownloadComplete(Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const/4 v0, 0x4

    if-ne p4, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$1;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$100(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDownloadTaskError(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I
    .param p4, "errorCode"    # I

    .prologue
    .line 99
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$1;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$000(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$1;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$000(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;->apkDownloadFailed()V

    .line 103
    :cond_0
    return-void
.end method

.method public onDownloadTaskProgress(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I
    .param p4, "progress"    # J

    .prologue
    .line 91
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$1;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$000(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$1;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$000(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    move-result-object v0

    long-to-int v1, p4

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;->updateApkDownloadProgress(I)V

    .line 95
    :cond_0
    return-void
.end method

.method public onDownloadTaskStop(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I

    .prologue
    .line 108
    return-void
.end method

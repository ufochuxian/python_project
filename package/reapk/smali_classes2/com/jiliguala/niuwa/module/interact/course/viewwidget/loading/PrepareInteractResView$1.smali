.class Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->doAfterFinishedUnzipDownloadRes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$1;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNotOpenRecordPermission()V
    .locals 2

    .prologue
    .line 289
    const-string v0, "PREFS_KEY_HAS_OPEN_RECORD_PERMISSION"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Z)V

    .line 290
    return-void
.end method

.method public hasRecordPermission()V
    .locals 2

    .prologue
    .line 281
    const-string v0, "PREFS_KEY_HAS_OPEN_RECORD_PERMISSION"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Z)V

    .line 282
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$1;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$1;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;->isInteractCourseFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$1;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$1;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mSaveDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->doOnUnzipResSuccess(Ljava/lang/String;)V

    .line 285
    :cond_0
    return-void
.end method

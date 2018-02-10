.class Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/util/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->checkRecordPermission(Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;

.field final synthetic b:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr$1;->b:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr$1;->a:Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr$1;->b:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->access$000(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    move-result-object v0

    const-string v1, "\u5f53\u524d\u6709\u5f55\u97f3\u6743\u9650"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->updateNotifyText(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr$1;->a:Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr$1;->a:Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;->hasRecordPermission()V

    .line 65
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr$1;->a:Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr$1;->a:Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;->hasNotOpenRecordPermission()V

    .line 72
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f018e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 73
    return-void
.end method

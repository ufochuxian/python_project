.class Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->goToInteractCourseActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$4;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNotOpenRecordPermission()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$4;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->access$300(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 521
    const-string v0, "PREFS_KEY_HAS_OPEN_RECORD_PERMISSION"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Z)V

    .line 523
    return-void
.end method

.method public hasRecordPermission()V
    .locals 2

    .prologue
    .line 513
    const-string v0, "PREFS_KEY_HAS_OPEN_RECORD_PERMISSION"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Z)V

    .line 514
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$4;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getPrepareInteractResView()Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->startDownload()V

    .line 515
    return-void
.end method

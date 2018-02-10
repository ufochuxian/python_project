.class Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/interact/course/CheckPermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->onReceivedSuccessPayResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

.field final synthetic b:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$3;->b:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$3;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNotOpenRecordPermission()V
    .locals 2

    .prologue
    .line 495
    const-string v0, "PREFS_KEY_HAS_OPEN_RECORD_PERMISSION"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Z)V

    .line 497
    return-void
.end method

.method public hasRecordPermission()V
    .locals 2

    .prologue
    .line 489
    const-string v0, "PREFS_KEY_HAS_OPEN_RECORD_PERMISSION"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Z)V

    .line 490
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$3;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->startDownload()V

    .line 491
    return-void
.end method

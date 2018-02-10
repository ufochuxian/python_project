.class Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->showCourseFinishAnimDialog(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;->c:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;->a:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1022
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;->c:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$600(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1023
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;->c:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1024
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;->c:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->getFragmentMgr()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    move-result-object v0

    .line 1025
    .local v0, "courseFinishAnimDlg":Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->setShowProgress(Z)V

    .line 1026
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;->c:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->getFragmentMgr()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->show(Landroid/support/v4/app/ag;)V

    .line 1027
    new-instance v1, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2$1;-><init>(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->setIDismissListener(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;)V

    .line 1037
    .end local v0    # "courseFinishAnimDlg":Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;
    :cond_0
    return-void
.end method

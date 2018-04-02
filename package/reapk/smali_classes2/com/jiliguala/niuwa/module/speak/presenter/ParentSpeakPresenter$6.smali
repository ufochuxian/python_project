.class Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->showCourseFinishAnimDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$6;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 567
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$6;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$500(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 568
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$6;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$6;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->getFragmentMgr()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    move-result-object v0

    .line 570
    .local v0, "courseFinishAnimDlg":Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->setShowProgress(Z)V

    .line 571
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$6;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->getFragmentMgr()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->show(Landroid/support/v4/app/ag;)V

    .line 572
    new-instance v1, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$6$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$6$1;-><init>(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$6;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->setIDismissListener(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;)V

    .line 579
    .end local v0    # "courseFinishAnimDlg":Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;
    :cond_0
    return-void
.end method

.class Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->onSendProgressSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1035
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->access$200(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$b;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1036
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    move-result-object v0

    .line 1037
    .local v0, "courseFinishAnimDlg":Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->show(Landroid/support/v4/app/ag;)V

    .line 1038
    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->setIDismissListener(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;)V

    .line 1045
    return-void
.end method
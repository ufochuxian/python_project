.class Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->onExitInteractLesson()V
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
    .line 969
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$8;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 972
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 973
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$8;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 974
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$8;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->releaseResAndExit()V

    .line 975
    return-void
.end method

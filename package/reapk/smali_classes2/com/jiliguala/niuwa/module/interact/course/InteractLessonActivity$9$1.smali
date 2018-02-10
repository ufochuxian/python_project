.class Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9;

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9$1;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 4

    .prologue
    .line 1041
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/f;

    const/16 v2, 0x1023

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9$1;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->access$800(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/b/a/f;-><init>(ILcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 1042
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9$1;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$9;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->releaseResAndExit()V

    .line 1043
    return-void
.end method

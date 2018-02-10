.class Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->onSubCourseReportSucceed(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$4;->c:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$4;->a:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 309
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$4;->c:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->access$400(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 310
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$4;->c:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    move-result-object v0

    .line 311
    .local v0, "courseFinishAnimDlg":Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$4;->c:Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->show(Landroid/support/v4/app/ag;)V

    .line 312
    new-instance v1, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$4$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$4$1;-><init>(Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->setIDismissListener(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;)V

    .line 321
    return-void
.end method

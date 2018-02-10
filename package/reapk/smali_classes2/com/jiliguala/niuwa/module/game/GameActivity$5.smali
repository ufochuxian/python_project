.class Lcom/jiliguala/niuwa/module/game/GameActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/game/GameActivity;->onSendProgressSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/game/GameActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/game/GameActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/game/GameActivity;

    .prologue
    .line 770
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$5;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 773
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$5;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->access$400(Lcom/jiliguala/niuwa/module/game/GameActivity;)Lcom/jiliguala/niuwa/module/game/GameActivity$a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/module/game/GameActivity$a;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 774
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$5;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    move-result-object v0

    .line 775
    .local v0, "courseFinishAnimDlg":Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$5;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->show(Landroid/support/v4/app/ag;)V

    .line 776
    new-instance v1, Lcom/jiliguala/niuwa/module/game/GameActivity$5$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/game/GameActivity$5$1;-><init>(Lcom/jiliguala/niuwa/module/game/GameActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->setIDismissListener(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;)V

    .line 783
    return-void
.end method

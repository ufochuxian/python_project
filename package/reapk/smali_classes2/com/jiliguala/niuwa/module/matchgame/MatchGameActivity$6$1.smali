.class Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;->a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

.field final synthetic b:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1;->b:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1;->a:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 324
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1;->b:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->access$502(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;Z)Z

    .line 325
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1;->b:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->access$300(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1;->b:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;

    move-result-object v0

    .line 327
    .local v0, "courseFinishAnimDlg":Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1;->b:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->show(Landroid/support/v4/app/ag;)V

    .line 328
    new-instance v1, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1$1;-><init>(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg;->setIDismissListener(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;)V

    .line 337
    return-void
.end method

.class Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/unit/fragment/CourseFinishAnimDlg$IDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1$1;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 5

    .prologue
    .line 331
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1$1;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1;->b:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->onBackPressed()V

    .line 332
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/d;

    const/16 v2, 0x1012

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1$1;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1;->a:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1$1;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1;

    iget-object v4, v4, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1;->b:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;

    iget-object v4, v4, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    .line 334
    invoke-static {v4}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->access$600(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/jiliguala/niuwa/logic/b/a/d;-><init>(ILcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 335
    return-void
.end method
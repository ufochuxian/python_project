.class Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->showPop(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$5;->b:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    iput-boolean p2, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$5;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$5;->b:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->access$400(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$5;->a:Z

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$5;->b:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->access$400(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;->bingo()V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$5;->b:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->access$400(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;->wrongAnswer()V

    goto :goto_0
.end method

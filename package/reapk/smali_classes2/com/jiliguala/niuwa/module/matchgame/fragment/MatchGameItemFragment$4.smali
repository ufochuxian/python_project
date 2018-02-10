.class Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->showPop(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$4;->a:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$4;->a:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$4;->a:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->access$600(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 259
    :cond_0
    return-void
.end method

.class Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$3;->c:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$3;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$3;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$3;->c:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 174
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 176
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$3;->c:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->access$100(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$3;->c:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->access$100(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600f3

    .line 178
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 177
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 179
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$3;->c:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->access$200(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$3;->a:Landroid/widget/ImageView;

    const v3, 0x7f0802c0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 182
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$3;->c:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->access$300(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;

    move-result-object v2

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;->correct:Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$3;->b:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$3;->c:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->access$400(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;->bingo()V

    .line 185
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$3;->c:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->access$500(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)V

    .line 186
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$3;->b:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/a;->e(Landroid/view/View;)V

    .line 190
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$3;->c:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$3;->b:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->access$202(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;Landroid/view/View;)Landroid/view/View;

    .line 191
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$3;->c:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$3;->a:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->access$102(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;Landroid/view/View;)Landroid/view/View;

    .line 198
    .end local v1    # "tag":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-void

    .line 188
    .restart local v1    # "tag":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$3;->c:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->access$400(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;->wrongAnswer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

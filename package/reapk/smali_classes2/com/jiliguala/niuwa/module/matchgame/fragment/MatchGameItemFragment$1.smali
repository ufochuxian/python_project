.class Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;
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
    .line 55
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$1;->a:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    .line 58
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$1;->a:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->access$000(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getMeasuredHeight()I

    move-result v3

    .line 60
    .local v3, "height":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$1;->a:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->access$000(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getChildCount()I

    move-result v2

    .line 61
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 62
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$1;->a:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->access$000(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 64
    .local v1, "childLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    div-int/lit8 v5, v3, 0x2

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ac;->g()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$1;->a:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->access$000(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$1;->a:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    iget-object v6, v6, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->vog:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 72
    :goto_1
    return-void

    .line 70
    :cond_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$1;->a:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->access$000(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$1;->a:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    iget-object v6, v6, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->vog:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1
.end method

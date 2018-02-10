.class Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

.field final synthetic b:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic c:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;Landroid/widget/ImageView;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$2;->c:Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$2;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$2;->b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$2;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    .line 161
    .local v0, "faceHeight":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$2;->b:Landroid/widget/RelativeLayout$LayoutParams;

    neg-int v2, v0

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 162
    return-void
.end method

.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->initTextSwitcher(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 822
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$26;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    .line 825
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$26;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 826
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$26;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 827
    .local v0, "cdText":Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 828
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 829
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$26;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 832
    .end local v0    # "cdText":Landroid/widget/TextView;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$1;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$1;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment$1;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onBackPressed(Z)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x7f09001d
        :pswitch_0
    .end packed-switch
.end method

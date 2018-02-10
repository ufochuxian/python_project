.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$2;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$2;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$2;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->onBackPressed(Z)V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x7f09001d
        :pswitch_0
    .end packed-switch
.end method

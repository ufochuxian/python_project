.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$1;
.super Landroid/os/Handler;
.source "SourceFile"


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
    .line 72
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->access$000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->access$000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;->access$000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioChannelListFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
    .end packed-switch
.end method

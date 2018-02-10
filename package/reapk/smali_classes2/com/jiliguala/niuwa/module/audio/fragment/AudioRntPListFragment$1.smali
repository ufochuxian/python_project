.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 55
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x7f0900c4 -> :sswitch_0
        0x7f09011f -> :sswitch_0
    .end sparse-switch
.end method

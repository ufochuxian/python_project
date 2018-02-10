.class Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 72
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 69
    :sswitch_data_0
    .sparse-switch
        0x7f0900c4 -> :sswitch_0
        0x7f09011f -> :sswitch_0
    .end sparse-switch
.end method

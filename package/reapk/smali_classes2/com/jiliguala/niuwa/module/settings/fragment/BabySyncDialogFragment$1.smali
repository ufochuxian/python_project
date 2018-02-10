.class Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->dismissAllowingStateLoss()V

    .line 112
    return-void

    .line 55
    :sswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 58
    :sswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    .line 59
    .local v0, "pdf":Lcom/jiliguala/niuwa/common/a/g;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isHidden()Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    sget-object v3, Lcom/jiliguala/niuwa/common/util/b/a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->g()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/jiliguala/niuwa/logic/network/d;->a(Ljava/lang/String;I)Lrx/e;

    move-result-object v2

    .line 65
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 66
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 67
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1$1;

    invoke-direct {v3, p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1$1;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment$1;Lcom/jiliguala/niuwa/common/a/g;)V

    .line 68
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0

    .line 53
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900fa -> :sswitch_0
        0x7f090156 -> :sswitch_1
    .end sparse-switch
.end method

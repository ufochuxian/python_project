.class Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 119
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 87
    .restart local p1    # "v":Landroid/view/View;
    :sswitch_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "-user-"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->makeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 90
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-virtual {v5, v2}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->access$000(Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v5

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;

    move-result-object v1

    .line 97
    .local v1, "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->show(Landroid/support/v4/app/ag;)V

    goto :goto_0

    .line 102
    .end local v1    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;
    :sswitch_2
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 107
    :sswitch_3
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 108
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->access$100(Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;Landroid/app/Activity;I)V

    goto :goto_0

    .line 112
    :sswitch_4
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "clipboard"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 113
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "text":Ljava/lang/String;
    const-string v5, "text"

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/x;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    .line 115
    .local v3, "myClip":Landroid/content/ClipData;
    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 116
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    const v6, 0x7f0f008c

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090014 -> :sswitch_2
        0x7f0904c5 -> :sswitch_0
        0x7f0904c7 -> :sswitch_3
        0x7f0905d2 -> :sswitch_1
        0x7f0905d9 -> :sswitch_4
    .end sparse-switch
.end method

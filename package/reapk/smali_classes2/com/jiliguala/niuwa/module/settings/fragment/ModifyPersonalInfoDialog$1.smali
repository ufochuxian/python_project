.class Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 74
    :cond_0
    :goto_0
    :sswitch_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->dismissAllowingStateLoss()V

    .line 75
    return-void

    .line 45
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/settings/AvatarActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "key_avatar_type"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;

    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 50
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 53
    .local v0, "accountCenter":Lcom/jiliguala/niuwa/logic/login/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->I()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->access$000(Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;)V

    .line 55
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->n()Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForPhoneInfoCompletion(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 58
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;

    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 61
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->n()Z

    move-result v2

    if-nez v2, :cond_2

    .line 64
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0f0155

    const-string v4, "REGISTER_ADD_PERSONL_INFO"

    invoke-static {v2, v3, v4}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForPhoneRequiredStep(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 66
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;

    const/16 v3, 0x2329

    invoke-virtual {v2, v1, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 68
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;->access$000(Lcom/jiliguala/niuwa/module/settings/fragment/ModifyPersonalInfoDialog;)V

    goto :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x7f0900fc -> :sswitch_0
        0x7f09034b -> :sswitch_2
        0x7f09034e -> :sswitch_1
    .end sparse-switch
.end method

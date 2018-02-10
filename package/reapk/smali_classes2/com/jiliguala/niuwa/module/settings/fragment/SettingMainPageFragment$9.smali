.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/util/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$9;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 173
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$9;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForPhoneRequiredStep(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 174
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$9;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    const/16 v2, 0x200a

    invoke-virtual {v1, v0, v2}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 175
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$9;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V

    .line 180
    return-void
.end method

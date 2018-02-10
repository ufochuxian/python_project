.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->onClickModifyBaby(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;

    .prologue
    .line 1705
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b$1;->f:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 1708
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b$1;->f:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1709
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b$1;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b$1;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForBabyEdit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1710
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 1711
    const v1, 0x7f01001d

    const v2, 0x7f010013

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 1712
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 1717
    return-void
.end method

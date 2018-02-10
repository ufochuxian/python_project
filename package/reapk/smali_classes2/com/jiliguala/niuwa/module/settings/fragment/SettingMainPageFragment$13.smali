.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->initUI(Landroid/view/View;)V
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
    .line 525
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$13;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 528
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$13;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    if-eqz p2, :cond_1

    .line 530
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$13;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->c(Landroid/content/Context;)V

    .line 536
    :goto_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Push Permission"

    .line 537
    invoke-virtual {v0, v1, p2}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Z)V

    .line 538
    const-string v0, "PUSH_ENABLE"

    invoke-static {v0, p2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Z)V

    .line 540
    :cond_0
    return-void

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$13;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

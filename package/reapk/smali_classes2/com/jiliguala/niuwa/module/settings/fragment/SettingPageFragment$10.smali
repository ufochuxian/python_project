.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateChildListUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

.field final synthetic b:Lcom/makeramen/roundedimageview/RoundedImageView;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 998
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->e:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->a:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->b:Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object p4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->c:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1001
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->e:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1003
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->e:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->a:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$1902(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;)Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    .line 1004
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->e:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->b:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$2002(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Lcom/makeramen/roundedimageview/RoundedImageView;)Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 1005
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->e:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->c:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$2102(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1006
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->e:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->d:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$2202(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1007
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->e:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .line 1008
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 1007
    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;

    move-result-object v0

    .line 1009
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->a:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->a:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->nick:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->a:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->bd:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->a:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->ava:Ljava/lang/String;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->a:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->gender:Ljava/lang/String;

    .line 1010
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1009
    invoke-virtual/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1011
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->e:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$2300(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->setClickSwitchBabyListener(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$SwitchBabyClickedListener;)V

    .line 1012
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->e:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;->show(Landroid/support/v4/app/ag;)V

    .line 1013
    const-string v1, "NAME_BABY_FLOAT_HIDE"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Z)V

    .line 1014
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->e:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$2400(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1015
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;->e:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$2400(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1018
    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/BabySwitchDialog;
    :cond_0
    return-void
.end method

.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$SwitchBabyClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 1667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1668
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    .line 1669
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public onClickModifyBaby(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "nick"    # Ljava/lang/String;
    .param p3, "bd"    # Ljava/lang/String;
    .param p4, "ava"    # Ljava/lang/String;
    .param p5, "gender"    # Ljava/lang/String;

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/c;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/widget/c;

    move-result-object v7

    .line 1705
    .local v7, "safeModeFragment":Lcom/jiliguala/niuwa/common/widget/c;
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b$1;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/jiliguala/niuwa/common/widget/c;->a(Lcom/jiliguala/niuwa/common/widget/c$a;)V

    .line 1719
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/jiliguala/niuwa/common/widget/c;->b(Landroid/support/v4/app/ag;)V

    .line 1721
    .end local v7    # "safeModeFragment":Lcom/jiliguala/niuwa/common/widget/c;
    :cond_0
    return-void
.end method

.method public onClickSwitchBaby(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1673
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1674
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$4100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    .line 1676
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/login/a;->a(I)V

    .line 1677
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$2000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Lcom/makeramen/roundedimageview/RoundedImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1678
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$2000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Lcom/makeramen/roundedimageview/RoundedImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/makeramen/roundedimageview/RoundedImageView;->setSelected(Z)V

    .line 1680
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$4200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Lcom/makeramen/roundedimageview/RoundedImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1681
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$4200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Lcom/makeramen/roundedimageview/RoundedImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setSelected(Z)V

    .line 1682
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$2000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Lcom/makeramen/roundedimageview/RoundedImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$4202(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Lcom/makeramen/roundedimageview/RoundedImageView;)Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 1684
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$2100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1685
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$2100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1687
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$4300(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1688
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$4300(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1689
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$2100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$4302(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1691
    :cond_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$2200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1692
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$2200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1694
    :cond_5
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$4400(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1695
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$4400(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1696
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$2200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$4402(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1698
    :cond_6
    return-void
.end method

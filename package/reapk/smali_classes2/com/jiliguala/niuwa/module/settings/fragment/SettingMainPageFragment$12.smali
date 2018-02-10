.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$12;
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
    .line 512
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$12;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 515
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$12;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    const-string v0, "NONE_WIFI_NOTIFY_ENABLE"

    invoke-static {v0, p2}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Z)V

    .line 519
    :cond_0
    return-void
.end method

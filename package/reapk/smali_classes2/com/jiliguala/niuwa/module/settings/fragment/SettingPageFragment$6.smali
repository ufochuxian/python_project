.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateBindWeChat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 716
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$6;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 719
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$6;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$1800(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$6;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0, p2}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$1900(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Z)V

    .line 722
    :cond_0
    return-void
.end method

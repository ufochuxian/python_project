.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->showUserPwdModifyDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    .prologue
    .line 528
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$2;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$2;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->access$500(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 532
    return-void
.end method
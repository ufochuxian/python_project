.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->onSwitchChild()V
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
    .line 1333
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$15;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$15;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->access$3800(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1337
    return-void
.end method

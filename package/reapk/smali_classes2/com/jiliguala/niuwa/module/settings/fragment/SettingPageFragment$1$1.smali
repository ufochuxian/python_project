.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 202
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;

    iget-object v4, v4, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .local v2, "mStartActivity":Landroid/content/Intent;
    const v1, 0x1e240

    .line 204
    .local v1, "mPendingIntentId":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;

    iget-object v4, v4, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/high16 v5, 0x10000000

    invoke-static {v4, v1, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 208
    .local v0, "mPendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;

    iget-object v4, v4, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 209
    .local v3, "mgr":Landroid/app/AlarmManager;
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x64

    add-long/2addr v6, v8

    invoke-virtual {v3, v4, v6, v7, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 211
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 212
    return-void
.end method

.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->showDescDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$9;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$9;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$9;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 376
    return-void
.end method

.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->wechatCheckedChange(Z)V
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
    .line 750
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$7;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 753
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a/a;->a()Lcom/jiliguala/niuwa/logic/login/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a/a;->b()V

    .line 754
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 758
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v2, 0x1018

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 759
    return-void
.end method

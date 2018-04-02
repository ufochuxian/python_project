.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3;
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
    .line 534
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 538
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->access$500(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)Landroid/app/Dialog;

    move-result-object v2

    const v4, 0x7f090425

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 539
    .local v3, "pwd":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    const-string v1, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 590
    :goto_0
    return-void

    .line 547
    :cond_0
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .local v0, "entity":Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 549
    .local v8, "json":Ljava/lang/String;
    invoke-static {v8}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v7

    .line 551
    .local v7, "body":Lokhttp3/ab;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 552
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/jiliguala/niuwa/logic/network/d;->l(Lokhttp3/ab;)Lrx/e;

    move-result-object v2

    .line 553
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v2, v4}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 554
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v2, v4}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 555
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v4

    invoke-virtual {v2, v4}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v4, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3$1;

    invoke-direct {v4, p0, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3$1;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$3;Ljava/lang/String;)V

    .line 556
    invoke-virtual {v2, v4}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 551
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

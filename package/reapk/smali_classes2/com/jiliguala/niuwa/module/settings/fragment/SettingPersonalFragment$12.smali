.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->showNickDialog()V
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
    .line 456
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$12;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$12;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 460
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$12;->a:Landroid/app/Dialog;

    const v4, 0x7f090386

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "nick":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    const-string v2, "\u6635\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v2}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 505
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 467
    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 468
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    .local v0, "entity":Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 470
    .local v8, "json":Ljava/lang/String;
    invoke-static {v8}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v7

    .line 472
    .local v7, "body":Lokhttp3/ab;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$12;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v3

    .line 473
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v3

    invoke-interface {v3, v7}, Lcom/jiliguala/niuwa/logic/network/d;->l(Lokhttp3/ab;)Lrx/e;

    move-result-object v3

    .line 474
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v3

    .line 475
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v3

    .line 476
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$12$1;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$12$1;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$12;)V

    .line 477
    invoke-virtual {v3, v4}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v3

    .line 472
    invoke-virtual {v2, v3}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$10;
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
    .line 378
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$10;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$10;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 382
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$10;->a:Landroid/app/Dialog;

    const v3, 0x7f0901ae

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 387
    .local v6, "desc":Ljava/lang/String;
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .local v0, "entity":Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 389
    .local v8, "json":Ljava/lang/String;
    invoke-static {v8}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v7

    .line 391
    .local v7, "body":Lokhttp3/ab;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$10;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 392
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/jiliguala/niuwa/logic/network/d;->l(Lokhttp3/ab;)Lrx/e;

    move-result-object v2

    .line 393
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 394
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 395
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$10$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$10$1;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$10;)V

    .line 396
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 391
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 418
    return-void
.end method

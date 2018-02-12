.class Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/network/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->onNormalPicUpdate(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$7;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 0

    .prologue
    .line 552
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 557
    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 510
    move-object v5, p1

    .line 512
    .local v5, "bg":Ljava/lang/String;
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .local v0, "entity":Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 514
    .local v8, "json":Ljava/lang/String;
    invoke-static {v8}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v7

    .line 516
    .local v7, "body":Lokhttp3/ab;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$7;->a:Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 517
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/jiliguala/niuwa/logic/network/d;->l(Lokhttp3/ab;)Lrx/e;

    move-result-object v2

    .line 518
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 519
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 520
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$7$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$7$1;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/PersonalInfoFragment$7;)V

    .line 521
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 516
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 547
    return-void
.end method

.method public onSucceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sectionID"    # Ljava/lang/String;

    .prologue
    .line 562
    return-void
.end method

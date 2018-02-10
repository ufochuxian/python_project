.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/network/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->onUserAvatarUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$4;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$4;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->access$900(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$4;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->access$900(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 654
    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 659
    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 608
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$4;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$4;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->access$800(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;)Lcom/jiliguala/niuwa/common/widget/CircleImageView;

    move-result-object v4

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v5

    .line 609
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/e/a;->f()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v5

    .line 608
    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 611
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;

    move-object v2, p1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .local v0, "entity":Lcom/jiliguala/niuwa/logic/network/http/entity/UserEntity;
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 613
    .local v8, "json":Ljava/lang/String;
    invoke-static {v8}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v7

    .line 615
    .local v7, "body":Lokhttp3/ab;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$4;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 616
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/jiliguala/niuwa/logic/network/d;->l(Lokhttp3/ab;)Lrx/e;

    move-result-object v2

    .line 617
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 618
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 619
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$4$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$4$1;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment$4;)V

    .line 620
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 615
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 647
    return-void
.end method

.method public onSucceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sectionID"    # Ljava/lang/String;

    .prologue
    .line 664
    return-void
.end method

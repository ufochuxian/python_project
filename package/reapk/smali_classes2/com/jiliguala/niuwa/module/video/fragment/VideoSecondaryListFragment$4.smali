.class Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 214
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const-string v0, "0"

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_2

    .line 219
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$500(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$500(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$100(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 262
    :cond_2
    :goto_0
    return-void

    .line 225
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 226
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    .line 227
    invoke-static {v3}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$200(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/jiliguala/niuwa/logic/network/d;->d(Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 228
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 229
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 230
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4$1;-><init>(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;)V

    .line 231
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 225
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 258
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$1100(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$1100(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$1100(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->isHidden()Z

    move-result v1

    if-nez v1, :cond_2

    .line 259
    :cond_4
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->access$1100(Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment$4;->a:Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/video/fragment/VideoSecondaryListFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 267
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 209
    return-void
.end method

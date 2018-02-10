.class Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->access$000(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->access$000(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;->requestServer(Ljava/lang/String;)V

    .line 225
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 230
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 217
    return-void
.end method

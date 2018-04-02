.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->doLoveScaleAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 10
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v5, 0x1

    const v2, 0x3fa66666    # 1.3f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 1046
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-static {v9, v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1902(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 1047
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1900(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1048
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1900(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 1049
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1900(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1050
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1300(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1900(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1051
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1056
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$3;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080112

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1042
    return-void
.end method

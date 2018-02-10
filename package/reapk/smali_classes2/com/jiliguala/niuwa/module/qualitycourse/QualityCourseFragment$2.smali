.class Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment$2;->a:Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment$2;->a:Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;->requestServer()V

    .line 160
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 165
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 154
    return-void
.end method

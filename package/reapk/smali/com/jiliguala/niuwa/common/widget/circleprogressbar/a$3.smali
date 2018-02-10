.class Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

.field final synthetic b:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$3;->b:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    iput-object p2, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$3;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 368
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$3;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->l()V

    .line 373
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$3;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->a()V

    .line 374
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$3;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$3;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->b(F)V

    .line 375
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$3;->b:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->f:Z

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$3;->b:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    iput-boolean v2, v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->f:Z

    .line 379
    const-wide/16 v0, 0x535

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 380
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$3;->a:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$c;->a(Z)V

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$3;->b:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$3;->b:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->a(Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->a(Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;F)F

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a$3;->b:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;->a(Lcom/jiliguala/niuwa/common/widget/circleprogressbar/a;F)F

    .line 363
    return-void
.end method

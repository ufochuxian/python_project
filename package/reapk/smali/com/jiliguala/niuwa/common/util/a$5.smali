.class final Lcom/jiliguala/niuwa/common/util/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/util/a;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/a$5;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/jiliguala/niuwa/common/util/a$5;->b:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/a$5;->a:Landroid/view/View;

    new-instance v1, Lcom/jiliguala/niuwa/common/util/a$5$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/common/util/a$5$1;-><init>(Lcom/jiliguala/niuwa/common/util/a$5;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/a$5;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 183
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/a$5;->b:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 184
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 189
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 172
    return-void
.end method

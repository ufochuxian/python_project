.class Lcom/blog/www/guideview/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blog/www/guideview/f;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/blog/www/guideview/f;


# direct methods
.method constructor <init>(Lcom/blog/www/guideview/f;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/blog/www/guideview/f;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/blog/www/guideview/f$2;->b:Lcom/blog/www/guideview/f;

    iput-object p2, p0, Lcom/blog/www/guideview/f$2;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/blog/www/guideview/f$2;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/blog/www/guideview/f$2;->b:Lcom/blog/www/guideview/f;

    invoke-static {v1}, Lcom/blog/www/guideview/f;->b(Lcom/blog/www/guideview/f;)Lcom/blog/www/guideview/MaskView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/blog/www/guideview/f$2;->b:Lcom/blog/www/guideview/f;

    invoke-static {v0}, Lcom/blog/www/guideview/f;->a(Lcom/blog/www/guideview/f;)Lcom/blog/www/guideview/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/blog/www/guideview/f$2;->b:Lcom/blog/www/guideview/f;

    invoke-static {v0}, Lcom/blog/www/guideview/f;->a(Lcom/blog/www/guideview/f;)Lcom/blog/www/guideview/g$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/blog/www/guideview/g$a;->b()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/blog/www/guideview/f$2;->b:Lcom/blog/www/guideview/f;

    invoke-static {v0}, Lcom/blog/www/guideview/f;->c(Lcom/blog/www/guideview/f;)V

    .line 129
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 133
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 121
    return-void
.end method

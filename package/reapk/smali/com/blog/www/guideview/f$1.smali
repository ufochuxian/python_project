.class Lcom/blog/www/guideview/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blog/www/guideview/f;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/blog/www/guideview/f;


# direct methods
.method constructor <init>(Lcom/blog/www/guideview/f;)V
    .locals 0
    .param p1, "this$0"    # Lcom/blog/www/guideview/f;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/blog/www/guideview/f$1;->a:Lcom/blog/www/guideview/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/blog/www/guideview/f$1;->a:Lcom/blog/www/guideview/f;

    invoke-static {v0}, Lcom/blog/www/guideview/f;->a(Lcom/blog/www/guideview/f;)Lcom/blog/www/guideview/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/blog/www/guideview/f$1;->a:Lcom/blog/www/guideview/f;

    invoke-static {v0}, Lcom/blog/www/guideview/f;->a(Lcom/blog/www/guideview/f;)Lcom/blog/www/guideview/g$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/blog/www/guideview/g$a;->a()V

    .line 84
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 88
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 78
    return-void
.end method

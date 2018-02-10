.class Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/animation/Animation;

.field final synthetic b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    iput-object p2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout$1;->a:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout$1;->a:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;)Landroid/view/animation/Animation;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->b(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->setVisibility(I)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout$1;->a:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->c(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;)Landroid/view/animation/Animation;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->setVisibility(I)V

    goto :goto_0
.end method

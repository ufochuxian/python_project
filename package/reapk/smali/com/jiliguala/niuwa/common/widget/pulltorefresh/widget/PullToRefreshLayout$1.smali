.class Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    iput p2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 243
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->b(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$d;->d(Landroid/view/View;I)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->c(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->d(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 248
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->d(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :cond_1
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;->a:I

    packed-switch v0, :pswitch_data_0

    .line 262
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->c(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->e(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->f(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0192

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 265
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->e(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08034d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 269
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    iget v0, v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 271
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$e;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$e;-><init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v4, v2, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$e;->sendEmptyMessageDelayed(IJ)Z

    .line 276
    :goto_1
    return-void

    .line 253
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->c(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->e(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->f(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0193

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 256
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->e(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08034e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;I)V

    .line 274
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout$1;->b:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;->g(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullToRefreshLayout;)V

    goto :goto_1

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

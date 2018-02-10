.class Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setVisibility(I)V

    .line 189
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 155
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 156
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-static {v7, p3}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->access$202(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 158
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 159
    .local v2, "bmp_w":I
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 161
    .local v0, "bmp_h":I
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7, v8, v8}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 162
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    .line 163
    .local v4, "parent_h":I
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    .line 167
    .local v5, "parent_w":I
    int-to-float v7, v5

    int-to-float v8, v4

    div-float v3, v7, v8

    .line 168
    .local v3, "display_ratio":F
    int-to-float v7, v2

    int-to-float v8, v0

    div-float v1, v7, v8

    .line 170
    .local v1, "bmp_ratio":F
    cmpl-float v7, v1, v3

    if-lez v7, :cond_1

    .line 171
    move v2, v5

    .line 172
    int-to-float v7, v2

    div-float/2addr v7, v1

    float-to-int v0, v7

    .line 177
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 178
    .local v6, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 179
    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 180
    invoke-virtual {p2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setVisibility(I)V

    .line 184
    .end local v0    # "bmp_h":I
    .end local v1    # "bmp_ratio":F
    .end local v2    # "bmp_w":I
    .end local v3    # "display_ratio":F
    .end local v4    # "parent_h":I
    .end local v5    # "parent_w":I
    .end local v6    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 174
    .restart local v0    # "bmp_h":I
    .restart local v1    # "bmp_ratio":F
    .restart local v2    # "bmp_w":I
    .restart local v3    # "display_ratio":F
    .restart local v4    # "parent_h":I
    .restart local v5    # "parent_w":I
    :cond_1
    move v0, v4

    .line 175
    int-to-float v7, v0

    mul-float/2addr v7, v1

    float-to-int v2, v7

    goto :goto_0
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setVisibility(I)V

    .line 151
    :cond_0
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->access$300(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)V

    .line 144
    return-void
.end method

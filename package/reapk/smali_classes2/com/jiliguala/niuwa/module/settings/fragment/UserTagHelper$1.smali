.class Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 110
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 87
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 88
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 89
    .local v0, "height":I
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 91
    .local v5, "width":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;

    iget v1, v6, Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;->tag_height:I

    .line 92
    .local v1, "im_h":I
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 94
    .local v2, "im_w":I
    int-to-float v6, v5

    int-to-float v7, v0

    div-float/2addr v6, v7

    int-to-float v7, v1

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 97
    instance-of v6, p2, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    move-object v3, p2

    .line 98
    check-cast v3, Landroid/widget/ImageView;

    .line 99
    .local v3, "iv":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 100
    .local v4, "rl":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 101
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 102
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    .end local v0    # "height":I
    .end local v1    # "im_h":I
    .end local v2    # "im_w":I
    .end local v3    # "iv":Landroid/widget/ImageView;
    .end local v4    # "rl":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "width":I
    :cond_0
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 83
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 78
    return-void
.end method

.class Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 61
    .local v0, "factor":F
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;->access$200(Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;->access$000(Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;->access$100(Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 62
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;->access$200(Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 63
    const/4 v1, 0x1

    return v1
.end method

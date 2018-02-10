.class Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
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
    .line 67
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView$2;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView$2;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;->access$200(Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView$2;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;->access$000(Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView$2;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;->access$100(Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView$2;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView$2;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;->access$200(Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/view/GestureImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.class Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;
.super Landroid/support/v4/widget/ap$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

.field private final b:Ljava/lang/String;

.field private c:I


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)V
    .locals 1

    .prologue
    .line 352
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-direct {p0}, Landroid/support/v4/widget/ap$a;-><init>()V

    .line 354
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->b:Ljava/lang/String;

    .line 357
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;
    .param p2, "x1"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$1;

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)V

    return-void
.end method

.method private a(Landroid/widget/ImageView;Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;)V
    .locals 3
    .param p1, "releaseChild"    # Landroid/widget/ImageView;
    .param p2, "srcItem"    # Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    .param p3, "dstItem"    # Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .prologue
    .line 505
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->getItemThumbSelected()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 506
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    iget v2, p3, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->attachedViewId:I

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 507
    .local v0, "dstIv":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p3}, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->getItemThumbSelected()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 510
    :cond_0
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->getItemThumbSelected()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "imgName"    # Ljava/lang/String;

    .prologue
    .line 554
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    .line 555
    invoke-static {v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$900(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/e/a;->z()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v2

    .line 555
    invoke-virtual {v0, v1, p1, v2}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 557
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->b()Z

    move-result v0

    return v0
.end method

.method private b(Landroid/widget/ImageView;Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;)V
    .locals 3
    .param p1, "child"    # Landroid/widget/ImageView;
    .param p2, "srcItem"    # Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    .param p3, "dstItem"    # Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .prologue
    .line 514
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->getItemThumbSelected()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 515
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    iget v2, p3, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->attachedViewId:I

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 516
    .local v0, "dstIv":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p3}, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->getItemThumbNormal()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 519
    :cond_0
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->getItemThumbNormal()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 535
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mTransBmp:Landroid/graphics/Bitmap;

    .line 536
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mTransBmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 537
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 538
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->mTransBmp:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method private c(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 640
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 641
    .local v0, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 642
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setLeft(I)V

    .line 643
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setTop(I)V

    .line 644
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 646
    :cond_0
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 364
    iget v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->c:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 372
    iput p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->c:I

    .line 373
    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 650
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 651
    .local v0, "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    if-eqz v0, :cond_0

    .line 652
    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->absPos:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v1, v4, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->x:I

    .line 653
    .local v1, "left":I
    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->absPos:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v3, v4, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->y:I

    .line 655
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 656
    .local v2, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v2, :cond_0

    .line 657
    invoke-virtual {v2, v1, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 658
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 662
    .end local v1    # "left":I
    .end local v2    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "top":I
    :cond_0
    return-void
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 368
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 445
    const-string v0, ""

    .line 446
    .local v0, "stateStr":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 458
    :goto_0
    return-void

    .line 448
    :pswitch_0
    const-string v0, "STATE_IDLE"

    .line 449
    goto :goto_0

    .line 451
    :pswitch_1
    const-string v0, "STATE_DRAGGING"

    .line 452
    goto :goto_0

    .line 454
    :pswitch_2
    const-string v0, "STATE_SETTLING"

    goto :goto_0

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private e(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 666
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 667
    .local v0, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 668
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 669
    .local v1, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_0

    .line 670
    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 671
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 672
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 674
    :cond_0
    return-void
.end method

.method private f(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 677
    if-nez p1, :cond_1

    .line 680
    :cond_0
    :goto_0
    return v1

    .line 678
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 679
    .local v0, "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    if-eqz v0, :cond_0

    .line 680
    iget-boolean v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->draggable:Z

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;II)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 422
    .local v0, "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    if-eqz v0, :cond_0

    iget-boolean v4, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->draggable:Z

    if-eqz v4, :cond_0

    .line 423
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->getPaddingLeft()I

    move-result v1

    .line 424
    .local v1, "leftBound":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int v3, v4, v5

    .line 425
    .local v3, "rightBound":I
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 429
    .end local v1    # "leftBound":I
    .end local v3    # "rightBound":I
    :goto_0
    return v2

    :cond_0
    sub-int v2, p2, p3

    goto :goto_0
.end method

.method public a(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 435
    invoke-super {p0, p1}, Landroid/support/v4/widget/ap$a;->a(I)V

    .line 436
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->d(I)V

    .line 437
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->e(I)V

    .line 438
    return-void
.end method

.method public a(Landroid/view/View;FF)V
    .locals 5
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    .line 685
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ap$a;->a(Landroid/view/View;FF)V

    .line 688
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->f(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 690
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->getTargetItem(Landroid/view/View;)Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    move-result-object v0

    .line 692
    .local v0, "dstItem":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    if-eqz v0, :cond_4

    .line 693
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 694
    .local v2, "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    move-result-object v3

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->ifTargetCapacityFull(Ljava/lang/String;)Z

    move-result v1

    .line 696
    .local v1, "full":Z
    if-eqz v1, :cond_2

    .line 697
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->curTar:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    if-eqz v3, :cond_1

    .line 703
    iget-object v3, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->curTar:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    invoke-virtual {p0, p1, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a(Landroid/view/View;Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;)V

    .line 716
    .end local v1    # "full":Z
    .end local v2    # "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->startVibrate()V

    .line 718
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-virtual {v3, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->scaleDown(Landroid/view/View;)V

    .line 720
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$702(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;I)I

    .line 730
    .end local v0    # "dstItem":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "dstItem":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    .restart local v1    # "full":Z
    .restart local v2    # "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    :cond_1
    move-object v3, p1

    .line 705
    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 708
    :cond_2
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->curTar:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    if-eqz v3, :cond_3

    .line 709
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->onResetDragItemPos(Landroid/view/View;)V

    .line 711
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a(Landroid/view/View;Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;)V

    goto :goto_0

    .end local v1    # "full":Z
    .end local v2    # "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    :cond_4
    move-object v3, p1

    .line 714
    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 723
    .end local v0    # "dstItem":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    :cond_5
    if-eqz p1, :cond_0

    .line 724
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 725
    .restart local v2    # "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 726
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    move-result-object v3

    iget-object v4, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->sound:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->startPlayMediaDuringDraging(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 590
    invoke-super/range {p0 .. p5}, Landroid/support/v4/widget/ap$a;->a(Landroid/view/View;IIII)V

    .line 592
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->f(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 601
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 603
    .local v2, "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 604
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    move-result-object v3

    iget-object v4, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->sound:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->startPlayMediaDuringDraging(Ljava/lang/String;)V

    .line 606
    :cond_0
    iget v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->c:I

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->e(I)V

    .line 607
    iget v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->c:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 608
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$708(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)I

    .line 610
    :cond_1
    if-eqz v2, :cond_2

    .line 612
    iget-object v3, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->curTar:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    if-eqz v3, :cond_3

    .line 614
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->isItemSlideToDstPosition(Landroid/view/View;)Z

    move-result v0

    .line 616
    .local v0, "hasReachedDst":Z
    if-eqz v0, :cond_2

    .line 617
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->onDragItemToDst(Landroid/view/View;)V

    .line 619
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->e(Landroid/view/View;)V

    .line 621
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->checkResultList()V

    .line 636
    .end local v0    # "hasReachedDst":Z
    .end local v2    # "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    :cond_2
    :goto_0
    return-void

    .line 625
    .restart local v2    # "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    :cond_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->isItemResetToOriginalPosition(Landroid/view/View;)Z

    move-result v1

    .line 627
    .local v1, "hasResetToOri":Z
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->onResetDragItemPos(Landroid/view/View;)V

    .line 629
    if-eqz v1, :cond_2

    .line 631
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->d(Landroid/view/View;)V

    goto :goto_0
.end method

.method a(Landroid/view/View;Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;)V
    .locals 5
    .param p1, "releaseChild"    # Landroid/view/View;
    .param p2, "dstItem"    # Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .prologue
    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 464
    .local v2, "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    if-eqz v2, :cond_2

    .line 467
    iget-object v3, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->curTar:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 471
    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->curTar:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    invoke-direct {p0, v3, v2, v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->b(Landroid/widget/ImageView;Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;)V

    .line 474
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->curTar:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 477
    :cond_0
    iput-object p2, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->curTar:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 479
    iget-object v3, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->curTar:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    if-eqz v3, :cond_1

    move-object v3, p1

    .line 483
    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->curTar:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    invoke-direct {p0, v3, v2, v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a(Landroid/widget/ImageView;Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;)V

    .line 487
    :cond_1
    iget-object v3, p2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->absPos:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v3, v3, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->x:I

    iget-object v4, p2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->size:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v4, v4, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->x:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 489
    .local v0, "finalLeft":I
    iget-object v3, p2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->absPos:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v3, v3, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->y:I

    iget-object v4, p2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->size:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v4, v4, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->y:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 491
    .local v1, "finalTop":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$800(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Landroid/support/v4/widget/ap;

    move-result-object v3

    invoke-virtual {v3, p1, v0, v1}, Landroid/support/v4/widget/ap;->a(Landroid/view/View;II)Z

    .line 493
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->invalidate()V

    .line 495
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a()Z

    move-result v3

    if-nez v3, :cond_3

    .line 496
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->startPlaySuccessMusic()V

    .line 502
    .end local v0    # "finalLeft":I
    .end local v1    # "finalTop":I
    :cond_2
    :goto_0
    return-void

    .line 498
    .restart local v0    # "finalLeft":I
    .restart local v1    # "finalTop":I
    :cond_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    move-result-object v3

    iget-object v4, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->sound:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->startPlayMediaDuringDraging(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "child"    # Landroid/widget/ImageView;

    .prologue
    .line 560
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 563
    .local v0, "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    if-eqz v0, :cond_1

    .line 565
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->curTar:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->curTar:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    invoke-direct {p0, p1, v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->b(Landroid/widget/ImageView;Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;)V

    .line 572
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->curTar:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$800(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Landroid/support/v4/widget/ap;

    move-result-object v1

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->absPos:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->x:I

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->absPos:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

    iget v3, v3, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;->y:I

    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ap;->a(Landroid/view/View;II)Z

    .line 577
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->invalidate()V

    .line 580
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 581
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->startPlayFailMusic()V

    .line 586
    :cond_1
    :goto_0
    return-void

    .line 583
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    move-result-object v1

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->sound:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->startPlayMediaDuringDraging(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$700(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 387
    .local v0, "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->draggable:Z

    if-eqz v1, :cond_0

    .line 389
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->c(Landroid/view/View;)V

    .line 391
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->stopVibrate()V

    .line 393
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->scaleUp(Landroid/view/View;)V

    .line 397
    const/4 v1, 0x1

    .line 399
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;II)I
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 405
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 406
    .local v1, "item":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->draggable:Z

    if-eqz v4, :cond_0

    .line 407
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->getPaddingTop()I

    move-result v3

    .line 408
    .local v3, "topBound":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v0, v4, v5

    .line 409
    .local v0, "bottomBound":I
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 413
    .end local v0    # "bottomBound":I
    .end local v3    # "topBound":I
    :goto_0
    return v2

    :cond_0
    sub-int v2, p2, p3

    goto :goto_0
.end method

.method public c(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 377
    invoke-super {p0, p1}, Landroid/support/v4/widget/ap$a;->c(I)I

    move-result v0

    return v0
.end method

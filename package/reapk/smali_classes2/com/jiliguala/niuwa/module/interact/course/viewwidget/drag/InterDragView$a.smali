.class Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:I = 0x37

.field private static final c:Ljava/lang/String; = "ANIM_THREAD"


# instance fields
.field public b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)V
    .locals 1
    .param p1, "view"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    .prologue
    .line 267
    const-string v0, "ANIM_THREAD"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 268
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->b:Ljava/lang/ref/WeakReference;

    .line 269
    return-void
.end method

.method private a(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 7
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 273
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3e900000    # -15.0f

    const/high16 v2, 0x41700000    # 15.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 279
    .local v0, "rotateAnimation":Landroid/view/animation/RotateAnimation;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 280
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 281
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 282
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 283
    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 301
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v7, 0x3fa66666    # 1.3f

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v4, 0x1000

    const/4 v5, 0x1

    .line 306
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->b:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 307
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 348
    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 309
    :pswitch_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$100(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$300(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)V

    .line 311
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$400(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v6, 0x7d0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    move v3, v5

    .line 318
    goto :goto_0

    .line 313
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$400(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$400(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 316
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$400(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 320
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .line 321
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;

    .line 322
    .local v2, "widget":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->draggable:Z

    if-eqz v3, :cond_3

    .line 324
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->a(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 325
    .local v1, "objectAnimator":Landroid/view/animation/Animation;
    new-instance v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a$2;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;Landroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .end local v1    # "objectAnimator":Landroid/view/animation/Animation;
    :cond_3
    move v3, v5

    .line 336
    goto/16 :goto_0

    .line 338
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "widget":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    :pswitch_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$400(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    move v3, v5

    .line 339
    goto/16 :goto_0

    .line 341
    :pswitch_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    invoke-static {v3, v4, v6, v7}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$600(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;Landroid/view/View;FF)V

    move v3, v5

    .line 342
    goto/16 :goto_0

    .line 344
    :pswitch_4
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    invoke-static {v3, v4, v7, v6}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$600(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;Landroid/view/View;FF)V

    move v3, v5

    .line 345
    goto/16 :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.class Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/animation/Animation;

.field final synthetic c:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a$2;->c:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a$2;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a$2;->b:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a$2;->c:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a$2;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/DragViewCtrlr;->isItemSlideToDstPosition(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a$2;->c:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->access$100(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;

    move-result-object v0

    .line 329
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;->a(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a$2;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 331
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a$2;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a$2;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 333
    :cond_0
    return-void
.end method

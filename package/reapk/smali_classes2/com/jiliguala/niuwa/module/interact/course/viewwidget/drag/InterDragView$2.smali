.class Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;->scale(Landroid/view/View;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:F

.field final synthetic c:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;Landroid/view/View;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$2;->c:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$2;->a:Landroid/view/View;

    iput p3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$2;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$2;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 233
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$2;->a:Landroid/view/View;

    iget v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$2;->b:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 234
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$2;->a:Landroid/view/View;

    iget v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$2;->b:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 247
    return-void
.end method

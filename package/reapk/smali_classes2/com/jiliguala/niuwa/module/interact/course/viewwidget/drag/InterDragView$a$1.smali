.class Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;->a(Landroid/view/View;)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a$1;->b:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/drag/InterDragView$a$1;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 293
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 298
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 287
    return-void
.end method

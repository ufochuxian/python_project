.class Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$1;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$1;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->access$000(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;)V

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$1;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$1;->a:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

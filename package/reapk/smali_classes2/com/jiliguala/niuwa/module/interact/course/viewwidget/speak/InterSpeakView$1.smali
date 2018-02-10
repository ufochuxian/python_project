.class Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

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
    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->getLoadingProgress()Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->bringToFront()V

    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->access$000(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;)V

    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->toggleRecord()V

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

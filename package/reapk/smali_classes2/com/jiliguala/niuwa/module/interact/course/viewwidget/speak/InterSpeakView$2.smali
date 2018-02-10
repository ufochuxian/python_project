.class Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->startIndicatorAnim()V
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
    .line 119
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView$2;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 134
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/a/a;)V
    .locals 1
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView$2;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->access$100(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView$2;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;->access$200(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/InterSpeakView;)Lcom/nineoldandroids/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/a/d;->i()V

    .line 129
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 139
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/a/a;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    .line 123
    return-void
.end method

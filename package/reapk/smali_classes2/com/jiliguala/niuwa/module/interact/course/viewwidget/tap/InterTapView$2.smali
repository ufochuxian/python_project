.class Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->onMatchResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$2;->b:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$2;->b:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 191
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$2;->b:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->access$200(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$2;->b:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;->access$200(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/InterTapView$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;->onGainResult(Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

.class public Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr$UpdateUIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateUIHandler"
.end annotation


# instance fields
.field private mPresenter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;)V
    .locals 1
    .param p1, "presenter"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 136
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr$UpdateUIHandler;->mPresenter:Ljava/lang/ref/WeakReference;

    .line 137
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 142
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr$UpdateUIHandler;->mPresenter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 147
    .local v0, "percentge":F
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr$UpdateUIHandler;->mPresenter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;->access$000(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResViewCtrlr;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->updateProgress(I)V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
    .end packed-switch
.end method

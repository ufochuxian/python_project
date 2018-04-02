.class Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)V
    .locals 1
    .param p1, "speakViewWidget"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .prologue
    .line 666
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 667
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;->a:Ljava/lang/ref/WeakReference;

    .line 668
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 673
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 675
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$1400(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)V

    .line 676
    const/16 v0, 0x1002

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v0, v2, v3}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 679
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->addScoreView()V

    goto :goto_0

    .line 682
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$1500(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)V

    goto :goto_0

    .line 673
    nop

    :pswitch_data_0
    .packed-switch 0x1002
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

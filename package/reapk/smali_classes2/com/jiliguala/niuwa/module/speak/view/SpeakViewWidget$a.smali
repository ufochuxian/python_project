.class Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;
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
            "Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)V
    .locals 1
    .param p1, "speakViewWidget"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    .prologue
    .line 843
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 844
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;->a:Ljava/lang/ref/WeakReference;

    .line 845
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 849
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 850
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 852
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->access$1200(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)V

    .line 853
    const/16 v0, 0x1002

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v0, v2, v3}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 856
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->addScoreView()V

    goto :goto_0

    .line 850
    nop

    :pswitch_data_0
    .packed-switch 0x1002
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

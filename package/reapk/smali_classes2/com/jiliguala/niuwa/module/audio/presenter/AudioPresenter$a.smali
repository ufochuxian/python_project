.class Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;
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
            "Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "controller"    # Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    .prologue
    .line 1590
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1591
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->a:Ljava/lang/ref/WeakReference;

    .line 1592
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 1596
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1597
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1616
    :cond_0
    :goto_0
    return-void

    .line 1599
    :pswitch_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->access$200(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->getPosition()I

    move-result v1

    .line 1600
    .local v1, "pos":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->access$200(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->getDuration()I

    move-result v0

    .line 1601
    .local v0, "dur":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->access$000(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1602
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->access$000(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    move-result-object v2

    int-to-long v4, v1

    int-to-long v6, v0

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onProgressUpdate(JJ)V

    .line 1604
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->access$300(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    move-result-object v2

    const/16 v3, 0x1000

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1607
    .end local v0    # "dur":I
    .end local v1    # "pos":I
    :pswitch_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->access$000(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    move-result-object v2

    invoke-interface {v2, v6, v7, v6, v7}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onProgressUpdate(JJ)V

    goto :goto_0

    .line 1610
    :pswitch_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->a:Ljava/lang/ref/WeakReference;

    .line 1611
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->access$400(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    move-result-object v3

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->mLrcPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->access$400(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    move-result-object v3

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    .line 1612
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v5, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrc:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->access$400(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    move-result-object v3

    .line 1611
    invoke-static {v2, v4, v5, v3}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->access$500(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    goto/16 :goto_0

    .line 1597
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

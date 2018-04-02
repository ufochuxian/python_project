.class Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V
    .locals 1
    .param p1, "controller"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 1936
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1937
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    .line 1938
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, -0x1

    const/16 v6, 0x1001

    const/4 v10, 0x0

    .line 1947
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1948
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 2020
    :cond_0
    :goto_0
    return-void

    .line 1950
    :pswitch_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$300(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1952
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$400(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Landroid/media/MediaPlayer;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$500(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isLastPaused()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1953
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$500(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1956
    :cond_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$500(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1958
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->savePosWhilePause()V

    .line 1959
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1960
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onPlayPause()V

    .line 1962
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/b;->a()Lcom/jiliguala/niuwa/logic/i/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/i/b;->c()V

    .line 1963
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$600(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V

    .line 1998
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1999
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v5, v10}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->showSurfaceCover(Z)V

    .line 2001
    :cond_4
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 2002
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->setControllerEnable(Z)V

    .line 2004
    :cond_5
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2005
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    const-wide/16 v6, 0x0

    invoke-interface {v5, v6, v7}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onPlayPrepared(J)V

    goto/16 :goto_0

    .line 1972
    :cond_6
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$400(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playRightNow(Landroid/media/MediaPlayer;)V

    .line 1973
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$700(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V

    .line 1975
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$800(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Lcom/jiliguala/niuwa/logic/db/daometa/e;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 1976
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$800(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Lcom/jiliguala/niuwa/logic/db/daometa/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/db/daometa/e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1977
    .local v1, "progress":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v5, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->seekTo(I)V

    .line 1978
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1979
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u4e0a\u6b21\u5b66\u4e60\u5230"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-int/lit16 v7, v1, 0x3e8

    int-to-long v8, v7

    invoke-static {v8, v9}, Lcom/jiliguala/niuwa/common/util/f;->m(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\u4e3a\u60a8\u7eed\u64ad"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->showToast(Ljava/lang/String;)V

    .line 1981
    :cond_7
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$802(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;Lcom/jiliguala/niuwa/logic/db/daometa/e;)Lcom/jiliguala/niuwa/logic/db/daometa/e;

    .line 1984
    .end local v1    # "progress":I
    :cond_8
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$900(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)J

    move-result-wide v6

    cmp-long v5, v6, v12

    if-eqz v5, :cond_9

    .line 1985
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$900(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->seekTo(I)V

    .line 1987
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v5, v12, v13}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$902(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;J)J

    .line 1990
    :cond_9
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$1000(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    move-result-object v5

    const/16 v6, 0x1000

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->sendEmptyMessage(I)Z

    .line 1991
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 1992
    .local v3, "videoWidth":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1993
    .local v2, "videoHeight":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1994
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v5, v3, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onPrepareAdjustVideoSize(II)V

    .line 1995
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onPlayResume()V

    goto/16 :goto_1

    .line 2009
    .end local v2    # "videoHeight":I
    .end local v3    # "videoWidth":I
    :cond_a
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$1100(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->removeMessages(I)V

    .line 2010
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 2011
    .local v4, "width":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 2012
    .local v0, "height":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$1100(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 2013
    iput v4, p1, Landroid/os/Message;->arg1:I

    .line 2014
    iput v0, p1, Landroid/os/Message;->arg2:I

    .line 2015
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$1100(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {v5, p1, v6, v7}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1948
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
    .end packed-switch
.end method

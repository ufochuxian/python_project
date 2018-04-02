.class Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;
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
            "Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 1431
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1432
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 1433
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x1007

    const/16 v5, 0x1001

    const-wide/16 v6, 0x1f4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1437
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1438
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1534
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 1538
    :cond_0
    :goto_0
    return-void

    .line 1440
    :pswitch_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$1200(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1442
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1443
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1444
    .local v1, "msg_new":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1445
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1446
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1449
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg_new":Landroid/os/Message;
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/n;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1450
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/n;->h()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1451
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/n;->c()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1452
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/n;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1454
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$1300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1458
    :pswitch_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    if-nez v2, :cond_4

    .line 1460
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1461
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1462
    .restart local v1    # "msg_new":Landroid/os/Message;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v7}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1465
    .end local v1    # "msg_new":Landroid/os/Message;
    :cond_4
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1466
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_5

    :goto_1
    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showIndicatorRedDot(Z)V

    goto/16 :goto_0

    :cond_5
    move v3, v4

    goto :goto_1

    .line 1469
    :pswitch_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    if-nez v2, :cond_6

    .line 1471
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v3, 0x1008

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1472
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v3, 0x1008

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1473
    .restart local v1    # "msg_new":Landroid/os/Message;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v7}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1476
    .end local v1    # "msg_new":Landroid/os/Message;
    :cond_6
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v5, 0x1008

    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1477
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_7

    :goto_2
    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showIndicatorRecRedDot(Z)V

    goto/16 :goto_0

    :cond_7
    move v3, v4

    goto :goto_2

    .line 1480
    :pswitch_4
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    if-nez v2, :cond_8

    .line 1482
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1483
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1484
    .restart local v1    # "msg_new":Landroid/os/Message;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v7}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1487
    .end local v1    # "msg_new":Landroid/os/Message;
    :cond_8
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1488
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_9

    :goto_3
    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showFragmentMessageDot(Z)V

    goto/16 :goto_0

    :cond_9
    move v3, v4

    goto :goto_3

    .line 1492
    :pswitch_5
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    if-nez v2, :cond_a

    .line 1494
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v3, 0x1009

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1495
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v3, 0x1009

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1496
    .restart local v1    # "msg_new":Landroid/os/Message;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v7}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1499
    .end local v1    # "msg_new":Landroid/os/Message;
    :cond_a
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v5, 0x1009

    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1500
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_b

    :goto_4
    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showFragmentFeedBackDot(Z)V

    goto/16 :goto_0

    :cond_b
    move v3, v4

    goto :goto_4

    .line 1504
    :pswitch_6
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showMigrationBlockDlg()V

    goto/16 :goto_0

    .line 1507
    :pswitch_7
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$1400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1508
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$1400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 1512
    :pswitch_8
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$1200(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1514
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v3, 0x1006

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1515
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v3, 0x1006

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1516
    .restart local v1    # "msg_new":Landroid/os/Message;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1517
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1520
    .end local v1    # "msg_new":Landroid/os/Message;
    :cond_c
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$1500(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    goto/16 :goto_0

    .line 1523
    :pswitch_9
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    if-nez v2, :cond_d

    .line 1525
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v3, 0x100a

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1526
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v3, 0x100a

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1527
    .restart local v1    # "msg_new":Landroid/os/Message;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1528
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1531
    .end local v1    # "msg_new":Landroid/os/Message;
    :cond_d
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$1600(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;)V

    goto/16 :goto_0

    .line 1438
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

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
    .line 1385
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1386
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 1387
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

    .line 1391
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1392
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1484
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 1488
    :cond_0
    :goto_0
    return-void

    .line 1394
    :pswitch_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$1200(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1396
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1397
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1398
    .local v1, "msg_new":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1399
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1400
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1403
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg_new":Landroid/os/Message;
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/n;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/n;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/n;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/n;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1404
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$1300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1408
    :pswitch_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    if-nez v2, :cond_3

    .line 1410
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1411
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1412
    .restart local v1    # "msg_new":Landroid/os/Message;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v7}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1415
    .end local v1    # "msg_new":Landroid/os/Message;
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1416
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showIndicatorRedDot(Z)V

    goto/16 :goto_0

    :cond_4
    move v3, v4

    goto :goto_1

    .line 1419
    :pswitch_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    if-nez v2, :cond_5

    .line 1421
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v3, 0x1008

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1422
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v3, 0x1008

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1423
    .restart local v1    # "msg_new":Landroid/os/Message;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v7}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1426
    .end local v1    # "msg_new":Landroid/os/Message;
    :cond_5
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v5, 0x1008

    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1427
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_6

    :goto_2
    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showIndicatorRecRedDot(Z)V

    goto/16 :goto_0

    :cond_6
    move v3, v4

    goto :goto_2

    .line 1430
    :pswitch_4
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    if-nez v2, :cond_7

    .line 1432
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1433
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1434
    .restart local v1    # "msg_new":Landroid/os/Message;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v7}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1437
    .end local v1    # "msg_new":Landroid/os/Message;
    :cond_7
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1438
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_8

    :goto_3
    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showFragmentMessageDot(Z)V

    goto/16 :goto_0

    :cond_8
    move v3, v4

    goto :goto_3

    .line 1442
    :pswitch_5
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    if-nez v2, :cond_9

    .line 1444
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v3, 0x1009

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1445
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v3, 0x1009

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1446
    .restart local v1    # "msg_new":Landroid/os/Message;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v7}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1449
    .end local v1    # "msg_new":Landroid/os/Message;
    :cond_9
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v5, 0x1009

    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1450
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_a

    :goto_4
    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showFragmentFeedBackDot(Z)V

    goto/16 :goto_0

    :cond_a
    move v3, v4

    goto :goto_4

    .line 1454
    :pswitch_6
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showMigrationBlockDlg()V

    goto/16 :goto_0

    .line 1457
    :pswitch_7
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$1400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1458
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$1400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 1462
    :pswitch_8
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$1200(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1464
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v3, 0x1006

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1465
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v3, 0x1006

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1466
    .restart local v1    # "msg_new":Landroid/os/Message;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1467
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1470
    .end local v1    # "msg_new":Landroid/os/Message;
    :cond_b
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$1500(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    goto/16 :goto_0

    .line 1473
    :pswitch_9
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    if-nez v2, :cond_c

    .line 1475
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v3, 0x100a

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeMessages(I)V

    .line 1476
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const/16 v3, 0x100a

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1477
    .restart local v1    # "msg_new":Landroid/os/Message;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1478
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1481
    .end local v1    # "msg_new":Landroid/os/Message;
    :cond_c
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$1600(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;)V

    goto/16 :goto_0

    .line 1392
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

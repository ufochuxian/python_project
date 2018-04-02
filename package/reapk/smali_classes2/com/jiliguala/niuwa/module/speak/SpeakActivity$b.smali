.class Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/speak/SpeakActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/speak/SpeakActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    .locals 1
    .param p1, "mSpeakActivityRef"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 2233
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2234
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    .line 2235
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0xc8

    const/16 v6, 0x100d

    const/16 v5, 0x1006

    const/4 v4, 0x0

    .line 2239
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2240
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 2345
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 2349
    :cond_0
    :goto_0
    return-void

    .line 2242
    :pswitch_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->isAudioRecording()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2243
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    iget-object v4, v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$700(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onStartAudioRecord(I)V

    goto :goto_0

    .line 2247
    :pswitch_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->isAudioRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2248
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    iget-object v4, v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$700(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onStopAudioRecord(I)V

    goto :goto_0

    .line 2252
    :pswitch_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->getRecordCurrentPos()I

    move-result v1

    .line 2255
    .local v1, "progress":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2256
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->setProgress(I)V

    .line 2258
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$1400(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    move-result-object v3

    const/16 v4, 0x1004

    invoke-virtual {v3, v4, v8, v9}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2261
    .end local v1    # "progress":I
    :pswitch_4
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$1500(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2262
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$1500(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2264
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$1600(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2265
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$1600(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2267
    :cond_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$1700(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/view/SurfaceView;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2268
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$1700(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/view/SurfaceView;

    move-result-object v3

    const v4, 0x7f0600f5

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->setBackgroundResource(I)V

    .line 2270
    :cond_4
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    iget-boolean v3, v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hasFocus:Z

    if-eqz v3, :cond_5

    .line 2271
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$1800(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    goto/16 :goto_0

    .line 2273
    :cond_5
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$1400(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    move-result-object v3

    invoke-virtual {v3, v5, v8, v9}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2277
    :pswitch_5
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$1900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    goto/16 :goto_0

    .line 2280
    :pswitch_6
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$2000(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2281
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;

    .line 2282
    .local v0, "obj":Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v3, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->addView(Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;)V

    goto/16 :goto_0

    .line 2284
    .end local v0    # "obj":Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;
    :cond_6
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$2100(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2285
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;

    .line 2286
    .restart local v0    # "obj":Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v3, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->addView(Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;)V

    goto/16 :goto_0

    .line 2288
    .end local v0    # "obj":Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;

    .line 2289
    .restart local v0    # "obj":Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;
    iget-boolean v3, v0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;->c:Z

    if-eqz v3, :cond_8

    .line 2290
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$1300(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/view/View;

    move-result-object v2

    .line 2291
    .local v2, "scoreView":Landroid/view/View;
    if-eqz v2, :cond_8

    .line 2292
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$2200(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2295
    .end local v2    # "scoreView":Landroid/view/View;
    :cond_8
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$2300(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2296
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hideNextBtn()V

    .line 2298
    :cond_9
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v3, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->addView(Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;)V

    goto/16 :goto_0

    .line 2303
    .end local v0    # "obj":Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;
    :pswitch_7
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->removeScoreView()V

    .line 2304
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->hideNextBtn()V

    goto/16 :goto_0

    .line 2307
    :pswitch_8
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$2400(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    .line 2309
    :pswitch_9
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$2500(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    goto/16 :goto_0

    .line 2312
    :pswitch_a
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2313
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->doAfterPlayScoreSound()V

    goto/16 :goto_0

    .line 2318
    :pswitch_b
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2319
    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->removeMessages(I)V

    goto/16 :goto_0

    .line 2322
    :cond_a
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$2600(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)I

    move-result v3

    if-gtz v3, :cond_b

    .line 2324
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$2700(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2328
    :goto_1
    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2330
    :cond_b
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$2800(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    .line 2331
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$2900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$2610(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2332
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$2900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->showFadeAnimation(Landroid/view/View;)V

    .line 2334
    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 2335
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, p1, v4, v5}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2339
    :pswitch_c
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$3000(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    goto/16 :goto_0

    .line 2342
    :pswitch_d
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$3100(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    goto/16 :goto_0

    .line 2325
    :catch_0
    move-exception v3

    goto :goto_1

    .line 2240
    nop

    :pswitch_data_0
    .packed-switch 0x1002
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

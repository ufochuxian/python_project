.class Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;
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
            "Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    .prologue
    .line 695
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 696
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 697
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 706
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 707
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 720
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 709
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->access$200(Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 710
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->access$300(Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->access$400(Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 714
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->access$300(Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->access$300(Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2

    .line 707
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
    .end packed-switch
.end method

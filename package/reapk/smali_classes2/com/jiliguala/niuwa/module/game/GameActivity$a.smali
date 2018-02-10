.class Lcom/jiliguala/niuwa/module/game/GameActivity$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/game/GameActivity;
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
            "Lcom/jiliguala/niuwa/module/game/GameActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/game/GameActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/game/GameActivity;

    .prologue
    .line 851
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 852
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 853
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 857
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 858
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 872
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 860
    :pswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 861
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 863
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->access$600(Lcom/jiliguala/niuwa/module/game/GameActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 867
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 868
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->access$700(Lcom/jiliguala/niuwa/module/game/GameActivity;)V

    goto :goto_0

    .line 858
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

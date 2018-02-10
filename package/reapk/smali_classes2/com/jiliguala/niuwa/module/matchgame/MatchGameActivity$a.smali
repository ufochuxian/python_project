.class Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;
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
            "Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    .prologue
    .line 464
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 465
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 466
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 476
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 487
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 492
    :cond_1
    :goto_1
    return-void

    .line 478
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->access$700(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)V

    goto :goto_1

    .line 483
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->access$800(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)V

    goto :goto_0

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

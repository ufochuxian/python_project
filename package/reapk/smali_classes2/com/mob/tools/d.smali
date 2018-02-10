.class public abstract Lcom/mob/tools/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_START:I = -0x1

.field private static final MSG_STOP:I = -0x2


# instance fields
.field protected final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/mob/tools/b;

    invoke-direct {v0}, Lcom/mob/tools/b;-><init>()V

    .line 15
    .local v0, "thread":Lcom/mob/tools/b;
    invoke-virtual {v0}, Lcom/mob/tools/b;->start()V

    .line 16
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/mob/tools/b;->b()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/mob/tools/d;->handler:Landroid/os/Handler;

    .line 17
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 49
    invoke-virtual {p0, p1}, Lcom/mob/tools/d;->onMessage(Landroid/os/Message;)V

    .line 51
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 47
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/mob/tools/d;->onStart(Landroid/os/Message;)V

    goto :goto_0

    .line 48
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/mob/tools/d;->onStop(Landroid/os/Message;)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract onMessage(Landroid/os/Message;)V
.end method

.method protected onStart(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 56
    return-void
.end method

.method protected onStop(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 60
    return-void
.end method

.method public startThread()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/mob/tools/d;->startThread(IILjava/lang/Object;)V

    .line 21
    return-void
.end method

.method public startThread(IILjava/lang/Object;)V
    .locals 2
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 24
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 25
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 26
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 27
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 28
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 29
    iget-object v1, p0, Lcom/mob/tools/d;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    return-void
.end method

.method public stopThread()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/mob/tools/d;->stopThread(IILjava/lang/Object;)V

    .line 34
    return-void
.end method

.method public stopThread(IILjava/lang/Object;)V
    .locals 2
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 37
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 38
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, -0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 39
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 40
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 41
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 42
    iget-object v1, p0, Lcom/mob/tools/d;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 43
    return-void
.end method

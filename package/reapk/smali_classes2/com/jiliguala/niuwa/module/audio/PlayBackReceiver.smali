.class public Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;
    }
.end annotation


# instance fields
.field public mPlayBackInterface:Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;)V
    .locals 0
    .param p1, "playBackInterface"    # Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver;->mPlayBackInterface:Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;

    .line 16
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 20
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->ACTION_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 21
    const-string v4, "type"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 23
    .local v2, "type":I
    packed-switch v2, :pswitch_data_0

    .line 44
    .end local v2    # "type":I
    :cond_0
    :goto_0
    return-void

    .line 25
    .restart local v2    # "type":I
    :pswitch_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver;->mPlayBackInterface:Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;

    if-eqz v4, :cond_0

    .line 26
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver;->mPlayBackInterface:Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;

    invoke-interface {v4}, Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;->onComplete()V

    goto :goto_0

    .line 30
    :pswitch_1
    const-string v4, "source"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "errorSource":Ljava/lang/String;
    const-string v4, "what"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 32
    .local v3, "what":I
    const-string v4, "extra"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 33
    .local v1, "extra":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver;->mPlayBackInterface:Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;

    if-eqz v4, :cond_0

    .line 34
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver;->mPlayBackInterface:Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;

    invoke-interface {v4, v0, v3, v1}, Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;->onError(Ljava/lang/String;II)Z

    goto :goto_0

    .line 38
    .end local v0    # "errorSource":Ljava/lang/String;
    .end local v1    # "extra":I
    .end local v3    # "what":I
    :pswitch_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver;->mPlayBackInterface:Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;

    if-eqz v4, :cond_0

    .line 39
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver;->mPlayBackInterface:Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;

    invoke-interface {v4}, Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;->onPrepared()V

    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

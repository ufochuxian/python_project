.class public Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/jiliguala/niuwa/module/audio/MusicFocusable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy$ServiceConnectionListener;
    }
.end annotation


# static fields
.field private static final Focused:I = 0x2

.field public static final KEY_HASH_VALUE:Ljava/lang/String; = "HASH_VALUE"

.field private static final NoFocusCanDuck:I = 0x1

.field private static final NoFocusNoDuck:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private listener:Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;

.field mAudioFocus:I

.field mAudioFocusHelper:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

.field private mConnectionListener:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy$ServiceConnectionListener;

.field private mContext:Landroid/content/Context;

.field private mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mAudioFocusHelper:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mAudioFocus:I

    .line 24
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mContext:Landroid/content/Context;

    .line 25
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    .line 26
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mConnectionListener:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy$ServiceConnectionListener;

    .line 30
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mAudioFocusHelper:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mAudioFocusHelper:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->initialize(Landroid/content/Context;)V

    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mAudioFocusHelper:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->setFocusableListener(Lcom/jiliguala/niuwa/module/audio/MusicFocusable;)V

    .line 34
    return-void
.end method

.method private isSameInvoker()Z
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->getCurHashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method configAndStartMediaPlayer()V
    .locals 2

    .prologue
    .line 236
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mAudioFocus:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mAudioFocus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->pause()V

    .line 252
    :cond_1
    :goto_0
    return-void

    .line 246
    :cond_2
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mAudioFocus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->resume()V

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->getDuration()I

    move-result v0

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->getPosition()I

    move-result v0

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method giveUpAudioFocus()V
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mAudioFocus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mAudioFocusHelper:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mAudioFocusHelper:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->abandonFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mAudioFocus:I

    .line 95
    :cond_0
    return-void
.end method

.method public isPausing()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->isPausing()Z

    move-result v0

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->isPlaying()Z

    move-result v0

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGainedAudioFocus()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x2

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mAudioFocus:I

    .line 262
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->configAndStartMediaPlayer()V

    .line 263
    return-void
.end method

.method public onLostAudioFocus(Z)V
    .locals 1
    .param p1, "canDuck"    # Z

    .prologue
    .line 269
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mAudioFocus:I

    .line 272
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->configAndStartMediaPlayer()V

    .line 273
    return-void

    .line 269
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 38
    check-cast p2, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService$LocalBinder;->getService()Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mConnectionListener:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy$ServiceConnectionListener;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mConnectionListener:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy$ServiceConnectionListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy$ServiceConnectionListener;->onServiceConnected()V

    .line 45
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mConnectionListener:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy$ServiceConnectionListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mConnectionListener:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy$ServiceConnectionListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy$ServiceConnectionListener;->onServiceDisconnected()V

    .line 52
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->giveUpAudioFocus()V

    .line 164
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->pause()V

    .line 167
    :cond_0
    return-void
.end method

.method public playRightNow()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->playRightNow()V

    .line 73
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->giveUpAudioFocus()V

    .line 171
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->reset()V

    .line 174
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->resume()V

    .line 149
    :cond_0
    return-void
.end method

.method public seek(J)J
    .locals 3
    .param p1, "whereto"    # J

    .prologue
    .line 209
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->seek(J)J

    move-result-wide v0

    .line 212
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setAudioPlayDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "ttl"    # Ljava/lang/String;
    .param p3, "art"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->setAudioPlayDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    :cond_0
    return-void
.end method

.method public setConnectionListener(Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy$ServiceConnectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy$ServiceConnectionListener;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mConnectionListener:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy$ServiceConnectionListener;

    .line 56
    return-void
.end method

.method public setCurState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->setCurState(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 1
    .param p1, "looping"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->setLooping(Z)V

    .line 136
    :cond_0
    return-void
.end method

.method public setMediaPlayerListener(Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->listener:Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;

    .line 225
    return-void
.end method

.method public start(Z)V
    .locals 1
    .param p1, "isPlayRightNow"    # Z

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->tryToGetAudioFocus()V

    .line 140
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->start(Z)V

    .line 143
    :cond_0
    return-void
.end method

.method public startAndBindService()V
    .locals 4

    .prologue
    .line 59
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "HASH_VALUE"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 63
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->giveUpAudioFocus()V

    .line 157
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->isSameInvoker()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->stop()V

    .line 160
    :cond_0
    return-void
.end method

.method public stopService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 82
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    if-eqz v1, :cond_0

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 85
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 86
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->setFocusableListener(Lcom/jiliguala/niuwa/module/audio/MusicFocusable;)V

    .line 87
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->giveUpAudioFocus()V

    .line 88
    iput-object v3, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mPlaybackService:Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    .line 90
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method tryToGetAudioFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 98
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mAudioFocus:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mAudioFocusHelper:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mAudioFocusHelper:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iput v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->mAudioFocus:I

    .line 100
    :cond_0
    return-void
.end method

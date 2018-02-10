.class Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->play(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/MediaPlayer;

.field final synthetic b:J

.field final synthetic c:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

.field final synthetic d:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;Landroid/media/MediaPlayer;JLcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V
    .locals 1
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->d:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->a:Landroid/media/MediaPlayer;

    iput-wide p3, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->b:J

    iput-object p5, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->c:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 10
    .param p1, "unused"    # Landroid/media/MediaPlayer;

    .prologue
    .line 188
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->d:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->access$000(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->a:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->d:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->access$100(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;)Landroid/media/MediaPlayer;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 196
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    .line 199
    :cond_1
    iget-wide v4, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->b:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    sub-long v0, v4, v6

    .line 201
    .local v0, "playDelayMillis":J
    new-instance v2, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$1;-><init>(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;)V

    .line 221
    .local v2, "startPlayback":Ljava/lang/Runnable;
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    .line 223
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    :goto_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->a:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$2;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$2;-><init>(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    .line 226
    :cond_2
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

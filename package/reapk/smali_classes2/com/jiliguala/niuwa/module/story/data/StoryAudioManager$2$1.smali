.class Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$1;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$1;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->a:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$1;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->d:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->access$100(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 206
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$1;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$1;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->d:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$1;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->c:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->access$202(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    .line 209
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$1;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->d:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->access$302(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;J)J

    .line 210
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$1;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 211
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$1;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->d:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->access$400(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;

    .line 212
    .local v0, "listener":Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$1;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->c:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    invoke-interface {v0, v2}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;->onStoryAudioPlaybackStarted(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 215
    .end local v0    # "listener":Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

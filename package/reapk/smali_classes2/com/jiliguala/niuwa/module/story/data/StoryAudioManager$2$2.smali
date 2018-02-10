.class Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 229
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$2;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "unused"    # Landroid/media/MediaPlayer;

    .prologue
    .line 233
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$2;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->a:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$2;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->d:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->access$100(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 234
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$2;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->c:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    instance-of v1, v1, Lcom/jiliguala/niuwa/module/story/data/json/Cover;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$2;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->d:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->access$102(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 236
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$2;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->d:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->access$400(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;

    .line 237
    .local v0, "listener":Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$2;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->c:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    invoke-interface {v0, v2}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;->onStoryAudioPlaybackComplete(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V

    goto :goto_0

    .line 243
    .end local v0    # "listener":Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2$2;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 244
    return-void
.end method

.class Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->preload(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPreloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener",
        "<",
        "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPreloadListener;

.field final synthetic b:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

.field final synthetic c:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPreloadListener;Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$1;->c:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$1;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPreloadListener;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$1;->b:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLiveDataFailed(Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "op"    # Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;
    .param p2, "error"    # Ljava/lang/Exception;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$1;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPreloadListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$1;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPreloadListener;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$1;->b:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPreloadListener;->onStoryAudioPreload(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;Z)V

    .line 146
    :cond_0
    return-void
.end method

.method public onLiveDataReady(Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;Ljava/lang/Object;)V
    .locals 3
    .param p1, "op"    # Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$1;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPreloadListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$1;->a:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPreloadListener;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$1;->b:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPreloadListener;->onStoryAudioPreload(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;Z)V

    .line 139
    :cond_0
    return-void
.end method

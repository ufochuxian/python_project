.class Lcom/jiliguala/niuwa/module/story/data/ArtworkManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;->get(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;)V
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
        "Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;",
        "Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;

.field final synthetic b:Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager$1;->b:Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager$1;->a:Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;)V
    .locals 1
    .param p1, "op"    # Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;
    .param p2, "deferredAsset"    # Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager$1;->a:Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->onArtworkPreload()V

    .line 32
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "op"    # Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;
    .param p2, "error"    # Ljava/lang/Exception;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager$1;->a:Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->onArtworkPreload()V

    .line 40
    return-void
.end method

.method public synthetic onLiveDataFailed(Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager$1;->a(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onLiveDataReady(Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    check-cast p2, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager$1;->a(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;)V

    return-void
.end method

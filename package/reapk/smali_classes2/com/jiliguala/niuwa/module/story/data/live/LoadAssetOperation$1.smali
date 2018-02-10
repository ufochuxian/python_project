.class Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->begin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/k$b",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

.field final synthetic b:Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation$1;->b:Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation$1;->a:Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 6
    .param p1, "response"    # [B

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation$1;->b:Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->access$000(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;)Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation$1;->a:Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    invoke-interface {v0, v1, p1}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->putBytes(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;[B)V

    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation$1;->b:Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation$1;->a:Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation$1;->b:Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->access$100(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;)Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation$1;->b:Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->access$000(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;)Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation$1;->b:Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->access$200(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;)Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;-><init>(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;[Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->onResult(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation$1;->a([B)V

    return-void
.end method

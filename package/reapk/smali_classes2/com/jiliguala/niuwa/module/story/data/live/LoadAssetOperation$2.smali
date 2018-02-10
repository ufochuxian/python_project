.class Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->begin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation$2;->a:Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation$2;->a:Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->onError(Ljava/lang/Exception;)V

    .line 64
    return-void
.end method

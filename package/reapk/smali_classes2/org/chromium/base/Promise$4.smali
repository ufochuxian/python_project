.class Lorg/chromium/base/Promise$4;
.super Lorg/chromium/base/Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/Promise;->then(Lorg/chromium/base/Promise$AsyncFunction;)Lorg/chromium/base/Promise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/Callback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/base/Promise;

.field final synthetic val$function:Lorg/chromium/base/Promise$AsyncFunction;

.field final synthetic val$promise:Lorg/chromium/base/Promise;


# direct methods
.method constructor <init>(Lorg/chromium/base/Promise;Lorg/chromium/base/Promise$AsyncFunction;Lorg/chromium/base/Promise;)V
    .locals 0

    .prologue
    .line 205
    .local p0, "this":Lorg/chromium/base/Promise$4;, "Lorg/chromium/base/Promise.4;"
    iput-object p1, p0, Lorg/chromium/base/Promise$4;->this$0:Lorg/chromium/base/Promise;

    iput-object p2, p0, Lorg/chromium/base/Promise$4;->val$function:Lorg/chromium/base/Promise$AsyncFunction;

    iput-object p3, p0, Lorg/chromium/base/Promise$4;->val$promise:Lorg/chromium/base/Promise;

    invoke-direct {p0}, Lorg/chromium/base/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lorg/chromium/base/Promise$4;, "Lorg/chromium/base/Promise.4;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lorg/chromium/base/Promise$4;->val$function:Lorg/chromium/base/Promise$AsyncFunction;

    invoke-interface {v1, p1}, Lorg/chromium/base/Promise$AsyncFunction;->apply(Ljava/lang/Object;)Lorg/chromium/base/Promise;

    move-result-object v1

    new-instance v2, Lorg/chromium/base/Promise$4$1;

    invoke-direct {v2, p0}, Lorg/chromium/base/Promise$4$1;-><init>(Lorg/chromium/base/Promise$4;)V

    iget-object v3, p0, Lorg/chromium/base/Promise$4;->val$promise:Lorg/chromium/base/Promise;

    invoke-static {v3}, Lorg/chromium/base/Promise;->access$000(Lorg/chromium/base/Promise;)Lorg/chromium/base/Callback;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/chromium/base/Promise;->then(Lorg/chromium/base/Callback;Lorg/chromium/base/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/chromium/base/Promise$4;->val$promise:Lorg/chromium/base/Promise;

    invoke-virtual {v1, v0}, Lorg/chromium/base/Promise;->reject(Ljava/lang/Exception;)V

    goto :goto_0
.end method

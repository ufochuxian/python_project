.class Lorg/chromium/base/Promise$3;
.super Lorg/chromium/base/Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/Promise;->then(Lorg/chromium/base/Promise$Function;)Lorg/chromium/base/Promise;
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

.field final synthetic val$function:Lorg/chromium/base/Promise$Function;

.field final synthetic val$promise:Lorg/chromium/base/Promise;


# direct methods
.method constructor <init>(Lorg/chromium/base/Promise;Lorg/chromium/base/Promise;Lorg/chromium/base/Promise$Function;)V
    .locals 0

    .prologue
    .line 173
    .local p0, "this":Lorg/chromium/base/Promise$3;, "Lorg/chromium/base/Promise.3;"
    iput-object p1, p0, Lorg/chromium/base/Promise$3;->this$0:Lorg/chromium/base/Promise;

    iput-object p2, p0, Lorg/chromium/base/Promise$3;->val$promise:Lorg/chromium/base/Promise;

    iput-object p3, p0, Lorg/chromium/base/Promise$3;->val$function:Lorg/chromium/base/Promise$Function;

    invoke-direct {p0}, Lorg/chromium/base/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lorg/chromium/base/Promise$3;, "Lorg/chromium/base/Promise.3;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lorg/chromium/base/Promise$3;->val$promise:Lorg/chromium/base/Promise;

    iget-object v2, p0, Lorg/chromium/base/Promise$3;->val$function:Lorg/chromium/base/Promise$Function;

    invoke-interface {v2, p1}, Lorg/chromium/base/Promise$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/base/Promise;->fulfill(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/chromium/base/Promise$3;->val$promise:Lorg/chromium/base/Promise;

    invoke-virtual {v1, v0}, Lorg/chromium/base/Promise;->reject(Ljava/lang/Exception;)V

    goto :goto_0
.end method

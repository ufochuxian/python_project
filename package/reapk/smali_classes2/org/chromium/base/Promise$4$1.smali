.class Lorg/chromium/base/Promise$4$1;
.super Lorg/chromium/base/Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/Promise$4;->onResult(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/Callback",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/base/Promise$4;


# direct methods
.method constructor <init>(Lorg/chromium/base/Promise$4;)V
    .locals 0

    .prologue
    .line 211
    .local p0, "this":Lorg/chromium/base/Promise$4$1;, "Lorg/chromium/base/Promise$4.1;"
    iput-object p1, p0, Lorg/chromium/base/Promise$4$1;->this$1:Lorg/chromium/base/Promise$4;

    invoke-direct {p0}, Lorg/chromium/base/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lorg/chromium/base/Promise$4$1;, "Lorg/chromium/base/Promise$4.1;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lorg/chromium/base/Promise$4$1;->this$1:Lorg/chromium/base/Promise$4;

    iget-object v0, v0, Lorg/chromium/base/Promise$4;->val$promise:Lorg/chromium/base/Promise;

    invoke-virtual {v0, p1}, Lorg/chromium/base/Promise;->fulfill(Ljava/lang/Object;)V

    .line 215
    return-void
.end method

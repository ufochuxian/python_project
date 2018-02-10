.class Lrx/internal/operators/cp$2$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cp$2;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lrx/internal/operators/OnSubscribePublishMulticast;

.field final synthetic c:Lrx/internal/operators/cp$2;


# direct methods
.method constructor <init>(Lrx/internal/operators/cp$2;Lrx/l;Lrx/internal/operators/OnSubscribePublishMulticast;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lrx/internal/operators/cp$2$1;->c:Lrx/internal/operators/cp$2;

    iput-object p2, p0, Lrx/internal/operators/cp$2$1;->a:Lrx/l;

    iput-object p3, p0, Lrx/internal/operators/cp$2$1;->b:Lrx/internal/operators/OnSubscribePublishMulticast;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lrx/internal/operators/cp$2$1;->b:Lrx/internal/operators/OnSubscribePublishMulticast;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribePublishMulticast;->unsubscribe()V

    .line 146
    iget-object v0, p0, Lrx/internal/operators/cp$2$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 147
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 139
    iget-object v0, p0, Lrx/internal/operators/cp$2$1;->b:Lrx/internal/operators/OnSubscribePublishMulticast;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribePublishMulticast;->unsubscribe()V

    .line 140
    iget-object v0, p0, Lrx/internal/operators/cp$2$1;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 141
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "t":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lrx/internal/operators/cp$2$1;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public setProducer(Lrx/g;)V
    .locals 1
    .param p1, "p"    # Lrx/g;

    .prologue
    .line 151
    iget-object v0, p0, Lrx/internal/operators/cp$2$1;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 152
    return-void
.end method

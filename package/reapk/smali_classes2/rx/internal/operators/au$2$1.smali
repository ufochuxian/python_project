.class Lrx/internal/operators/au$2$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/au$2;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lrx/internal/operators/au$2;


# direct methods
.method constructor <init>(Lrx/internal/operators/au$2;)V
    .locals 0

    .prologue
    .line 220
    .local p0, "this":Lrx/internal/operators/au$2$1;, "Lrx/internal/operators/au$2.1;"
    iput-object p1, p0, Lrx/internal/operators/au$2$1;->b:Lrx/internal/operators/au$2;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    .line 254
    .local p0, "this":Lrx/internal/operators/au$2$1;, "Lrx/internal/operators/au$2.1;"
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/au$2$1;->b:Lrx/internal/operators/au$2;

    iget-object v2, v2, Lrx/internal/operators/au$2;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 255
    .local v0, "cc":J
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 256
    iget-object v2, p0, Lrx/internal/operators/au$2$1;->b:Lrx/internal/operators/au$2;

    iget-object v2, v2, Lrx/internal/operators/au$2;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    invoke-virtual {v2, v0, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    :cond_1
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 225
    .local p0, "this":Lrx/internal/operators/au$2$1;, "Lrx/internal/operators/au$2.1;"
    iget-boolean v0, p0, Lrx/internal/operators/au$2$1;->a:Z

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/au$2$1;->a:Z

    .line 227
    invoke-virtual {p0}, Lrx/internal/operators/au$2$1;->unsubscribe()V

    .line 228
    iget-object v0, p0, Lrx/internal/operators/au$2$1;->b:Lrx/internal/operators/au$2;

    iget-object v0, v0, Lrx/internal/operators/au$2;->b:Lrx/h/f;

    invoke-static {}, Lrx/Notification;->a()Lrx/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h/f;->onNext(Ljava/lang/Object;)V

    .line 230
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 234
    .local p0, "this":Lrx/internal/operators/au$2$1;, "Lrx/internal/operators/au$2.1;"
    iget-boolean v0, p0, Lrx/internal/operators/au$2$1;->a:Z

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/au$2$1;->a:Z

    .line 236
    invoke-virtual {p0}, Lrx/internal/operators/au$2$1;->unsubscribe()V

    .line 237
    iget-object v0, p0, Lrx/internal/operators/au$2$1;->b:Lrx/internal/operators/au$2;

    iget-object v0, v0, Lrx/internal/operators/au$2;->b:Lrx/h/f;

    invoke-static {p1}, Lrx/Notification;->a(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h/f;->onNext(Ljava/lang/Object;)V

    .line 239
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lrx/internal/operators/au$2$1;, "Lrx/internal/operators/au$2.1;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/au$2$1;->a:Z

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lrx/internal/operators/au$2$1;->b:Lrx/internal/operators/au$2;

    iget-object v0, v0, Lrx/internal/operators/au$2;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 245
    invoke-direct {p0}, Lrx/internal/operators/au$2$1;->a()V

    .line 246
    iget-object v0, p0, Lrx/internal/operators/au$2$1;->b:Lrx/internal/operators/au$2;

    iget-object v0, v0, Lrx/internal/operators/au$2;->c:Lrx/internal/producers/a;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lrx/internal/producers/a;->a(J)V

    .line 248
    :cond_0
    return-void
.end method

.method public setProducer(Lrx/g;)V
    .locals 1
    .param p1, "producer"    # Lrx/g;

    .prologue
    .line 267
    .local p0, "this":Lrx/internal/operators/au$2$1;, "Lrx/internal/operators/au$2.1;"
    iget-object v0, p0, Lrx/internal/operators/au$2$1;->b:Lrx/internal/operators/au$2;

    iget-object v0, v0, Lrx/internal/operators/au$2;->c:Lrx/internal/producers/a;

    invoke-virtual {v0, p1}, Lrx/internal/producers/a;->a(Lrx/g;)V

    .line 268
    return-void
.end method

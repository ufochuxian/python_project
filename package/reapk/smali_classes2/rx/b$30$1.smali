.class Lrx/b$30$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b$30;->a(Lrx/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lrx/i/b;

.field final synthetic c:Lrx/d;

.field final synthetic d:Lrx/b$30;


# direct methods
.method constructor <init>(Lrx/b$30;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/i/b;Lrx/d;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lrx/b$30$1;->d:Lrx/b$30;

    iput-object p2, p0, Lrx/b$30$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lrx/b$30$1;->b:Lrx/i/b;

    iput-object p4, p0, Lrx/b$30$1;->c:Lrx/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lrx/b$30$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lrx/b$30$1;->b:Lrx/i/b;

    invoke-virtual {v0}, Lrx/i/b;->unsubscribe()V

    .line 200
    iget-object v0, p0, Lrx/b$30$1;->c:Lrx/d;

    invoke-interface {v0}, Lrx/d;->onCompleted()V

    .line 202
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 206
    iget-object v0, p0, Lrx/b$30$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lrx/b$30$1;->b:Lrx/i/b;

    invoke-virtual {v0}, Lrx/i/b;->unsubscribe()V

    .line 208
    iget-object v0, p0, Lrx/b$30$1;->c:Lrx/d;

    invoke-interface {v0, p1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 1
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 216
    iget-object v0, p0, Lrx/b$30$1;->b:Lrx/i/b;

    invoke-virtual {v0, p1}, Lrx/i/b;->a(Lrx/m;)V

    .line 217
    return-void
.end method

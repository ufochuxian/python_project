.class public final Lrx/internal/operators/f$a;
.super Lrx/l;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<",
        "Lrx/Notification",
        "<+TT;>;>;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final a:I


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lrx/Notification",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field private c:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    sget v0, Lrx/internal/util/j;->b:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    sput v0, Lrx/internal/operators/f$a;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/f$a;, "Lrx/internal/operators/f$a<TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/f$a;->b:Ljava/util/concurrent/BlockingQueue;

    .line 67
    return-void
.end method

.method private a()Lrx/Notification;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Notification",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lrx/internal/operators/f$a;, "Lrx/internal/operators/f$a<TT;>;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/f$a;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Notification;

    .line 118
    .local v1, "poll":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    if-eqz v1, :cond_0

    .line 121
    .end local v1    # "poll":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :goto_0
    return-object v1

    .restart local v1    # "poll":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/f$a;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Notification;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 122
    .end local v1    # "poll":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lrx/internal/operators/f$a;->unsubscribe()V

    .line 124
    invoke-static {v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public a(Lrx/Notification;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/f$a;, "Lrx/internal/operators/f$a<TT;>;"
    .local p1, "args":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    iget-object v0, p0, Lrx/internal/operators/f$a;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    .local p0, "this":Lrx/internal/operators/f$a;, "Lrx/internal/operators/f$a<TT;>;"
    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Lrx/internal/operators/f$a;->c:Lrx/Notification;

    if-nez v1, :cond_0

    .line 92
    invoke-direct {p0}, Lrx/internal/operators/f$a;->a()Lrx/Notification;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/f$a;->c:Lrx/Notification;

    .line 93
    iget v1, p0, Lrx/internal/operators/f$a;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lrx/internal/operators/f$a;->d:I

    .line 94
    iget v1, p0, Lrx/internal/operators/f$a;->d:I

    sget v2, Lrx/internal/operators/f$a;->a:I

    if-lt v1, v2, :cond_0

    .line 95
    iget v1, p0, Lrx/internal/operators/f$a;->d:I

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/f$a;->request(J)V

    .line 96
    iput v0, p0, Lrx/internal/operators/f$a;->d:I

    .line 99
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/f$a;->c:Lrx/Notification;

    invoke-virtual {v1}, Lrx/Notification;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iget-object v0, p0, Lrx/internal/operators/f$a;->c:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->b()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 102
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/f$a;->c:Lrx/Notification;

    invoke-virtual {v1}, Lrx/Notification;->h()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lrx/internal/operators/f$a;, "Lrx/internal/operators/f$a<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/f$a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lrx/internal/operators/f$a;->c:Lrx/Notification;

    invoke-virtual {v1}, Lrx/Notification;->c()Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "result":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/f$a;->c:Lrx/Notification;

    .line 110
    return-object v0

    .line 112
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/f$a;, "Lrx/internal/operators/f$a<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/f$a;, "Lrx/internal/operators/f$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/f$a;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Lrx/Notification;->a(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/f$a;, "Lrx/internal/operators/f$a<TT;>;"
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/f$a;->a(Lrx/Notification;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/operators/f$a;, "Lrx/internal/operators/f$a<TT;>;"
    sget v0, Lrx/internal/util/j;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/f$a;->request(J)V

    .line 72
    return-void
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 130
    .local p0, "this":Lrx/internal/operators/f$a;, "Lrx/internal/operators/f$a<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

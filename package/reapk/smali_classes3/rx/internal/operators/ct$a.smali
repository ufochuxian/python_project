.class final Lrx/internal/operators/ct$a;
.super Lrx/l;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<TT;>;",
        "Lrx/c/b;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/ct$a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/ct$a;, "Lrx/internal/operators/ct$a<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/ct$a;->c:Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/operators/ct$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 70
    iput-object p1, p0, Lrx/internal/operators/ct$a;->b:Lrx/l;

    .line 71
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 102
    .local p0, "this":Lrx/internal/operators/ct$a;, "Lrx/internal/operators/ct$a<TT;>;"
    iget-object v3, p0, Lrx/internal/operators/ct$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lrx/internal/operators/ct$a;->c:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 103
    .local v1, "localValue":Ljava/lang/Object;
    sget-object v3, Lrx/internal/operators/ct$a;->c:Ljava/lang/Object;

    if-eq v1, v3, :cond_0

    .line 106
    move-object v2, v1

    .line 107
    .local v2, "v":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/ct$a;->b:Lrx/l;

    invoke-virtual {v3, v2}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-void

    .line 108
    .restart local v2    # "v":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_0
.end method


# virtual methods
.method public call()V
    .locals 0

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/ct$a;, "Lrx/internal/operators/ct$a<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/ct$a;->a()V

    .line 99
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/ct$a;, "Lrx/internal/operators/ct$a<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/ct$a;->a()V

    .line 92
    iget-object v0, p0, Lrx/internal/operators/ct$a;->b:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 93
    invoke-virtual {p0}, Lrx/internal/operators/ct$a;->unsubscribe()V

    .line 94
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/operators/ct$a;, "Lrx/internal/operators/ct$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ct$a;->b:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 86
    invoke-virtual {p0}, Lrx/internal/operators/ct$a;->unsubscribe()V

    .line 87
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lrx/internal/operators/ct$a;, "Lrx/internal/operators/ct$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/ct$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 75
    .local p0, "this":Lrx/internal/operators/ct$a;, "Lrx/internal/operators/ct$a<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/ct$a;->request(J)V

    .line 76
    return-void
.end method

.class final Lrx/internal/operators/g$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/f",
        "<-TT;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6f6495c06abce580L


# instance fields
.field final a:Ljava/lang/Object;

.field b:Z

.field final c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/g$b;, "Lrx/internal/operators/g$b<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/g$b;->a:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/g$b;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method


# virtual methods
.method a(Lrx/f;Lrx/f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/f",
            "<-TT;>;",
            "Lrx/f",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/g$b;, "Lrx/internal/operators/g$b<TT;>;"
    .local p1, "expected":Lrx/f;, "Lrx/f<-TT;>;"
    .local p2, "next":Lrx/f;, "Lrx/f<-TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/g$b;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

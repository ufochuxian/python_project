.class public final Lrx/internal/operators/cs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field static final b:Ljava/lang/Object;


# instance fields
.field final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/cs;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/cs;, "Lrx/internal/operators/cs<TT;TU;>;"
    .local p1, "sampler":Lrx/e;, "Lrx/e<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lrx/internal/operators/cs;->a:Lrx/e;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/cs;, "Lrx/internal/operators/cs<TT;TU;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v2, Lrx/e/g;

    invoke-direct {v2, p1}, Lrx/e/g;-><init>(Lrx/l;)V

    .line 45
    .local v2, "s":Lrx/e/g;, "Lrx/e/g<TT;>;"
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v5, Lrx/internal/operators/cs;->b:Ljava/lang/Object;

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 47
    .local v4, "value":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 49
    .local v0, "main":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/m;>;"
    new-instance v3, Lrx/internal/operators/cs$1;

    invoke-direct {v3, p0, v4, v2, v0}, Lrx/internal/operators/cs$1;-><init>(Lrx/internal/operators/cs;Ljava/util/concurrent/atomic/AtomicReference;Lrx/e/g;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 76
    .local v3, "samplerSub":Lrx/l;, "Lrx/l<TU;>;"
    new-instance v1, Lrx/internal/operators/cs$2;

    invoke-direct {v1, p0, v4, v2, v3}, Lrx/internal/operators/cs$2;-><init>(Lrx/internal/operators/cs;Ljava/util/concurrent/atomic/AtomicReference;Lrx/e/g;Lrx/l;)V

    .line 98
    .local v1, "result":Lrx/l;, "Lrx/l<TT;>;"
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 101
    invoke-virtual {p1, v3}, Lrx/l;->add(Lrx/m;)V

    .line 103
    iget-object v5, p0, Lrx/internal/operators/cs;->a:Lrx/e;

    invoke-virtual {v5, v3}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 105
    return-object v1
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/cs;, "Lrx/internal/operators/cs<TT;TU;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/cs;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

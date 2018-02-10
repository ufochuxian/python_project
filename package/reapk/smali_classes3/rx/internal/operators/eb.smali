.class public final Lrx/internal/operators/eb;
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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<TR;TT;>;"
    }
.end annotation


# static fields
.field static final c:Ljava/lang/Object;


# instance fields
.field final a:Lrx/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/q",
            "<-TT;-TU;+TR;>;"
        }
    .end annotation
.end field

.field final b:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/eb;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/e;Lrx/c/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TU;>;",
            "Lrx/c/q",
            "<-TT;-TU;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/eb;, "Lrx/internal/operators/eb<TT;TU;TR;>;"
    .local p1, "other":Lrx/e;, "Lrx/e<+TU;>;"
    .local p2, "resultSelector":Lrx/c/q;, "Lrx/c/q<-TT;-TU;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/internal/operators/eb;->b:Lrx/e;

    .line 40
    iput-object p2, p0, Lrx/internal/operators/eb;->a:Lrx/c/q;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/eb;, "Lrx/internal/operators/eb<TT;TU;TR;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TR;>;"
    new-instance v2, Lrx/e/g;

    const/4 v1, 0x0

    invoke-direct {v2, p1, v1}, Lrx/e/g;-><init>(Lrx/l;Z)V

    .line 46
    .local v2, "s":Lrx/e/g;, "Lrx/e/g<TR;>;"
    invoke-virtual {p1, v2}, Lrx/l;->add(Lrx/m;)V

    .line 48
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/eb;->c:Ljava/lang/Object;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 50
    .local v4, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    new-instance v0, Lrx/internal/operators/eb$1;

    const/4 v3, 0x1

    move-object v1, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/eb$1;-><init>(Lrx/internal/operators/eb;Lrx/l;ZLjava/util/concurrent/atomic/AtomicReference;Lrx/e/g;)V

    .line 78
    .local v0, "subscriber":Lrx/l;, "Lrx/l<TT;>;"
    new-instance v6, Lrx/internal/operators/eb$2;

    invoke-direct {v6, p0, v4, v2}, Lrx/internal/operators/eb$2;-><init>(Lrx/internal/operators/eb;Ljava/util/concurrent/atomic/AtomicReference;Lrx/e/g;)V

    .line 96
    .local v6, "otherSubscriber":Lrx/l;, "Lrx/l<TU;>;"
    invoke-virtual {v2, v0}, Lrx/e/g;->add(Lrx/m;)V

    .line 97
    invoke-virtual {v2, v6}, Lrx/e/g;->add(Lrx/m;)V

    .line 99
    iget-object v1, p0, Lrx/internal/operators/eb;->b:Lrx/e;

    invoke-virtual {v1, v6}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 101
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/eb;, "Lrx/internal/operators/eb<TT;TU;TR;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/eb;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

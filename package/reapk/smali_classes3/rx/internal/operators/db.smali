.class public final Lrx/internal/operators/db;
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
    .line 38
    .local p0, "this":Lrx/internal/operators/db;, "Lrx/internal/operators/db<TT;TU;>;"
    .local p1, "other":Lrx/e;, "Lrx/e<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/internal/operators/db;->a:Lrx/e;

    .line 40
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 4
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
    .line 44
    .local p0, "this":Lrx/internal/operators/db;, "Lrx/internal/operators/db<TT;TU;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v1, Lrx/e/g;

    invoke-direct {v1, p1}, Lrx/e/g;-><init>(Lrx/l;)V

    .line 45
    .local v1, "s":Lrx/e/g;, "Lrx/e/g<TT;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 47
    .local v0, "gate":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Lrx/internal/operators/db$1;

    invoke-direct {v2, p0, v0, v1}, Lrx/internal/operators/db$1;-><init>(Lrx/internal/operators/db;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/e/g;)V

    .line 66
    .local v2, "u":Lrx/l;, "Lrx/l<TU;>;"
    invoke-virtual {p1, v2}, Lrx/l;->add(Lrx/m;)V

    .line 67
    iget-object v3, p0, Lrx/internal/operators/db;->a:Lrx/e;

    invoke-virtual {v3, v2}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 69
    new-instance v3, Lrx/internal/operators/db$2;

    invoke-direct {v3, p0, p1, v0, v1}, Lrx/internal/operators/db$2;-><init>(Lrx/internal/operators/db;Lrx/l;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/e/g;)V

    return-object v3
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/db;, "Lrx/internal/operators/db<TT;TU;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/db;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

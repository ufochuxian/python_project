.class public final Lrx/internal/operators/cr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/cr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<TT;",
        "Lrx/e",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/q",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/q",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/cr;, "Lrx/internal/operators/cr<TT;>;"
    .local p1, "predicate":Lrx/c/q;, "Lrx/c/q<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lrx/internal/operators/cr;->a:Lrx/c/q;

    .line 30
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
            "<-",
            "Lrx/e",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/cr;, "Lrx/internal/operators/cr<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->trampoline()Lrx/h;

    move-result-object v0

    invoke-virtual {v0}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v3

    .line 35
    .local v3, "inner":Lrx/h$a;
    invoke-virtual {p1, v3}, Lrx/l;->add(Lrx/m;)V

    .line 37
    new-instance v4, Lrx/i/e;

    invoke-direct {v4}, Lrx/i/e;-><init>()V

    .line 39
    .local v4, "serialSubscription":Lrx/i/e;
    invoke-virtual {p1, v4}, Lrx/l;->add(Lrx/m;)V

    .line 40
    new-instance v5, Lrx/internal/producers/a;

    invoke-direct {v5}, Lrx/internal/producers/a;-><init>()V

    .line 41
    .local v5, "pa":Lrx/internal/producers/a;
    invoke-virtual {p1, v5}, Lrx/l;->setProducer(Lrx/g;)V

    .line 42
    new-instance v0, Lrx/internal/operators/cr$a;

    iget-object v2, p0, Lrx/internal/operators/cr;->a:Lrx/c/q;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/cr$a;-><init>(Lrx/l;Lrx/c/q;Lrx/h$a;Lrx/i/e;Lrx/internal/producers/a;)V

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    .local p0, "this":Lrx/internal/operators/cr;, "Lrx/internal/operators/cr<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/cr;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

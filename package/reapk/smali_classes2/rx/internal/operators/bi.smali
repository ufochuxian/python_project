.class public final Lrx/internal/operators/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<",
        "Ljava/lang/Boolean;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/bi;, "Lrx/internal/operators/bi<TT;>;"
    .local p1, "predicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/bi;->a:Lrx/c/p;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/bi;, "Lrx/internal/operators/bi<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/producers/SingleDelayedProducer;

    invoke-direct {v0, p1}, Lrx/internal/producers/SingleDelayedProducer;-><init>(Lrx/l;)V

    .line 42
    .local v0, "producer":Lrx/internal/producers/SingleDelayedProducer;, "Lrx/internal/producers/SingleDelayedProducer<Ljava/lang/Boolean;>;"
    new-instance v1, Lrx/internal/operators/bi$1;

    invoke-direct {v1, p0, v0, p1}, Lrx/internal/operators/bi$1;-><init>(Lrx/internal/operators/bi;Lrx/internal/producers/SingleDelayedProducer;Lrx/l;)V

    .line 84
    .local v1, "s":Lrx/l;, "Lrx/l<TT;>;"
    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 85
    invoke-virtual {p1, v0}, Lrx/l;->setProducer(Lrx/g;)V

    .line 86
    return-object v1
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/bi;, "Lrx/internal/operators/bi<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/bi;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

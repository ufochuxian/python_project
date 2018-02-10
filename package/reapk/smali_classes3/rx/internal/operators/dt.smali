.class public final Lrx/internal/operators/dt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/dt$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/dt;, "Lrx/internal/operators/dt<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static a()Lrx/internal/operators/dt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/dt",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lrx/internal/operators/dt$a;->a:Lrx/internal/operators/dt;

    return-object v0
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/dt;, "Lrx/internal/operators/dt<TT;>;"
    .local p1, "o":Lrx/l;, "Lrx/l<-Ljava/util/List<TT;>;>;"
    new-instance v0, Lrx/internal/producers/SingleDelayedProducer;

    invoke-direct {v0, p1}, Lrx/internal/producers/SingleDelayedProducer;-><init>(Lrx/l;)V

    .line 61
    .local v0, "producer":Lrx/internal/producers/SingleDelayedProducer;, "Lrx/internal/producers/SingleDelayedProducer<Ljava/util/List<TT;>;>;"
    new-instance v1, Lrx/internal/operators/dt$1;

    invoke-direct {v1, p0, v0, p1}, Lrx/internal/operators/dt$1;-><init>(Lrx/internal/operators/dt;Lrx/internal/producers/SingleDelayedProducer;Lrx/l;)V

    .line 115
    .local v1, "result":Lrx/l;, "Lrx/l<TT;>;"
    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 116
    invoke-virtual {p1, v0}, Lrx/l;->setProducer(Lrx/g;)V

    .line 117
    return-object v1
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/dt;, "Lrx/internal/operators/dt<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/dt;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

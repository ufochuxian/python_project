.class public final Lrx/internal/operators/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/cf$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<TR;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-",
            "Ljava/lang/Throwable;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final c:Lrx/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/o",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/p;Lrx/c/p;Lrx/c/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;+TR;>;",
            "Lrx/c/p",
            "<-",
            "Ljava/lang/Throwable;",
            "+TR;>;",
            "Lrx/c/o",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/cf;, "Lrx/internal/operators/cf<TT;TR;>;"
    .local p1, "onNext":Lrx/c/p;, "Lrx/c/p<-TT;+TR;>;"
    .local p2, "onError":Lrx/c/p;, "Lrx/c/p<-Ljava/lang/Throwable;+TR;>;"
    .local p3, "onCompleted":Lrx/c/o;, "Lrx/c/o<+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lrx/internal/operators/cf;->a:Lrx/c/p;

    .line 41
    iput-object p2, p0, Lrx/internal/operators/cf;->b:Lrx/c/p;

    .line 42
    iput-object p3, p0, Lrx/internal/operators/cf;->c:Lrx/c/o;

    .line 43
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 4
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
    .line 47
    .local p0, "this":Lrx/internal/operators/cf;, "Lrx/internal/operators/cf<TT;TR;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TR;>;"
    new-instance v0, Lrx/internal/operators/cf$a;

    iget-object v1, p0, Lrx/internal/operators/cf;->a:Lrx/c/p;

    iget-object v2, p0, Lrx/internal/operators/cf;->b:Lrx/c/p;

    iget-object v3, p0, Lrx/internal/operators/cf;->c:Lrx/c/o;

    invoke-direct {v0, p1, v1, v2, v3}, Lrx/internal/operators/cf$a;-><init>(Lrx/l;Lrx/c/p;Lrx/c/p;Lrx/c/o;)V

    .line 48
    .local v0, "parent":Lrx/internal/operators/cf$a;, "Lrx/internal/operators/cf$a<TT;TR;>;"
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 49
    new-instance v1, Lrx/internal/operators/cf$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/cf$1;-><init>(Lrx/internal/operators/cf;Lrx/internal/operators/cf$a;)V

    invoke-virtual {p1, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 55
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/cf;, "Lrx/internal/operators/cf<TT;TR;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/cf;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

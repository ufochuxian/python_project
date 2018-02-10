.class final Lrx/internal/operators/cr$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/cr;
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
        "<",
        "Lrx/e",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/q;
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

.field final c:Lrx/h$a;

.field final d:Lrx/i/e;

.field final e:Lrx/internal/producers/a;

.field final f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/l;Lrx/c/q;Lrx/h$a;Lrx/i/e;Lrx/internal/producers/a;)V
    .locals 1
    .param p3, "inner"    # Lrx/h$a;
    .param p4, "serialSubscription"    # Lrx/i/e;
    .param p5, "pa"    # Lrx/internal/producers/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;",
            "Lrx/c/q",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lrx/h$a;",
            "Lrx/i/e;",
            "Lrx/internal/producers/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/cr$a;, "Lrx/internal/operators/cr$a<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    .local p2, "predicate":Lrx/c/q;, "Lrx/c/q<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/cr$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    iput-object p1, p0, Lrx/internal/operators/cr$a;->a:Lrx/l;

    .line 60
    iput-object p2, p0, Lrx/internal/operators/cr$a;->b:Lrx/c/q;

    .line 61
    iput-object p3, p0, Lrx/internal/operators/cr$a;->c:Lrx/h$a;

    .line 62
    iput-object p4, p0, Lrx/internal/operators/cr$a;->d:Lrx/i/e;

    .line 63
    iput-object p5, p0, Lrx/internal/operators/cr$a;->e:Lrx/internal/producers/a;

    .line 64
    return-void
.end method


# virtual methods
.method public a(Lrx/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/cr$a;, "Lrx/internal/operators/cr$a<TT;>;"
    .local p1, "o":Lrx/e;, "Lrx/e<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/cr$a;->c:Lrx/h$a;

    new-instance v1, Lrx/internal/operators/cr$a$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/cr$a$1;-><init>(Lrx/internal/operators/cr$a;Lrx/e;)V

    invoke-virtual {v0, v1}, Lrx/h$a;->a(Lrx/c/b;)Lrx/m;

    .line 130
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/cr$a;, "Lrx/internal/operators/cr$a<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/operators/cr$a;, "Lrx/internal/operators/cr$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/cr$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/cr$a;, "Lrx/internal/operators/cr$a<TT;>;"
    check-cast p1, Lrx/e;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/cr$a;->a(Lrx/e;)V

    return-void
.end method

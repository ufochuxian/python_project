.class public final Lrx/internal/operators/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/ae$c;,
        Lrx/internal/operators/ae$a;,
        Lrx/internal/operators/ae$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TT;>;"
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
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/ae;, "Lrx/internal/operators/ae<TT;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/internal/operators/ae;->a:Lrx/e;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/ae;, "Lrx/internal/operators/ae<TT;>;"
    .local p1, "t":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/internal/operators/ae$b;

    invoke-direct {v0, p1}, Lrx/internal/operators/ae$b;-><init>(Lrx/l;)V

    .line 40
    .local v0, "parent":Lrx/internal/operators/ae$b;, "Lrx/internal/operators/ae$b<TT;>;"
    new-instance v1, Lrx/internal/operators/ae$a;

    invoke-direct {v1, v0}, Lrx/internal/operators/ae$a;-><init>(Lrx/internal/operators/ae$b;)V

    .line 42
    .local v1, "producer":Lrx/internal/operators/ae$a;, "Lrx/internal/operators/ae$a<TT;>;"
    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 43
    invoke-virtual {p1, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 45
    iget-object v2, p0, Lrx/internal/operators/ae;->a:Lrx/e;

    invoke-virtual {v2, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 46
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/ae;, "Lrx/internal/operators/ae<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ae;->a(Lrx/l;)V

    return-void
.end method

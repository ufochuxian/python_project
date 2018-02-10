.class public final Lrx/internal/operators/bq;
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
.field final a:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<TU;>;>;"
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
            "<-TT;+",
            "Lrx/e",
            "<TU;>;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/bq;, "Lrx/internal/operators/bq<TT;TU;>;"
    .local p1, "selector":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<TU;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/bq;->a:Lrx/c/p;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 3
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
    .line 41
    .local p0, "this":Lrx/internal/operators/bq;, "Lrx/internal/operators/bq<TT;TU;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/e/g;

    invoke-direct {v0, p1}, Lrx/e/g;-><init>(Lrx/l;)V

    .line 42
    .local v0, "s":Lrx/e/g;, "Lrx/e/g<TT;>;"
    new-instance v1, Lrx/i/e;

    invoke-direct {v1}, Lrx/i/e;-><init>()V

    .line 43
    .local v1, "serial":Lrx/i/e;
    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 45
    new-instance v2, Lrx/internal/operators/bq$1;

    invoke-direct {v2, p0, p1, v0, v1}, Lrx/internal/operators/bq$1;-><init>(Lrx/internal/operators/bq;Lrx/l;Lrx/e/g;Lrx/i/e;)V

    return-object v2
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/bq;, "Lrx/internal/operators/bq<TT;TU;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/bq;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

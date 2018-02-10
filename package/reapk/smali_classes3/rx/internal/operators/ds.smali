.class public final Lrx/internal/operators/ds;
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
        "Lrx/schedulers/c",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/h;


# direct methods
.method public constructor <init>(Lrx/h;)V
    .locals 0
    .param p1, "scheduler"    # Lrx/h;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/ds;, "Lrx/internal/operators/ds<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/ds;->a:Lrx/h;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Lrx/schedulers/c",
            "<TT;>;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/ds;, "Lrx/internal/operators/ds<TT;>;"
    .local p1, "o":Lrx/l;, "Lrx/l<-Lrx/schedulers/c<TT;>;>;"
    new-instance v0, Lrx/internal/operators/ds$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/ds$1;-><init>(Lrx/internal/operators/ds;Lrx/l;Lrx/l;)V

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/ds;, "Lrx/internal/operators/ds<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ds;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

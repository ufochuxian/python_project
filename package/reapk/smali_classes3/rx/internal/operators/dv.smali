.class public Lrx/internal/operators/dv;
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
        "<TT;TT;>;"
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
    .local p0, "this":Lrx/internal/operators/dv;, "Lrx/internal/operators/dv<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/dv;->a:Lrx/h;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 2
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
    .line 38
    .local p0, "this":Lrx/internal/operators/dv;, "Lrx/internal/operators/dv<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/internal/operators/dv$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/dv$1;-><init>(Lrx/internal/operators/dv;Lrx/l;)V

    .line 57
    .local v0, "parent":Lrx/l;, "Lrx/l<TT;>;"
    new-instance v1, Lrx/internal/operators/dv$2;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/dv$2;-><init>(Lrx/internal/operators/dv;Lrx/l;)V

    invoke-static {v1}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 74
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/dv;, "Lrx/internal/operators/dv<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/dv;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

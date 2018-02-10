.class public Lrx/internal/operators/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/i$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/e;
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
    .line 31
    .local p0, "this":Lrx/internal/operators/ay;, "Lrx/internal/operators/ay<TT;>;"
    .local p1, "observable":Lrx/e;, "Lrx/e<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lrx/internal/operators/ay;->a:Lrx/e;

    .line 33
    return-void
.end method

.method public static a(Lrx/e;)Lrx/internal/operators/ay;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT;>;)",
            "Lrx/internal/operators/ay",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "observable":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/ay;

    invoke-direct {v0, p0}, Lrx/internal/operators/ay;-><init>(Lrx/e;)V

    return-object v0
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/ay;, "Lrx/internal/operators/ay<TT;>;"
    .local p1, "child":Lrx/k;, "Lrx/k<-TT;>;"
    new-instance v0, Lrx/internal/operators/ay$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/ay$1;-><init>(Lrx/internal/operators/ay;Lrx/k;)V

    .line 80
    .local v0, "parent":Lrx/l;, "Lrx/l<TT;>;"
    invoke-virtual {p1, v0}, Lrx/k;->a(Lrx/m;)V

    .line 81
    iget-object v1, p0, Lrx/internal/operators/ay;->a:Lrx/e;

    invoke-virtual {v1, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 82
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/ay;, "Lrx/internal/operators/ay<TT;>;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ay;->a(Lrx/k;)V

    return-void
.end method

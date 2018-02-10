.class public final Lrx/internal/operators/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
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
            "<+TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/e;Lrx/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/ac;, "Lrx/internal/operators/ac<TT;TU;>;"
    .local p1, "main":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "other":Lrx/e;, "Lrx/e<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/ac;->a:Lrx/e;

    .line 37
    iput-object p2, p0, Lrx/internal/operators/ac;->b:Lrx/e;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/ac;, "Lrx/internal/operators/ac<TT;TU;>;"
    .local p1, "t":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v2, Lrx/i/e;

    invoke-direct {v2}, Lrx/i/e;-><init>()V

    .line 44
    .local v2, "serial":Lrx/i/e;
    invoke-virtual {p1, v2}, Lrx/l;->add(Lrx/m;)V

    .line 46
    invoke-static {p1}, Lrx/e/h;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    .line 49
    .local v0, "child":Lrx/l;, "Lrx/l<TT;>;"
    new-instance v1, Lrx/internal/operators/ac$1;

    invoke-direct {v1, p0, v0, v2}, Lrx/internal/operators/ac$1;-><init>(Lrx/internal/operators/ac;Lrx/l;Lrx/i/e;)V

    .line 78
    .local v1, "otherSubscriber":Lrx/l;, "Lrx/l<TU;>;"
    invoke-virtual {v2, v1}, Lrx/i/e;->a(Lrx/m;)V

    .line 80
    iget-object v3, p0, Lrx/internal/operators/ac;->b:Lrx/e;

    invoke-virtual {v3, v1}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 81
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/ac;, "Lrx/internal/operators/ac<TT;TU;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ac;->a(Lrx/l;)V

    return-void
.end method

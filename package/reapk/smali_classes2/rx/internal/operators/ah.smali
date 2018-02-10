.class public final Lrx/internal/operators/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/ah$b;,
        Lrx/internal/operators/ah$a;
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
        "Lrx/e$a",
        "<TR;>;"
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

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I


# direct methods
.method protected constructor <init>(Lrx/e;Lrx/c/p;I)V
    .locals 0
    .param p3, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/c/p",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/ah;, "Lrx/internal/operators/ah<TT;TR;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "mapper":Lrx/c/p;, "Lrx/c/p<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lrx/internal/operators/ah;->a:Lrx/e;

    .line 50
    iput-object p2, p0, Lrx/internal/operators/ah;->b:Lrx/c/p;

    .line 51
    iput p3, p0, Lrx/internal/operators/ah;->c:I

    .line 52
    return-void
.end method

.method public static a(Lrx/e;Lrx/c/p;I)Lrx/e;
    .locals 2
    .param p2, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/c/p",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;I)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "source":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "mapper":Lrx/c/p;, "Lrx/c/p<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    instance-of v1, p0, Lrx/internal/util/k;

    if-eqz v1, :cond_0

    .line 72
    check-cast p0, Lrx/internal/util/k;

    .end local p0    # "source":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-virtual {p0}, Lrx/internal/util/k;->K()Ljava/lang/Object;

    move-result-object v0

    .line 73
    .local v0, "scalar":Ljava/lang/Object;, "TT;"
    new-instance v1, Lrx/internal/operators/ah$b;

    invoke-direct {v1, v0, p1}, Lrx/internal/operators/ah$b;-><init>(Ljava/lang/Object;Lrx/c/p;)V

    invoke-static {v1}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v1

    .line 75
    .end local v0    # "scalar":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v1

    .restart local p0    # "source":Lrx/e;, "Lrx/e<+TT;>;"
    :cond_0
    new-instance v1, Lrx/internal/operators/ah;

    invoke-direct {v1, p0, p1, p2}, Lrx/internal/operators/ah;-><init>(Lrx/e;Lrx/c/p;I)V

    invoke-static {v1}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/ah;, "Lrx/internal/operators/ah<TT;TR;>;"
    .local p1, "t":Lrx/l;, "Lrx/l<-TR;>;"
    new-instance v0, Lrx/internal/operators/ah$a;

    iget-object v1, p0, Lrx/internal/operators/ah;->b:Lrx/c/p;

    iget v2, p0, Lrx/internal/operators/ah;->c:I

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/ah$a;-><init>(Lrx/l;Lrx/c/p;I)V

    .line 58
    .local v0, "parent":Lrx/internal/operators/ah$a;, "Lrx/internal/operators/ah$a<TT;TR;>;"
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 59
    new-instance v1, Lrx/internal/operators/ah$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/ah$1;-><init>(Lrx/internal/operators/ah;Lrx/internal/operators/ah$a;)V

    invoke-virtual {p1, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 66
    iget-object v1, p0, Lrx/internal/operators/ah;->a:Lrx/e;

    invoke-virtual {v1, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 67
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/ah;, "Lrx/internal/operators/ah<TT;TR;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ah;->a(Lrx/l;)V

    return-void
.end method

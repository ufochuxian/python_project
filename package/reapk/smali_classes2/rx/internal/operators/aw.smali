.class public final Lrx/internal/operators/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/aw$a;
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
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final c:Lrx/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/q",
            "<TR;-TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/e;Ljava/lang/Object;Lrx/c/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;TR;",
            "Lrx/c/q",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/aw;, "Lrx/internal/operators/aw<TT;TR;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<TT;>;"
    .local p2, "initialValue":Ljava/lang/Object;, "TR;"
    .local p3, "reducer":Lrx/c/q;, "Lrx/c/q<TR;-TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/aw;->a:Lrx/e;

    .line 34
    iput-object p2, p0, Lrx/internal/operators/aw;->b:Ljava/lang/Object;

    .line 35
    iput-object p3, p0, Lrx/internal/operators/aw;->c:Lrx/c/q;

    .line 36
    return-void
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
    .line 40
    .local p0, "this":Lrx/internal/operators/aw;, "Lrx/internal/operators/aw<TT;TR;>;"
    .local p1, "t":Lrx/l;, "Lrx/l<-TR;>;"
    new-instance v0, Lrx/internal/operators/aw$a;

    iget-object v1, p0, Lrx/internal/operators/aw;->b:Ljava/lang/Object;

    iget-object v2, p0, Lrx/internal/operators/aw;->c:Lrx/c/q;

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/aw$a;-><init>(Lrx/l;Ljava/lang/Object;Lrx/c/q;)V

    iget-object v1, p0, Lrx/internal/operators/aw;->a:Lrx/e;

    invoke-virtual {v0, v1}, Lrx/internal/operators/aw$a;->a(Lrx/e;)V

    .line 41
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    .local p0, "this":Lrx/internal/operators/aw;, "Lrx/internal/operators/aw<TT;TR;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/aw;->a(Lrx/l;)V

    return-void
.end method

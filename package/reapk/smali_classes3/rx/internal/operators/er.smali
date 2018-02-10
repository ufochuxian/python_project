.class public final Lrx/internal/operators/er;
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
.field final a:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/i;Lrx/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/e",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/er;, "Lrx/internal/operators/er<TT;>;"
    .local p1, "main":Lrx/i;, "Lrx/i<+TT;>;"
    .local p2, "other":Lrx/e;, "Lrx/e<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/internal/operators/er;->a:Lrx/i;

    .line 35
    iput-object p2, p0, Lrx/internal/operators/er;->b:Lrx/e;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/er;, "Lrx/internal/operators/er<TT;>;"
    .local p1, "subscriber":Lrx/k;, "Lrx/k<-TT;>;"
    new-instance v0, Lrx/internal/operators/er$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/er$1;-><init>(Lrx/internal/operators/er;Lrx/k;)V

    .line 53
    .local v0, "child":Lrx/k;, "Lrx/k<TT;>;"
    new-instance v2, Lrx/i/e;

    invoke-direct {v2}, Lrx/i/e;-><init>()V

    .line 54
    .local v2, "serial":Lrx/i/e;
    invoke-virtual {p1, v2}, Lrx/k;->a(Lrx/m;)V

    .line 56
    new-instance v1, Lrx/internal/operators/er$2;

    invoke-direct {v1, p0, v0, v2}, Lrx/internal/operators/er$2;-><init>(Lrx/internal/operators/er;Lrx/k;Lrx/i/e;)V

    .line 85
    .local v1, "otherSubscriber":Lrx/l;, "Lrx/l<Ljava/lang/Object;>;"
    invoke-virtual {v2, v1}, Lrx/i/e;->a(Lrx/m;)V

    .line 87
    iget-object v3, p0, Lrx/internal/operators/er;->b:Lrx/e;

    invoke-virtual {v3, v1}, Lrx/e;->b(Lrx/l;)Lrx/m;

    .line 88
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/er;, "Lrx/internal/operators/er<TT;>;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/er;->a(Lrx/k;)V

    return-void
.end method

.class public final Lrx/internal/operators/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<TT;TT;>;"
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
            "Lrx/e",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/e;Lrx/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/bt;, "Lrx/internal/operators/bt<TT;TV;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "itemDelay":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lrx/internal/operators/bt;->a:Lrx/e;

    .line 39
    iput-object p2, p0, Lrx/internal/operators/bt;->b:Lrx/c/p;

    .line 40
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 4
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
    .line 44
    .local p0, "this":Lrx/internal/operators/bt;, "Lrx/internal/operators/bt<TT;TV;>;"
    .local p1, "_child":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/e/g;

    invoke-direct {v0, p1}, Lrx/e/g;-><init>(Lrx/l;)V

    .line 45
    .local v0, "child":Lrx/e/g;, "Lrx/e/g<TT;>;"
    invoke-static {}, Lrx/h/c;->K()Lrx/h/c;

    move-result-object v1

    .line 47
    .local v1, "delayedEmissions":Lrx/h/c;, "Lrx/h/c<Lrx/e<TT;>;>;"
    invoke-static {v1}, Lrx/e;->c(Lrx/e;)Lrx/e;

    move-result-object v2

    invoke-static {v0}, Lrx/e/h;->a(Lrx/f;)Lrx/l;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/l;)Lrx/m;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/l;->add(Lrx/m;)V

    .line 49
    new-instance v2, Lrx/internal/operators/bt$1;

    invoke-direct {v2, p0, p1, v1, v0}, Lrx/internal/operators/bt$1;-><init>(Lrx/internal/operators/bt;Lrx/l;Lrx/h/c;Lrx/e/g;)V

    return-object v2
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/bt;, "Lrx/internal/operators/bt<TT;TV;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/bt;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

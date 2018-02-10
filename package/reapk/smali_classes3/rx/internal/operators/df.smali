.class public final Lrx/internal/operators/df;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/df$a;,
        Lrx/internal/operators/df$b;
    }
.end annotation

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
.field private final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<+TT;>;"
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
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/df;, "Lrx/internal/operators/df<TT;>;"
    .local p1, "alternate":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/df;->a:Lrx/e;

    .line 34
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
    .line 38
    .local p0, "this":Lrx/internal/operators/df;, "Lrx/internal/operators/df<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v2, Lrx/i/e;

    invoke-direct {v2}, Lrx/i/e;-><init>()V

    .line 39
    .local v2, "serial":Lrx/i/e;
    new-instance v0, Lrx/internal/producers/a;

    invoke-direct {v0}, Lrx/internal/producers/a;-><init>()V

    .line 40
    .local v0, "arbiter":Lrx/internal/producers/a;
    new-instance v1, Lrx/internal/operators/df$b;

    iget-object v3, p0, Lrx/internal/operators/df;->a:Lrx/e;

    invoke-direct {v1, p1, v2, v0, v3}, Lrx/internal/operators/df$b;-><init>(Lrx/l;Lrx/i/e;Lrx/internal/producers/a;Lrx/e;)V

    .line 41
    .local v1, "parent":Lrx/internal/operators/df$b;, "Lrx/internal/operators/df$b<TT;>;"
    invoke-virtual {v2, v1}, Lrx/i/e;->a(Lrx/m;)V

    .line 42
    invoke-virtual {p1, v2}, Lrx/l;->add(Lrx/m;)V

    .line 43
    invoke-virtual {p1, v0}, Lrx/l;->setProducer(Lrx/g;)V

    .line 44
    return-object v1
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/df;, "Lrx/internal/operators/df<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/df;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

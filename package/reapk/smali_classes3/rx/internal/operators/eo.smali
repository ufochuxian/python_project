.class public final Lrx/internal/operators/eo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/eo$a;
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
        "Lrx/i$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/e$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e$b",
            "<+TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/i$a;Lrx/e$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i$a",
            "<TT;>;",
            "Lrx/e$b",
            "<+TR;-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/eo;, "Lrx/internal/operators/eo<TT;TR;>;"
    .local p1, "source":Lrx/i$a;, "Lrx/i$a<TT;>;"
    .local p2, "lift":Lrx/e$b;, "Lrx/e$b<+TR;-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/internal/operators/eo;->a:Lrx/i$a;

    .line 40
    iput-object p2, p0, Lrx/internal/operators/eo;->b:Lrx/e$b;

    .line 41
    return-void
.end method

.method public static a(Lrx/l;)Lrx/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/l",
            "<TT;>;)",
            "Lrx/k",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "subscriber":Lrx/l;, "Lrx/l<TT;>;"
    new-instance v0, Lrx/internal/operators/eo$a;

    invoke-direct {v0, p0}, Lrx/internal/operators/eo$a;-><init>(Lrx/l;)V

    .line 63
    .local v0, "parent":Lrx/internal/operators/eo$a;, "Lrx/internal/operators/eo$a<TT;>;"
    invoke-virtual {p0, v0}, Lrx/l;->add(Lrx/m;)V

    .line 64
    return-object v0
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/eo;, "Lrx/internal/operators/eo<TT;TR;>;"
    .local p1, "t":Lrx/k;, "Lrx/k<-TR;>;"
    new-instance v3, Lrx/internal/operators/en$a;

    invoke-direct {v3, p1}, Lrx/internal/operators/en$a;-><init>(Lrx/k;)V

    .line 46
    .local v3, "outputAsSubscriber":Lrx/l;, "Lrx/l<TR;>;"
    invoke-virtual {p1, v3}, Lrx/k;->a(Lrx/m;)V

    .line 49
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/eo;->b:Lrx/e$b;

    invoke-static {v4}, Lrx/f/c;->b(Lrx/e$b;)Lrx/e$b;

    move-result-object v4

    invoke-interface {v4, v3}, Lrx/e$b;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/l;

    .line 51
    .local v2, "inputAsSubscriber":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-static {v2}, Lrx/internal/operators/eo;->a(Lrx/l;)Lrx/k;

    move-result-object v1

    .line 53
    .local v1, "input":Lrx/k;, "Lrx/k<-TT;>;"
    invoke-virtual {v2}, Lrx/l;->onStart()V

    .line 55
    iget-object v4, p0, Lrx/internal/operators/eo;->a:Lrx/i$a;

    invoke-interface {v4, v1}, Lrx/i$a;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1    # "input":Lrx/k;, "Lrx/k<-TT;>;"
    .end local v2    # "inputAsSubscriber":Lrx/l;, "Lrx/l<-TT;>;"
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/k;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/eo;, "Lrx/internal/operators/eo<TT;TR;>;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/eo;->a(Lrx/k;)V

    return-void
.end method

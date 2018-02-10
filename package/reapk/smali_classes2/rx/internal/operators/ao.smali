.class public final Lrx/internal/operators/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
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
.field final a:Lrx/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e$a",
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
.method public constructor <init>(Lrx/e$a;Lrx/e$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e$a",
            "<TT;>;",
            "Lrx/e$b",
            "<+TR;-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/ao;, "Lrx/internal/operators/ao<TT;TR;>;"
    .local p1, "parent":Lrx/e$a;, "Lrx/e$a<TT;>;"
    .local p2, "operator":Lrx/e$b;, "Lrx/e$b<+TR;-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lrx/internal/operators/ao;->a:Lrx/e$a;

    .line 38
    iput-object p2, p0, Lrx/internal/operators/ao;->b:Lrx/e$b;

    .line 39
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
    .line 44
    .local p0, "this":Lrx/internal/operators/ao;, "Lrx/internal/operators/ao<TT;TR;>;"
    .local p1, "o":Lrx/l;, "Lrx/l<-TR;>;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/ao;->b:Lrx/e$b;

    invoke-static {v2}, Lrx/f/c;->a(Lrx/e$b;)Lrx/e$b;

    move-result-object v2

    invoke-interface {v2, p1}, Lrx/e$b;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/l;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    .local v1, "st":Lrx/l;, "Lrx/l<-TT;>;"
    :try_start_1
    invoke-virtual {v1}, Lrx/l;->onStart()V

    .line 48
    iget-object v2, p0, Lrx/internal/operators/ao;->a:Lrx/e$a;

    invoke-interface {v2, v1}, Lrx/e$a;->call(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    .end local v1    # "st":Lrx/l;, "Lrx/l<-TT;>;"
    :goto_0
    return-void

    .line 49
    .restart local v1    # "st":Lrx/l;, "Lrx/l<-TT;>;"
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 54
    invoke-virtual {v1, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "st":Lrx/l;, "Lrx/l<-TT;>;"
    :catch_1
    move-exception v0

    .line 57
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 60
    invoke-virtual {p1, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/ao;, "Lrx/internal/operators/ao<TT;TR;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ao;->a(Lrx/l;)V

    return-void
.end method

.class final Lrx/internal/operators/eq$a;
.super Lrx/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/k",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/k",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/k;Lrx/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;",
            "Lrx/c/p",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/eq$a;, "Lrx/internal/operators/eq$a<TT;>;"
    .local p1, "actual":Lrx/k;, "Lrx/k<-TT;>;"
    .local p2, "resumeFunction":Lrx/c/p;, "Lrx/c/p<Ljava/lang/Throwable;+TT;>;"
    invoke-direct {p0}, Lrx/k;-><init>()V

    .line 55
    iput-object p1, p0, Lrx/internal/operators/eq$a;->a:Lrx/k;

    .line 56
    iput-object p2, p0, Lrx/internal/operators/eq$a;->b:Lrx/c/p;

    .line 57
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/eq$a;, "Lrx/internal/operators/eq$a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/eq$a;->a:Lrx/k;

    invoke-virtual {v0, p1}, Lrx/k;->a(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/eq$a;, "Lrx/internal/operators/eq$a<TT;>;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/eq$a;->b:Lrx/c/p;

    invoke-interface {v2, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 76
    .local v1, "v":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/eq$a;->a:Lrx/k;

    invoke-virtual {v2, v1}, Lrx/k;->a(Ljava/lang/Object;)V

    .line 77
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 72
    iget-object v2, p0, Lrx/internal/operators/eq$a;->a:Lrx/k;

    invoke-virtual {v2, v0}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

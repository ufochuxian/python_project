.class Lrx/internal/operators/et$1;
.super Lrx/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/et;->a(Lrx/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/k",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lrx/k;

.field final synthetic c:Lrx/internal/operators/et;


# direct methods
.method constructor <init>(Lrx/internal/operators/et;Ljava/lang/Object;Lrx/k;)V
    .locals 0

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/et$1;, "Lrx/internal/operators/et.1;"
    iput-object p1, p0, Lrx/internal/operators/et$1;->c:Lrx/internal/operators/et;

    iput-object p2, p0, Lrx/internal/operators/et$1;->a:Ljava/lang/Object;

    iput-object p3, p0, Lrx/internal/operators/et$1;->b:Lrx/k;

    invoke-direct {p0}, Lrx/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/et$1;, "Lrx/internal/operators/et.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/et$1;->c:Lrx/internal/operators/et;

    iget-boolean v2, v2, Lrx/internal/operators/et;->d:Z

    if-eqz v2, :cond_0

    .line 78
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/et$1;->c:Lrx/internal/operators/et;

    iget-object v2, v2, Lrx/internal/operators/et;->c:Lrx/c/c;

    iget-object v3, p0, Lrx/internal/operators/et$1;->a:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lrx/c/c;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/et$1;->b:Lrx/k;

    invoke-virtual {v2, p1}, Lrx/k;->a(Ljava/lang/Object;)V

    .line 89
    iget-object v2, p0, Lrx/internal/operators/et$1;->c:Lrx/internal/operators/et;

    iget-boolean v2, v2, Lrx/internal/operators/et;->d:Z

    if-nez v2, :cond_1

    .line 91
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/et$1;->c:Lrx/internal/operators/et;

    iget-object v2, v2, Lrx/internal/operators/et;->c:Lrx/c/c;

    iget-object v3, p0, Lrx/internal/operators/et$1;->a:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lrx/c/c;->call(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 82
    iget-object v2, p0, Lrx/internal/operators/et$1;->b:Lrx/k;

    invoke-virtual {v2, v0}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 92
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 93
    .local v1, "ex2":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 94
    invoke-static {v1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/operators/et$1;, "Lrx/internal/operators/et.1;"
    iget-object v0, p0, Lrx/internal/operators/et$1;->c:Lrx/internal/operators/et;

    iget-object v1, p0, Lrx/internal/operators/et$1;->b:Lrx/k;

    iget-object v2, p0, Lrx/internal/operators/et$1;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, p1}, Lrx/internal/operators/et;->a(Lrx/k;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 102
    return-void
.end method

.class final Lrx/internal/operators/dl$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/dl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/dl;

.field private final b:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method constructor <init>(Lrx/internal/operators/dl;Lrx/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/dl$a;, "Lrx/internal/operators/dl<TT;>.a;"
    .local p2, "child":Lrx/l;, "Lrx/l<-TT;>;"
    iput-object p1, p0, Lrx/internal/operators/dl$a;->a:Lrx/internal/operators/dl;

    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 56
    iput-object p2, p0, Lrx/internal/operators/dl$a;->b:Lrx/l;

    .line 57
    return-void
.end method


# virtual methods
.method a(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/dl$a;, "Lrx/internal/operators/dl<TT;>.a;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/dl$a;->request(J)V

    .line 94
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/dl$a;, "Lrx/internal/operators/dl<TT;>.a;"
    iget-boolean v0, p0, Lrx/internal/operators/dl$a;->c:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lrx/internal/operators/dl$a;->b:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 84
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/operators/dl$a;, "Lrx/internal/operators/dl<TT;>.a;"
    iget-boolean v0, p0, Lrx/internal/operators/dl$a;->c:Z

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lrx/internal/operators/dl$a;->b:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 91
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/dl$a;, "Lrx/internal/operators/dl<TT;>.a;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x1

    .line 61
    iget-object v2, p0, Lrx/internal/operators/dl$a;->b:Lrx/l;

    invoke-virtual {v2, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 65
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/dl$a;->a:Lrx/internal/operators/dl;

    iget-object v2, v2, Lrx/internal/operators/dl;->a:Lrx/c/p;

    invoke-interface {v2, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 72
    .local v1, "stop":Z
    if-eqz v1, :cond_0

    .line 73
    iput-boolean v3, p0, Lrx/internal/operators/dl$a;->c:Z

    .line 74
    iget-object v2, p0, Lrx/internal/operators/dl$a;->b:Lrx/l;

    invoke-virtual {v2}, Lrx/l;->onCompleted()V

    .line 75
    invoke-virtual {p0}, Lrx/internal/operators/dl$a;->unsubscribe()V

    .line 77
    .end local v1    # "stop":Z
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    iput-boolean v3, p0, Lrx/internal/operators/dl$a;->c:Z

    .line 68
    iget-object v2, p0, Lrx/internal/operators/dl$a;->b:Lrx/l;

    invoke-static {v0, v2, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0}, Lrx/internal/operators/dl$a;->unsubscribe()V

    goto :goto_0
.end method

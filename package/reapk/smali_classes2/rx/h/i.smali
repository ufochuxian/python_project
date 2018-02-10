.class public final Lrx/h/i;
.super Lrx/h/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/h/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/h/f",
        "<TT;TT;>;"
    }
.end annotation

.annotation build Lrx/b/b;
.end annotation


# instance fields
.field final b:Lrx/h/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h/i$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/h/i$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h/i$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lrx/h/i;, "Lrx/h/i<TT;>;"
    .local p1, "state":Lrx/h/i$a;, "Lrx/h/i$a<TT;>;"
    invoke-direct {p0, p1}, Lrx/h/f;-><init>(Lrx/e$a;)V

    .line 87
    iput-object p1, p0, Lrx/h/i;->b:Lrx/h/i$a;

    .line 88
    return-void
.end method

.method public static K()Lrx/h/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/h/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    const/16 v0, 0x10

    invoke-static {v0}, Lrx/h/i;->o(I)Lrx/h/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILrx/c/b;)Lrx/h/i;
    .locals 2
    .param p0, "capacityHint"    # I
    .param p1, "onTerminated"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lrx/c/b;",
            ")",
            "Lrx/h/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lrx/h/i$a;

    invoke-direct {v0, p0, p1}, Lrx/h/i$a;-><init>(ILrx/c/b;)V

    .line 82
    .local v0, "state":Lrx/h/i$a;, "Lrx/h/i$a<TT;>;"
    new-instance v1, Lrx/h/i;

    invoke-direct {v1, v0}, Lrx/h/i;-><init>(Lrx/h/i$a;)V

    return-object v1
.end method

.method public static o(I)Lrx/h/i;
    .locals 2
    .param p0, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lrx/h/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lrx/h/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrx/h/i$a;-><init>(ILrx/c/b;)V

    .line 63
    .local v0, "state":Lrx/h/i$a;, "Lrx/h/i$a<TT;>;"
    new-instance v1, Lrx/h/i;

    invoke-direct {v1, v0}, Lrx/h/i;-><init>(Lrx/h/i$a;)V

    return-object v1
.end method


# virtual methods
.method public L()Z
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lrx/h/i;, "Lrx/h/i<TT;>;"
    iget-object v0, p0, Lrx/h/i;->b:Lrx/h/i$a;

    iget-object v0, v0, Lrx/h/i$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Lrx/h/i;, "Lrx/h/i<TT;>;"
    iget-object v0, p0, Lrx/h/i;->b:Lrx/h/i$a;

    invoke-virtual {v0}, Lrx/h/i$a;->onCompleted()V

    .line 103
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    .local p0, "this":Lrx/h/i;, "Lrx/h/i<TT;>;"
    iget-object v0, p0, Lrx/h/i;->b:Lrx/h/i$a;

    invoke-virtual {v0, p1}, Lrx/h/i$a;->onError(Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lrx/h/i;, "Lrx/h/i<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/h/i;->b:Lrx/h/i$a;

    invoke-virtual {v0, p1}, Lrx/h/i$a;->onNext(Ljava/lang/Object;)V

    .line 93
    return-void
.end method

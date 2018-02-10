.class public final Lrx/h/c;
.super Lrx/h/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/h/c$a;,
        Lrx/h/c$b;
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


# instance fields
.field final b:Lrx/h/c$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h/c$b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lrx/h/c$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h/c$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/h/c;, "Lrx/h/c<TT;>;"
    .local p1, "state":Lrx/h/c$b;, "Lrx/h/c$b<TT;>;"
    invoke-direct {p0, p1}, Lrx/h/f;-><init>(Lrx/e$a;)V

    .line 67
    iput-object p1, p0, Lrx/h/c;->b:Lrx/h/c$b;

    .line 68
    return-void
.end method

.method public static K()Lrx/h/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/h/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lrx/h/c;

    new-instance v1, Lrx/h/c$b;

    invoke-direct {v1}, Lrx/h/c$b;-><init>()V

    invoke-direct {v0, v1}, Lrx/h/c;-><init>(Lrx/h/c$b;)V

    return-object v0
.end method


# virtual methods
.method public L()Z
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lrx/h/c;, "Lrx/h/c<TT;>;"
    iget-object v0, p0, Lrx/h/c;->b:Lrx/h/c$b;

    invoke-virtual {v0}, Lrx/h/c$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/h/c$a;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public M()Z
    .locals 2

    .prologue
    .line 97
    .local p0, "this":Lrx/h/c;, "Lrx/h/c<TT;>;"
    iget-object v0, p0, Lrx/h/c;->b:Lrx/h/c$b;

    invoke-virtual {v0}, Lrx/h/c$b;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/h/c$b;->b:[Lrx/h/c$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lrx/h/c;->b:Lrx/h/c$b;

    iget-object v0, v0, Lrx/h/c$b;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public N()Z
    .locals 2

    .prologue
    .line 105
    .local p0, "this":Lrx/h/c;, "Lrx/h/c<TT;>;"
    iget-object v0, p0, Lrx/h/c;->b:Lrx/h/c$b;

    invoke-virtual {v0}, Lrx/h/c$b;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/h/c$b;->b:[Lrx/h/c$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lrx/h/c;->b:Lrx/h/c$b;

    iget-object v0, v0, Lrx/h/c$b;->c:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public O()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 114
    .local p0, "this":Lrx/h/c;, "Lrx/h/c<TT;>;"
    iget-object v0, p0, Lrx/h/c;->b:Lrx/h/c$b;

    invoke-virtual {v0}, Lrx/h/c$b;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/h/c$b;->b:[Lrx/h/c$a;

    if-ne v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lrx/h/c;->b:Lrx/h/c$b;

    iget-object v0, v0, Lrx/h/c$b;->c:Ljava/lang/Throwable;

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lrx/h/c;, "Lrx/h/c<TT;>;"
    iget-object v0, p0, Lrx/h/c;->b:Lrx/h/c$b;

    invoke-virtual {v0}, Lrx/h/c$b;->onCompleted()V

    .line 83
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 77
    .local p0, "this":Lrx/h/c;, "Lrx/h/c<TT;>;"
    iget-object v0, p0, Lrx/h/c;->b:Lrx/h/c$b;

    invoke-virtual {v0, p1}, Lrx/h/c$b;->onError(Ljava/lang/Throwable;)V

    .line 78
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
    .line 72
    .local p0, "this":Lrx/h/c;, "Lrx/h/c<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/h/c;->b:Lrx/h/c$b;

    invoke-virtual {v0, p1}, Lrx/h/c$b;->onNext(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

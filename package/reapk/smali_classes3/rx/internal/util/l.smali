.class public final Lrx/internal/util/l;
.super Lrx/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/l$c;,
        Lrx/internal/util/l$b;,
        Lrx/internal/util/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/util/l;, "Lrx/internal/util/l<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/util/l$1;

    invoke-direct {v0, p1}, Lrx/internal/util/l$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lrx/i;-><init>(Lrx/i$a;)V

    .line 40
    iput-object p1, p0, Lrx/internal/util/l;->b:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public static b(Ljava/lang/Object;)Lrx/internal/util/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/internal/util/l",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/util/l;

    invoke-direct {v0, p0}, Lrx/internal/util/l;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public c(Lrx/h;)Lrx/i;
    .locals 3
    .param p1, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h;",
            ")",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/util/l;, "Lrx/internal/util/l<TT;>;"
    instance-of v1, p1, Lrx/internal/schedulers/b;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 56
    check-cast v0, Lrx/internal/schedulers/b;

    .line 57
    .local v0, "es":Lrx/internal/schedulers/b;
    new-instance v1, Lrx/internal/util/l$a;

    iget-object v2, p0, Lrx/internal/util/l;->b:Ljava/lang/Object;

    invoke-direct {v1, v0, v2}, Lrx/internal/util/l$a;-><init>(Lrx/internal/schedulers/b;Ljava/lang/Object;)V

    invoke-static {v1}, Lrx/internal/util/l;->a(Lrx/i$a;)Lrx/i;

    move-result-object v1

    .line 59
    .end local v0    # "es":Lrx/internal/schedulers/b;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lrx/internal/util/l$b;

    iget-object v2, p0, Lrx/internal/util/l;->b:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lrx/internal/util/l$b;-><init>(Lrx/h;Ljava/lang/Object;)V

    invoke-static {v1}, Lrx/internal/util/l;->a(Lrx/i$a;)Lrx/i;

    move-result-object v1

    goto :goto_0
.end method

.method public h()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/util/l;, "Lrx/internal/util/l<TT;>;"
    iget-object v0, p0, Lrx/internal/util/l;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public i(Lrx/c/p;)Lrx/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/i",
            "<+TR;>;>;)",
            "Lrx/i",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lrx/internal/util/l;, "Lrx/internal/util/l<TT;>;"
    .local p1, "func":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/i<+TR;>;>;"
    new-instance v0, Lrx/internal/util/l$2;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/l$2;-><init>(Lrx/internal/util/l;Lrx/c/p;)V

    invoke-static {v0}, Lrx/internal/util/l;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

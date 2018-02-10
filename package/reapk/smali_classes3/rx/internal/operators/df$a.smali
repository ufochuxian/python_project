.class final Lrx/internal/operators/df$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/df;
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
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/internal/producers/a;

.field private final b:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/l;Lrx/internal/producers/a;)V
    .locals 0
    .param p2, "arbiter"    # Lrx/internal/producers/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;",
            "Lrx/internal/producers/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/operators/df$a;, "Lrx/internal/operators/df$a<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 101
    iput-object p1, p0, Lrx/internal/operators/df$a;->b:Lrx/l;

    .line 102
    iput-object p2, p0, Lrx/internal/operators/df$a;->a:Lrx/internal/producers/a;

    .line 103
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lrx/internal/operators/df$a;, "Lrx/internal/operators/df$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/df$a;->b:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 113
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 117
    .local p0, "this":Lrx/internal/operators/df$a;, "Lrx/internal/operators/df$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/df$a;->b:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 118
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
    .line 122
    .local p0, "this":Lrx/internal/operators/df$a;, "Lrx/internal/operators/df$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/df$a;->b:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lrx/internal/operators/df$a;->a:Lrx/internal/producers/a;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lrx/internal/producers/a;->a(J)V

    .line 124
    return-void
.end method

.method public setProducer(Lrx/g;)V
    .locals 1
    .param p1, "producer"    # Lrx/g;

    .prologue
    .line 107
    .local p0, "this":Lrx/internal/operators/df$a;, "Lrx/internal/operators/df$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/df$a;->a:Lrx/internal/producers/a;

    invoke-virtual {v0, p1}, Lrx/internal/producers/a;->a(Lrx/g;)V

    .line 108
    return-void
.end method

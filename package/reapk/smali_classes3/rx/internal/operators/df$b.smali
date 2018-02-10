.class final Lrx/internal/operators/df$b;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/df;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
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
.field private a:Z

.field private final b:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final c:Lrx/i/e;

.field private final d:Lrx/internal/producers/a;

.field private final e:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/l;Lrx/i/e;Lrx/internal/producers/a;Lrx/e;)V
    .locals 1
    .param p2, "serial"    # Lrx/i/e;
    .param p3, "arbiter"    # Lrx/internal/producers/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;",
            "Lrx/i/e;",
            "Lrx/internal/producers/a;",
            "Lrx/e",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/df$b;, "Lrx/internal/operators/df$b<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    .local p4, "alternate":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/df$b;->a:Z

    .line 56
    iput-object p1, p0, Lrx/internal/operators/df$b;->b:Lrx/l;

    .line 57
    iput-object p2, p0, Lrx/internal/operators/df$b;->c:Lrx/i/e;

    .line 58
    iput-object p3, p0, Lrx/internal/operators/df$b;->d:Lrx/internal/producers/a;

    .line 59
    iput-object p4, p0, Lrx/internal/operators/df$b;->e:Lrx/e;

    .line 60
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/df$b;, "Lrx/internal/operators/df$b<TT;>;"
    new-instance v0, Lrx/internal/operators/df$a;

    iget-object v1, p0, Lrx/internal/operators/df$b;->b:Lrx/l;

    iget-object v2, p0, Lrx/internal/operators/df$b;->d:Lrx/internal/producers/a;

    invoke-direct {v0, v1, v2}, Lrx/internal/operators/df$a;-><init>(Lrx/l;Lrx/internal/producers/a;)V

    .line 78
    .local v0, "as":Lrx/internal/operators/df$a;, "Lrx/internal/operators/df$a<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/df$b;->c:Lrx/i/e;

    invoke-virtual {v1, v0}, Lrx/i/e;->a(Lrx/m;)V

    .line 79
    iget-object v1, p0, Lrx/internal/operators/df$b;->e:Lrx/e;

    invoke-virtual {v1, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 80
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/df$b;, "Lrx/internal/operators/df$b<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/df$b;->a:Z

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lrx/internal/operators/df$b;->b:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/df$b;->b:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lrx/internal/operators/df$b;->a()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/df$b;, "Lrx/internal/operators/df$b<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/df$b;->b:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 85
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
    .line 89
    .local p0, "this":Lrx/internal/operators/df$b;, "Lrx/internal/operators/df$b<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/df$b;->a:Z

    .line 90
    iget-object v0, p0, Lrx/internal/operators/df$b;->b:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lrx/internal/operators/df$b;->d:Lrx/internal/producers/a;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lrx/internal/producers/a;->a(J)V

    .line 92
    return-void
.end method

.method public setProducer(Lrx/g;)V
    .locals 1
    .param p1, "producer"    # Lrx/g;

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/df$b;, "Lrx/internal/operators/df$b<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/df$b;->d:Lrx/internal/producers/a;

    invoke-virtual {v0, p1}, Lrx/internal/producers/a;->a(Lrx/g;)V

    .line 65
    return-void
.end method

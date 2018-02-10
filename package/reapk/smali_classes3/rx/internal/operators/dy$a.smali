.class final Lrx/internal/operators/dy$a;
.super Lrx/l;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/dy;
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
        "<TT;>;",
        "Lrx/c/b;"
    }
.end annotation


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-",
            "Lrx/e",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final d:Lrx/m;

.field e:I

.field f:Lrx/h/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h/f",
            "<TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/l;I)V
    .locals 2
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Lrx/e",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/dy$a;, "Lrx/internal/operators/dy$a<TT;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-Lrx/e<TT;>;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 92
    iput-object p1, p0, Lrx/internal/operators/dy$a;->a:Lrx/l;

    .line 93
    iput p2, p0, Lrx/internal/operators/dy$a;->b:I

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/dy$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    invoke-static {p0}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/dy$a;->d:Lrx/m;

    .line 96
    iget-object v0, p0, Lrx/internal/operators/dy$a;->d:Lrx/m;

    invoke-virtual {p0, v0}, Lrx/internal/operators/dy$a;->add(Lrx/m;)V

    .line 97
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/dy$a;->request(J)V

    .line 98
    return-void
.end method

.method static synthetic a(Lrx/internal/operators/dy$a;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/dy$a;
    .param p1, "x1"    # J

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/dy$a;->request(J)V

    return-void
.end method


# virtual methods
.method a()Lrx/g;
    .locals 1

    .prologue
    .line 149
    .local p0, "this":Lrx/internal/operators/dy$a;, "Lrx/internal/operators/dy$a<TT;>;"
    new-instance v0, Lrx/internal/operators/dy$a$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/dy$a$1;-><init>(Lrx/internal/operators/dy$a;)V

    return-object v0
.end method

.method public call()V
    .locals 1

    .prologue
    .line 165
    .local p0, "this":Lrx/internal/operators/dy$a;, "Lrx/internal/operators/dy$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/dy$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lrx/internal/operators/dy$a;->unsubscribe()V

    .line 168
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/operators/dy$a;, "Lrx/internal/operators/dy$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/dy$a;->f:Lrx/h/f;

    .line 141
    .local v0, "w":Lrx/h/f;, "Lrx/h/f<TT;TT;>;"
    if-eqz v0, :cond_0

    .line 142
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/dy$a;->f:Lrx/h/f;

    .line 143
    invoke-virtual {v0}, Lrx/h/f;->onCompleted()V

    .line 145
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/dy$a;->a:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->onCompleted()V

    .line 146
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/operators/dy$a;, "Lrx/internal/operators/dy$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/dy$a;->f:Lrx/h/f;

    .line 130
    .local v0, "w":Lrx/h/f;, "Lrx/h/f<TT;TT;>;"
    if-eqz v0, :cond_0

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/dy$a;->f:Lrx/h/f;

    .line 132
    invoke-virtual {v0, p1}, Lrx/h/f;->onError(Ljava/lang/Throwable;)V

    .line 134
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/dy$a;->a:Lrx/l;

    invoke-virtual {v1, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lrx/internal/operators/dy$a;, "Lrx/internal/operators/dy$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lrx/internal/operators/dy$a;->e:I

    .line 104
    .local v0, "i":I
    iget-object v1, p0, Lrx/internal/operators/dy$a;->f:Lrx/h/f;

    .line 105
    .local v1, "w":Lrx/h/f;, "Lrx/h/f<TT;TT;>;"
    if-nez v0, :cond_0

    .line 106
    iget-object v2, p0, Lrx/internal/operators/dy$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 108
    iget v2, p0, Lrx/internal/operators/dy$a;->b:I

    invoke-static {v2, p0}, Lrx/h/i;->a(ILrx/c/b;)Lrx/h/i;

    move-result-object v1

    .line 109
    iput-object v1, p0, Lrx/internal/operators/dy$a;->f:Lrx/h/f;

    .line 111
    iget-object v2, p0, Lrx/internal/operators/dy$a;->a:Lrx/l;

    invoke-virtual {v2, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 115
    invoke-virtual {v1, p1}, Lrx/h/f;->onNext(Ljava/lang/Object;)V

    .line 117
    iget v2, p0, Lrx/internal/operators/dy$a;->b:I

    if-ne v0, v2, :cond_1

    .line 118
    const/4 v2, 0x0

    iput v2, p0, Lrx/internal/operators/dy$a;->e:I

    .line 119
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/dy$a;->f:Lrx/h/f;

    .line 120
    invoke-virtual {v1}, Lrx/h/f;->onCompleted()V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_1
    iput v0, p0, Lrx/internal/operators/dy$a;->e:I

    goto :goto_0
.end method

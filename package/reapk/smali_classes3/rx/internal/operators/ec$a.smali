.class final Lrx/internal/operators/ec$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final d:Ljava/lang/Object;


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/y",
            "<TR;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/ec$a;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/l;Lrx/c/y;I)V
    .locals 4
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;",
            "Lrx/c/y",
            "<TR;>;I)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/ec$a;, "Lrx/internal/operators/ec$a<TT;TR;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-TR;>;"
    .local p2, "combiner":Lrx/c/y;, "Lrx/c/y<TR;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 99
    iput-object p1, p0, Lrx/internal/operators/ec$a;->a:Lrx/l;

    .line 100
    iput-object p2, p0, Lrx/internal/operators/ec$a;->b:Lrx/c/y;

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, p3, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 103
    .local v0, "array":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, p3, :cond_0

    .line 104
    sget-object v2, Lrx/internal/operators/ec$a;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_0
    iput-object v0, p0, Lrx/internal/operators/ec$a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 108
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lrx/internal/operators/ec$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 109
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/ec$a;->request(J)V

    .line 110
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 183
    .local p0, "this":Lrx/internal/operators/ec$a;, "Lrx/internal/operators/ec$a<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/ec$a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/internal/operators/ec$a;->d:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 184
    invoke-virtual {p0}, Lrx/internal/operators/ec$a;->onCompleted()V

    .line 186
    :cond_0
    return-void
.end method

.method a(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 172
    .local p0, "this":Lrx/internal/operators/ec$a;, "Lrx/internal/operators/ec$a<TT;TR;>;"
    iget-object v1, p0, Lrx/internal/operators/ec$a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    .local v0, "last":Ljava/lang/Object;
    sget-object v1, Lrx/internal/operators/ec$a;->d:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v1, p0, Lrx/internal/operators/ec$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 176
    :cond_0
    return-void
.end method

.method a(ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 179
    .local p0, "this":Lrx/internal/operators/ec$a;, "Lrx/internal/operators/ec$a<TT;TR;>;"
    invoke-virtual {p0, p2}, Lrx/internal/operators/ec$a;->onError(Ljava/lang/Throwable;)V

    .line 180
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 157
    .local p0, "this":Lrx/internal/operators/ec$a;, "Lrx/internal/operators/ec$a<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/ec$a;->f:Z

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ec$a;->f:Z

    .line 161
    invoke-virtual {p0}, Lrx/internal/operators/ec$a;->unsubscribe()V

    .line 162
    iget-object v0, p0, Lrx/internal/operators/ec$a;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 146
    .local p0, "this":Lrx/internal/operators/ec$a;, "Lrx/internal/operators/ec$a<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/ec$a;->f:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ec$a;->f:Z

    .line 151
    invoke-virtual {p0}, Lrx/internal/operators/ec$a;->unsubscribe()V

    .line 152
    iget-object v0, p0, Lrx/internal/operators/ec$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/operators/ec$a;, "Lrx/internal/operators/ec$a<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v6, p0, Lrx/internal/operators/ec$a;->f:Z

    if-eqz v6, :cond_0

    .line 142
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v6, p0, Lrx/internal/operators/ec$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-nez v6, :cond_2

    .line 119
    iget-object v0, p0, Lrx/internal/operators/ec$a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 120
    .local v0, "array":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    .line 121
    .local v4, "n":I
    const/4 v6, 0x0

    invoke-virtual {v0, v6, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 123
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    new-array v1, v6, [Ljava/lang/Object;

    .line 124
    .local v1, "copy":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 125
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v3

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 131
    :cond_1
    :try_start_0
    iget-object v6, p0, Lrx/internal/operators/ec$a;->b:Lrx/c/y;

    invoke-interface {v6, v1}, Lrx/c/y;->a([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 138
    .local v5, "result":Ljava/lang/Object;, "TR;"
    iget-object v6, p0, Lrx/internal/operators/ec$a;->a:Lrx/l;

    invoke-virtual {v6, v5}, Lrx/l;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    .end local v5    # "result":Ljava/lang/Object;, "TR;"
    :catch_0
    move-exception v2

    .line 133
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 134
    invoke-virtual {p0, v2}, Lrx/internal/operators/ec$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 140
    .end local v0    # "array":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .end local v1    # "copy":[Ljava/lang/Object;
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_2
    const-wide/16 v6, 0x1

    invoke-virtual {p0, v6, v7}, Lrx/internal/operators/ec$a;->request(J)V

    goto :goto_0
.end method

.method public setProducer(Lrx/g;)V
    .locals 1
    .param p1, "p"    # Lrx/g;

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/operators/ec$a;, "Lrx/internal/operators/ec$a<TT;TR;>;"
    invoke-super {p0, p1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 168
    iget-object v0, p0, Lrx/internal/operators/ec$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 169
    return-void
.end method

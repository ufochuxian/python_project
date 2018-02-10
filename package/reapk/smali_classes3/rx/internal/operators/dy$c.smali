.class final Lrx/internal/operators/dy$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/dy$c$a;
    }
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

.field final c:I

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final e:Lrx/m;

.field f:I

.field g:Lrx/h/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h/f",
            "<TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/l;II)V
    .locals 2
    .param p2, "size"    # I
    .param p3, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Lrx/e",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lrx/internal/operators/dy$c;, "Lrx/internal/operators/dy$c<TT;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-Lrx/e<TT;>;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 187
    iput-object p1, p0, Lrx/internal/operators/dy$c;->a:Lrx/l;

    .line 188
    iput p2, p0, Lrx/internal/operators/dy$c;->b:I

    .line 189
    iput p3, p0, Lrx/internal/operators/dy$c;->c:I

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/dy$c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 191
    invoke-static {p0}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/dy$c;->e:Lrx/m;

    .line 192
    iget-object v0, p0, Lrx/internal/operators/dy$c;->e:Lrx/m;

    invoke-virtual {p0, v0}, Lrx/internal/operators/dy$c;->add(Lrx/m;)V

    .line 193
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/dy$c;->request(J)V

    .line 194
    return-void
.end method

.method static synthetic a(Lrx/internal/operators/dy$c;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/dy$c;
    .param p1, "x1"    # J

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/dy$c;->request(J)V

    return-void
.end method

.method static synthetic b(Lrx/internal/operators/dy$c;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/dy$c;
    .param p1, "x1"    # J

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/dy$c;->request(J)V

    return-void
.end method


# virtual methods
.method a()Lrx/g;
    .locals 1

    .prologue
    .line 251
    .local p0, "this":Lrx/internal/operators/dy$c;, "Lrx/internal/operators/dy$c<TT;>;"
    new-instance v0, Lrx/internal/operators/dy$c$a;

    invoke-direct {v0, p0}, Lrx/internal/operators/dy$c$a;-><init>(Lrx/internal/operators/dy$c;)V

    return-object v0
.end method

.method public call()V
    .locals 1

    .prologue
    .line 256
    .local p0, "this":Lrx/internal/operators/dy$c;, "Lrx/internal/operators/dy$c<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/dy$c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lrx/internal/operators/dy$c;->unsubscribe()V

    .line 259
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 241
    .local p0, "this":Lrx/internal/operators/dy$c;, "Lrx/internal/operators/dy$c<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/dy$c;->g:Lrx/h/f;

    .line 243
    .local v0, "w":Lrx/h/f;, "Lrx/h/f<TT;TT;>;"
    if-eqz v0, :cond_0

    .line 244
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/dy$c;->g:Lrx/h/f;

    .line 245
    invoke-virtual {v0}, Lrx/h/f;->onCompleted()V

    .line 247
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/dy$c;->a:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->onCompleted()V

    .line 248
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 230
    .local p0, "this":Lrx/internal/operators/dy$c;, "Lrx/internal/operators/dy$c<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/dy$c;->g:Lrx/h/f;

    .line 232
    .local v0, "w":Lrx/h/f;, "Lrx/h/f<TT;TT;>;"
    if-eqz v0, :cond_0

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/dy$c;->g:Lrx/h/f;

    .line 234
    invoke-virtual {v0, p1}, Lrx/h/f;->onError(Ljava/lang/Throwable;)V

    .line 236
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/dy$c;->a:Lrx/l;

    invoke-virtual {v1, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 237
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
    .line 198
    .local p0, "this":Lrx/internal/operators/dy$c;, "Lrx/internal/operators/dy$c<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lrx/internal/operators/dy$c;->f:I

    .line 200
    .local v0, "i":I
    iget-object v1, p0, Lrx/internal/operators/dy$c;->g:Lrx/h/f;

    .line 201
    .local v1, "w":Lrx/h/f;, "Lrx/h/f<TT;TT;>;"
    if-nez v0, :cond_0

    .line 202
    iget-object v2, p0, Lrx/internal/operators/dy$c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 204
    iget v2, p0, Lrx/internal/operators/dy$c;->b:I

    invoke-static {v2, p0}, Lrx/h/i;->a(ILrx/c/b;)Lrx/h/i;

    move-result-object v1

    .line 205
    iput-object v1, p0, Lrx/internal/operators/dy$c;->g:Lrx/h/f;

    .line 207
    iget-object v2, p0, Lrx/internal/operators/dy$c;->a:Lrx/l;

    invoke-virtual {v2, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 209
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 211
    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {v1, p1}, Lrx/h/f;->onNext(Ljava/lang/Object;)V

    .line 215
    :cond_1
    iget v2, p0, Lrx/internal/operators/dy$c;->b:I

    if-ne v0, v2, :cond_2

    .line 216
    iput v0, p0, Lrx/internal/operators/dy$c;->f:I

    .line 217
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/dy$c;->g:Lrx/h/f;

    .line 218
    invoke-virtual {v1}, Lrx/h/f;->onCompleted()V

    .line 226
    :goto_0
    return-void

    .line 220
    :cond_2
    iget v2, p0, Lrx/internal/operators/dy$c;->c:I

    if-ne v0, v2, :cond_3

    .line 221
    const/4 v2, 0x0

    iput v2, p0, Lrx/internal/operators/dy$c;->f:I

    goto :goto_0

    .line 223
    :cond_3
    iput v0, p0, Lrx/internal/operators/dy$c;->f:I

    goto :goto_0
.end method

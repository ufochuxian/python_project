.class final Lrx/internal/operators/ed$c;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<[",
        "Lrx/e;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final b:Lrx/internal/operators/ed$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/ed$a",
            "<TR;>;"
        }
    .end annotation
.end field

.field final c:Lrx/internal/operators/ed$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/ed$b",
            "<TR;>;"
        }
    .end annotation
.end field

.field d:Z

.field final synthetic e:Lrx/internal/operators/ed;


# direct methods
.method public constructor <init>(Lrx/internal/operators/ed;Lrx/l;Lrx/internal/operators/ed$a;Lrx/internal/operators/ed$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;",
            "Lrx/internal/operators/ed$a",
            "<TR;>;",
            "Lrx/internal/operators/ed$b",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lrx/internal/operators/ed$c;, "Lrx/internal/operators/ed<TR;>.c;"
    .local p2, "child":Lrx/l;, "Lrx/l<-TR;>;"
    .local p3, "zipper":Lrx/internal/operators/ed$a;, "Lrx/internal/operators/ed$a<TR;>;"
    .local p4, "producer":Lrx/internal/operators/ed$b;, "Lrx/internal/operators/ed$b<TR;>;"
    iput-object p1, p0, Lrx/internal/operators/ed$c;->e:Lrx/internal/operators/ed;

    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 119
    iput-object p2, p0, Lrx/internal/operators/ed$c;->a:Lrx/l;

    .line 120
    iput-object p3, p0, Lrx/internal/operators/ed$c;->b:Lrx/internal/operators/ed$a;

    .line 121
    iput-object p4, p0, Lrx/internal/operators/ed$c;->c:Lrx/internal/operators/ed$b;

    .line 122
    return-void
.end method


# virtual methods
.method public a([Lrx/e;)V
    .locals 2
    .param p1, "observables"    # [Lrx/e;

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/operators/ed$c;, "Lrx/internal/operators/ed<TR;>.c;"
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 140
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/ed$c;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ed$c;->d:Z

    .line 143
    iget-object v0, p0, Lrx/internal/operators/ed$c;->b:Lrx/internal/operators/ed$a;

    iget-object v1, p0, Lrx/internal/operators/ed$c;->c:Lrx/internal/operators/ed$b;

    invoke-virtual {v0, p1, v1}, Lrx/internal/operators/ed$a;->start([Lrx/e;Ljava/util/concurrent/atomic/AtomicLong;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/ed$c;, "Lrx/internal/operators/ed<TR;>.c;"
    iget-boolean v0, p0, Lrx/internal/operators/ed$c;->d:Z

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lrx/internal/operators/ed$c;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 130
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 134
    .local p0, "this":Lrx/internal/operators/ed$c;, "Lrx/internal/operators/ed<TR;>.c;"
    iget-object v0, p0, Lrx/internal/operators/ed$c;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 109
    .local p0, "this":Lrx/internal/operators/ed$c;, "Lrx/internal/operators/ed<TR;>.c;"
    check-cast p1, [Lrx/e;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ed$c;->a([Lrx/e;)V

    return-void
.end method

.class final Lrx/internal/operators/av$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/av;
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


# static fields
.field static final d:Ljava/lang/Object;


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/q",
            "<TT;TT;TT;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/av$a;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/l;Lrx/c/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;",
            "Lrx/c/q",
            "<TT;TT;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/av$a;, "Lrx/internal/operators/av$a<TT;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-TT;>;"
    .local p2, "reducer":Lrx/c/q;, "Lrx/c/q<TT;TT;TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 65
    iput-object p1, p0, Lrx/internal/operators/av$a;->a:Lrx/l;

    .line 66
    iput-object p2, p0, Lrx/internal/operators/av$a;->b:Lrx/c/q;

    .line 67
    sget-object v0, Lrx/internal/operators/av$a;->d:Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/av$a;->c:Ljava/lang/Object;

    .line 68
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/av$a;->request(J)V

    .line 69
    return-void
.end method


# virtual methods
.method a(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/av$a;, "Lrx/internal/operators/av$a<TT;>;"
    const-wide/16 v2, 0x0

    .line 118
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    .line 122
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/av$a;->request(J)V

    .line 124
    :cond_1
    return-void
.end method

.method public onCompleted()V
    .locals 3

    .prologue
    .line 104
    .local p0, "this":Lrx/internal/operators/av$a;, "Lrx/internal/operators/av$a<TT;>;"
    iget-boolean v1, p0, Lrx/internal/operators/av$a;->e:Z

    if-eqz v1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 107
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/av$a;->e:Z

    .line 108
    iget-object v0, p0, Lrx/internal/operators/av$a;->c:Ljava/lang/Object;

    .line 109
    .local v0, "o":Ljava/lang/Object;
    sget-object v1, Lrx/internal/operators/av$a;->d:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 110
    iget-object v1, p0, Lrx/internal/operators/av$a;->a:Lrx/l;

    invoke-virtual {v1, v0}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 111
    iget-object v1, p0, Lrx/internal/operators/av$a;->a:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/av$a;->a:Lrx/l;

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-virtual {v1, v2}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/av$a;, "Lrx/internal/operators/av$a<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/av$a;->e:Z

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/av$a;->e:Z

    .line 95
    iget-object v0, p0, Lrx/internal/operators/av$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/operators/av$a;, "Lrx/internal/operators/av$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v2, p0, Lrx/internal/operators/av$a;->e:Z

    if-eqz v2, :cond_0

    .line 89
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/av$a;->c:Ljava/lang/Object;

    .line 78
    .local v1, "o":Ljava/lang/Object;
    sget-object v2, Lrx/internal/operators/av$a;->d:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 79
    iput-object p1, p0, Lrx/internal/operators/av$a;->c:Ljava/lang/Object;

    goto :goto_0

    .line 82
    :cond_1
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/av$a;->b:Lrx/c/q;

    invoke-interface {v2, v1, p1}, Lrx/c/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lrx/internal/operators/av$a;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 85
    invoke-virtual {p0}, Lrx/internal/operators/av$a;->unsubscribe()V

    .line 86
    invoke-virtual {p0, v0}, Lrx/internal/operators/av$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

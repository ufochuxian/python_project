.class final Lrx/internal/operators/en$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/en;
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
.field static final d:I = 0x0

.field static final e:I = 0x1

.field static final f:I = 0x2


# instance fields
.field final a:Lrx/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/k",
            "<-TT;>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method constructor <init>(Lrx/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/en$a;, "Lrx/internal/operators/en$a<TT;>;"
    .local p1, "actual":Lrx/k;, "Lrx/k<-TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 56
    iput-object p1, p0, Lrx/internal/operators/en$a;->a:Lrx/k;

    .line 57
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/en$a;, "Lrx/internal/operators/en$a<TT;>;"
    iget v0, p0, Lrx/internal/operators/en$a;->c:I

    .line 84
    .local v0, "s":I
    if-nez v0, :cond_1

    .line 85
    iget-object v2, p0, Lrx/internal/operators/en$a;->a:Lrx/k;

    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-virtual {v2, v3}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 87
    const/4 v2, 0x2

    iput v2, p0, Lrx/internal/operators/en$a;->c:I

    .line 88
    iget-object v1, p0, Lrx/internal/operators/en$a;->b:Ljava/lang/Object;

    .line 89
    .local v1, "v":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/en$a;->b:Ljava/lang/Object;

    .line 90
    iget-object v2, p0, Lrx/internal/operators/en$a;->a:Lrx/k;

    invoke-virtual {v2, v1}, Lrx/k;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/en$a;, "Lrx/internal/operators/en$a<TT;>;"
    iget v0, p0, Lrx/internal/operators/en$a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 74
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/en$a;->b:Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lrx/internal/operators/en$a;->a:Lrx/k;

    invoke-virtual {v0, p1}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/en$a;, "Lrx/internal/operators/en$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    .line 61
    iget v0, p0, Lrx/internal/operators/en$a;->c:I

    .line 62
    .local v0, "s":I
    if-nez v0, :cond_1

    .line 63
    iput v1, p0, Lrx/internal/operators/en$a;->c:I

    .line 64
    iput-object p1, p0, Lrx/internal/operators/en$a;->b:Ljava/lang/Object;

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    if-ne v0, v1, :cond_0

    .line 66
    const/4 v1, 0x2

    iput v1, p0, Lrx/internal/operators/en$a;->c:I

    .line 67
    iget-object v1, p0, Lrx/internal/operators/en$a;->a:Lrx/k;

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "The upstream produced more than one value"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

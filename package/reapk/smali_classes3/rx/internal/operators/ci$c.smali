.class final Lrx/internal/operators/ci$c;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
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
.field static final f:I


# instance fields
.field final a:Lrx/internal/operators/ci$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/ci$e",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field volatile c:Z

.field volatile d:Lrx/internal/util/j;

.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 833
    sget v0, Lrx/internal/util/j;->b:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Lrx/internal/operators/ci$c;->f:I

    return-void
.end method

.method public constructor <init>(Lrx/internal/operators/ci$e;J)V
    .locals 0
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/ci$e",
            "<TT;>;J)V"
        }
    .end annotation

    .prologue
    .line 835
    .local p0, "this":Lrx/internal/operators/ci$c;, "Lrx/internal/operators/ci$c<TT;>;"
    .local p1, "parent":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 836
    iput-object p1, p0, Lrx/internal/operators/ci$c;->a:Lrx/internal/operators/ci$e;

    .line 837
    iput-wide p2, p0, Lrx/internal/operators/ci$c;->b:J

    .line 838
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .line 860
    .local p0, "this":Lrx/internal/operators/ci$c;, "Lrx/internal/operators/ci$c<TT;>;"
    iget v2, p0, Lrx/internal/operators/ci$c;->e:I

    long-to-int v3, p1

    sub-int v1, v2, v3

    .line 861
    .local v1, "r":I
    sget v2, Lrx/internal/operators/ci$c;->f:I

    if-le v1, v2, :cond_1

    .line 862
    iput v1, p0, Lrx/internal/operators/ci$c;->e:I

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    sget v2, Lrx/internal/util/j;->b:I

    iput v2, p0, Lrx/internal/operators/ci$c;->e:I

    .line 866
    sget v2, Lrx/internal/util/j;->b:I

    sub-int v0, v2, v1

    .line 867
    .local v0, "k":I
    if-lez v0, :cond_0

    .line 868
    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/ci$c;->request(J)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 856
    .local p0, "this":Lrx/internal/operators/ci$c;, "Lrx/internal/operators/ci$c<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ci$c;->c:Z

    .line 857
    iget-object v0, p0, Lrx/internal/operators/ci$c;->a:Lrx/internal/operators/ci$e;

    invoke-virtual {v0}, Lrx/internal/operators/ci$e;->d()V

    .line 858
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 850
    .local p0, "this":Lrx/internal/operators/ci$c;, "Lrx/internal/operators/ci$c<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ci$c;->c:Z

    .line 851
    iget-object v0, p0, Lrx/internal/operators/ci$c;->a:Lrx/internal/operators/ci$e;

    invoke-virtual {v0}, Lrx/internal/operators/ci$e;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 852
    iget-object v0, p0, Lrx/internal/operators/ci$c;->a:Lrx/internal/operators/ci$e;

    invoke-virtual {v0}, Lrx/internal/operators/ci$e;->d()V

    .line 853
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
    .line 846
    .local p0, "this":Lrx/internal/operators/ci$c;, "Lrx/internal/operators/ci$c<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/ci$c;->a:Lrx/internal/operators/ci$e;

    invoke-virtual {v0, p0, p1}, Lrx/internal/operators/ci$e;->a(Lrx/internal/operators/ci$c;Ljava/lang/Object;)V

    .line 847
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 841
    .local p0, "this":Lrx/internal/operators/ci$c;, "Lrx/internal/operators/ci$c<TT;>;"
    sget v0, Lrx/internal/util/j;->b:I

    iput v0, p0, Lrx/internal/operators/ci$c;->e:I

    .line 842
    sget v0, Lrx/internal/util/j;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/ci$c;->request(J)V

    .line 843
    return-void
.end method

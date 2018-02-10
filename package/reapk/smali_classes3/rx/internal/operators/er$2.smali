.class Lrx/internal/operators/er$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/er;->a(Lrx/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lrx/k;

.field final synthetic c:Lrx/i/e;

.field final synthetic d:Lrx/internal/operators/er;


# direct methods
.method constructor <init>(Lrx/internal/operators/er;Lrx/k;Lrx/i/e;)V
    .locals 0

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/er$2;, "Lrx/internal/operators/er.2;"
    iput-object p1, p0, Lrx/internal/operators/er$2;->d:Lrx/internal/operators/er;

    iput-object p2, p0, Lrx/internal/operators/er$2;->b:Lrx/k;

    iput-object p3, p0, Lrx/internal/operators/er$2;->c:Lrx/i/e;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 75
    .local p0, "this":Lrx/internal/operators/er$2;, "Lrx/internal/operators/er.2;"
    iget-boolean v0, p0, Lrx/internal/operators/er$2;->a:Z

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/er$2;->a:Z

    .line 79
    iget-object v0, p0, Lrx/internal/operators/er$2;->c:Lrx/i/e;

    iget-object v1, p0, Lrx/internal/operators/er$2;->b:Lrx/k;

    invoke-virtual {v0, v1}, Lrx/i/e;->a(Lrx/m;)V

    .line 81
    iget-object v0, p0, Lrx/internal/operators/er$2;->d:Lrx/internal/operators/er;

    iget-object v0, v0, Lrx/internal/operators/er;->a:Lrx/i;

    iget-object v1, p0, Lrx/internal/operators/er$2;->b:Lrx/k;

    invoke-virtual {v0, v1}, Lrx/i;->a(Lrx/k;)Lrx/m;

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/er$2;, "Lrx/internal/operators/er.2;"
    iget-boolean v0, p0, Lrx/internal/operators/er$2;->a:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/er$2;->a:Z

    .line 70
    iget-object v0, p0, Lrx/internal/operators/er$2;->b:Lrx/k;

    invoke-virtual {v0, p1}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/er$2;, "Lrx/internal/operators/er.2;"
    invoke-virtual {p0}, Lrx/internal/operators/er$2;->onCompleted()V

    .line 61
    return-void
.end method

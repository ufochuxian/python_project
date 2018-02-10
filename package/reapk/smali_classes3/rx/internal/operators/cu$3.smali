.class Lrx/internal/operators/cu$3;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cu;->a(Lrx/l;)Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lrx/internal/operators/cu$a;

.field final synthetic c:Lrx/internal/operators/cu;

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/operators/cu;Ljava/lang/Object;Lrx/internal/operators/cu$a;)V
    .locals 1

    .prologue
    .line 131
    .local p0, "this":Lrx/internal/operators/cu$3;, "Lrx/internal/operators/cu.3;"
    iput-object p1, p0, Lrx/internal/operators/cu$3;->c:Lrx/internal/operators/cu;

    iput-object p2, p0, Lrx/internal/operators/cu$3;->a:Ljava/lang/Object;

    iput-object p3, p0, Lrx/internal/operators/cu$3;->b:Lrx/internal/operators/cu$a;

    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 132
    iget-object v0, p0, Lrx/internal/operators/cu$3;->a:Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/cu$3;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 154
    .local p0, "this":Lrx/internal/operators/cu$3;, "Lrx/internal/operators/cu.3;"
    iget-object v0, p0, Lrx/internal/operators/cu$3;->b:Lrx/internal/operators/cu$a;

    invoke-virtual {v0}, Lrx/internal/operators/cu$a;->onCompleted()V

    .line 155
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 149
    .local p0, "this":Lrx/internal/operators/cu$3;, "Lrx/internal/operators/cu.3;"
    iget-object v0, p0, Lrx/internal/operators/cu$3;->b:Lrx/internal/operators/cu$a;

    invoke-virtual {v0, p1}, Lrx/internal/operators/cu$a;->onError(Ljava/lang/Throwable;)V

    .line 150
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
    .line 136
    .local p0, "this":Lrx/internal/operators/cu$3;, "Lrx/internal/operators/cu.3;"
    .local p1, "currentValue":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lrx/internal/operators/cu$3;->d:Ljava/lang/Object;

    .line 138
    .local v1, "v":Ljava/lang/Object;, "TR;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/cu$3;->c:Lrx/internal/operators/cu;

    iget-object v2, v2, Lrx/internal/operators/cu;->a:Lrx/c/q;

    invoke-interface {v2, v1, p1}, Lrx/c/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 143
    iput-object v1, p0, Lrx/internal/operators/cu$3;->d:Ljava/lang/Object;

    .line 144
    iget-object v2, p0, Lrx/internal/operators/cu$3;->b:Lrx/internal/operators/cu$a;

    invoke-virtual {v2, v1}, Lrx/internal/operators/cu$a;->onNext(Ljava/lang/Object;)V

    .line 145
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setProducer(Lrx/g;)V
    .locals 1
    .param p1, "producer"    # Lrx/g;

    .prologue
    .line 159
    .local p0, "this":Lrx/internal/operators/cu$3;, "Lrx/internal/operators/cu.3;"
    iget-object v0, p0, Lrx/internal/operators/cu$3;->b:Lrx/internal/operators/cu$a;

    invoke-virtual {v0, p1}, Lrx/internal/operators/cu$a;->a(Lrx/g;)V

    .line 160
    return-void
.end method

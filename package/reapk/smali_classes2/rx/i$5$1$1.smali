.class Lrx/i$5$1$1;
.super Lrx/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/i$5$1;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/k",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i$5$1;


# direct methods
.method constructor <init>(Lrx/i$5$1;)V
    .locals 0

    .prologue
    .line 1926
    .local p0, "this":Lrx/i$5$1$1;, "Lrx/i$5$1.1;"
    iput-object p1, p0, Lrx/i$5$1$1;->a:Lrx/i$5$1;

    invoke-direct {p0}, Lrx/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1930
    .local p0, "this":Lrx/i$5$1$1;, "Lrx/i$5$1.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lrx/i$5$1$1;->a:Lrx/i$5$1;

    iget-object v0, v0, Lrx/i$5$1;->a:Lrx/k;

    invoke-virtual {v0, p1}, Lrx/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1932
    iget-object v0, p0, Lrx/i$5$1$1;->a:Lrx/i$5$1;

    iget-object v0, v0, Lrx/i$5$1;->b:Lrx/h$a;

    invoke-virtual {v0}, Lrx/h$a;->unsubscribe()V

    .line 1934
    return-void

    .line 1932
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/i$5$1$1;->a:Lrx/i$5$1;

    iget-object v1, v1, Lrx/i$5$1;->b:Lrx/h$a;

    invoke-virtual {v1}, Lrx/h$a;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 1939
    .local p0, "this":Lrx/i$5$1$1;, "Lrx/i$5$1.1;"
    :try_start_0
    iget-object v0, p0, Lrx/i$5$1$1;->a:Lrx/i$5$1;

    iget-object v0, v0, Lrx/i$5$1;->a:Lrx/k;

    invoke-virtual {v0, p1}, Lrx/k;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1941
    iget-object v0, p0, Lrx/i$5$1$1;->a:Lrx/i$5$1;

    iget-object v0, v0, Lrx/i$5$1;->b:Lrx/h$a;

    invoke-virtual {v0}, Lrx/h$a;->unsubscribe()V

    .line 1943
    return-void

    .line 1941
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/i$5$1$1;->a:Lrx/i$5$1;

    iget-object v1, v1, Lrx/i$5$1;->b:Lrx/h$a;

    invoke-virtual {v1}, Lrx/h$a;->unsubscribe()V

    throw v0
.end method

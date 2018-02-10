.class Lrx/i$3;
.super Lrx/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/i;->a(Lrx/c/c;Lrx/c/c;)Lrx/m;
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
.field final synthetic a:Lrx/c/c;

.field final synthetic b:Lrx/c/c;

.field final synthetic c:Lrx/i;


# direct methods
.method constructor <init>(Lrx/i;Lrx/c/c;Lrx/c/c;)V
    .locals 0

    .prologue
    .line 1686
    .local p0, "this":Lrx/i$3;, "Lrx/i.3;"
    iput-object p1, p0, Lrx/i$3;->c:Lrx/i;

    iput-object p2, p0, Lrx/i$3;->a:Lrx/c/c;

    iput-object p3, p0, Lrx/i$3;->b:Lrx/c/c;

    invoke-direct {p0}, Lrx/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1700
    .local p0, "this":Lrx/i$3;, "Lrx/i.3;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lrx/i$3;->b:Lrx/c/c;

    invoke-interface {v0, p1}, Lrx/c/c;->call(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1702
    invoke-virtual {p0}, Lrx/i$3;->unsubscribe()V

    .line 1704
    return-void

    .line 1702
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/i$3;->unsubscribe()V

    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1691
    .local p0, "this":Lrx/i$3;, "Lrx/i.3;"
    :try_start_0
    iget-object v0, p0, Lrx/i$3;->a:Lrx/c/c;

    invoke-interface {v0, p1}, Lrx/c/c;->call(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1693
    invoke-virtual {p0}, Lrx/i$3;->unsubscribe()V

    .line 1695
    return-void

    .line 1693
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/i$3;->unsubscribe()V

    throw v0
.end method

.class Lrx/internal/util/k$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/k$2;->a(Lrx/c/b;)Lrx/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/c/b;

.field final synthetic b:Lrx/h$a;

.field final synthetic c:Lrx/internal/util/k$2;


# direct methods
.method constructor <init>(Lrx/internal/util/k$2;Lrx/c/b;Lrx/h$a;)V
    .locals 0

    .prologue
    .line 110
    .local p0, "this":Lrx/internal/util/k$2$1;, "Lrx/internal/util/k$2.1;"
    iput-object p1, p0, Lrx/internal/util/k$2$1;->c:Lrx/internal/util/k$2;

    iput-object p2, p0, Lrx/internal/util/k$2$1;->a:Lrx/c/b;

    iput-object p3, p0, Lrx/internal/util/k$2$1;->b:Lrx/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/util/k$2$1;, "Lrx/internal/util/k$2.1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/util/k$2$1;->a:Lrx/c/b;

    invoke-interface {v0}, Lrx/c/b;->call()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-object v0, p0, Lrx/internal/util/k$2$1;->b:Lrx/h$a;

    invoke-virtual {v0}, Lrx/h$a;->unsubscribe()V

    .line 118
    return-void

    .line 116
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/util/k$2$1;->b:Lrx/h$a;

    invoke-virtual {v1}, Lrx/h$a;->unsubscribe()V

    throw v0
.end method

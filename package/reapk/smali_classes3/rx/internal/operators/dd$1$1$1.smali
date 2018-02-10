.class Lrx/internal/operators/dd$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/dd$1$1;->setProducer(Lrx/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/g;

.field final synthetic b:Lrx/internal/operators/dd$1$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/dd$1$1;Lrx/g;)V
    .locals 0

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/dd$1$1$1;, "Lrx/internal/operators/dd$1$1.1;"
    iput-object p1, p0, Lrx/internal/operators/dd$1$1$1;->b:Lrx/internal/operators/dd$1$1;

    iput-object p2, p0, Lrx/internal/operators/dd$1$1$1;->a:Lrx/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/dd$1$1$1;, "Lrx/internal/operators/dd$1$1.1;"
    iget-object v0, p0, Lrx/internal/operators/dd$1$1$1;->b:Lrx/internal/operators/dd$1$1;

    iget-object v0, v0, Lrx/internal/operators/dd$1$1;->a:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lrx/internal/operators/dd$1$1$1;->a:Lrx/g;

    invoke-interface {v0, p1, p2}, Lrx/g;->request(J)V

    .line 89
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/dd$1$1$1;->b:Lrx/internal/operators/dd$1$1;

    iget-object v0, v0, Lrx/internal/operators/dd$1$1;->b:Lrx/internal/operators/dd$1;

    iget-object v0, v0, Lrx/internal/operators/dd$1;->b:Lrx/h$a;

    new-instance v1, Lrx/internal/operators/dd$1$1$1$1;

    invoke-direct {v1, p0, p1, p2}, Lrx/internal/operators/dd$1$1$1$1;-><init>(Lrx/internal/operators/dd$1$1$1;J)V

    invoke-virtual {v0, v1}, Lrx/h$a;->a(Lrx/c/b;)Lrx/m;

    goto :goto_0
.end method

.class Lrx/internal/operators/bg$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/bg$a;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/bg$a;


# direct methods
.method constructor <init>(Lrx/internal/operators/bg$a;)V
    .locals 0

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/bg$a$1;, "Lrx/internal/operators/bg$a.1;"
    iput-object p1, p0, Lrx/internal/operators/bg$a$1;->a:Lrx/internal/operators/bg$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/bg$a$1;, "Lrx/internal/operators/bg$a.1;"
    iget-object v0, p0, Lrx/internal/operators/bg$a$1;->a:Lrx/internal/operators/bg$a;

    iget-object v0, v0, Lrx/internal/operators/bg$a;->a:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 67
    return-void
.end method

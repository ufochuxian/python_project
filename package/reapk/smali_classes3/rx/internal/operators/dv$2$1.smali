.class Lrx/internal/operators/dv$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/dv$2;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/h$a;

.field final synthetic b:Lrx/internal/operators/dv$2;


# direct methods
.method constructor <init>(Lrx/internal/operators/dv$2;Lrx/h$a;)V
    .locals 0

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/dv$2$1;, "Lrx/internal/operators/dv$2.1;"
    iput-object p1, p0, Lrx/internal/operators/dv$2$1;->b:Lrx/internal/operators/dv$2;

    iput-object p2, p0, Lrx/internal/operators/dv$2$1;->a:Lrx/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/dv$2$1;, "Lrx/internal/operators/dv$2.1;"
    iget-object v0, p0, Lrx/internal/operators/dv$2$1;->b:Lrx/internal/operators/dv$2;

    iget-object v0, v0, Lrx/internal/operators/dv$2;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->unsubscribe()V

    .line 67
    iget-object v0, p0, Lrx/internal/operators/dv$2$1;->a:Lrx/h$a;

    invoke-virtual {v0}, Lrx/h$a;->unsubscribe()V

    .line 68
    return-void
.end method

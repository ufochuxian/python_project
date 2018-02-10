.class Lrx/internal/operators/er$1;
.super Lrx/k;
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
        "Lrx/k",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/k;

.field final synthetic b:Lrx/internal/operators/er;


# direct methods
.method constructor <init>(Lrx/internal/operators/er;Lrx/k;)V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/er$1;, "Lrx/internal/operators/er.1;"
    iput-object p1, p0, Lrx/internal/operators/er$1;->b:Lrx/internal/operators/er;

    iput-object p2, p0, Lrx/internal/operators/er$1;->a:Lrx/k;

    invoke-direct {p0}, Lrx/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/operators/er$1;, "Lrx/internal/operators/er.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/er$1;->a:Lrx/k;

    invoke-virtual {v0, p1}, Lrx/k;->a(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/er$1;, "Lrx/internal/operators/er.1;"
    iget-object v0, p0, Lrx/internal/operators/er$1;->a:Lrx/k;

    invoke-virtual {v0, p1}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    .line 50
    return-void
.end method

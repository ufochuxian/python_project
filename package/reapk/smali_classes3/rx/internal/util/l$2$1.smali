.class Lrx/internal/util/l$2$1;
.super Lrx/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/l$2;->a(Lrx/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/k",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/k;

.field final synthetic b:Lrx/internal/util/l$2;


# direct methods
.method constructor <init>(Lrx/internal/util/l$2;Lrx/k;)V
    .locals 0

    .prologue
    .line 132
    .local p0, "this":Lrx/internal/util/l$2$1;, "Lrx/internal/util/l$2.1;"
    iput-object p1, p0, Lrx/internal/util/l$2$1;->b:Lrx/internal/util/l$2;

    iput-object p2, p0, Lrx/internal/util/l$2$1;->a:Lrx/k;

    invoke-direct {p0}, Lrx/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lrx/internal/util/l$2$1;, "Lrx/internal/util/l$2.1;"
    .local p1, "r":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lrx/internal/util/l$2$1;->a:Lrx/k;

    invoke-virtual {v0, p1}, Lrx/k;->a(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    .local p0, "this":Lrx/internal/util/l$2$1;, "Lrx/internal/util/l$2.1;"
    iget-object v0, p0, Lrx/internal/util/l$2$1;->a:Lrx/k;

    invoke-virtual {v0, p1}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    .line 136
    return-void
.end method

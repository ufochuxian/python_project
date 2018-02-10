.class final Lrx/internal/operators/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/b;->a(Lrx/e;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/e;


# direct methods
.method constructor <init>(Lrx/e;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lrx/internal/operators/b$1;->a:Lrx/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lrx/internal/operators/b$a;

    invoke-direct {v0}, Lrx/internal/operators/b$a;-><init>()V

    .line 52
    .local v0, "lio":Lrx/internal/operators/b$a;, "Lrx/internal/operators/b$a<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/b$1;->a:Lrx/e;

    invoke-virtual {v1}, Lrx/e;->q()Lrx/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/e;->b(Lrx/l;)Lrx/m;

    .line 53
    return-object v0
.end method

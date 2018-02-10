.class final Lrx/internal/operators/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/c;->a(Lrx/e;Ljava/lang/Object;)Ljava/lang/Iterable;
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
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lrx/e;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lrx/e;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lrx/internal/operators/c$1;->a:Ljava/lang/Object;

    iput-object p2, p0, Lrx/internal/operators/c$1;->b:Lrx/e;

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
    new-instance v0, Lrx/internal/operators/c$a;

    iget-object v1, p0, Lrx/internal/operators/c$1;->a:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lrx/internal/operators/c$a;-><init>(Ljava/lang/Object;)V

    .line 57
    .local v0, "mostRecentObserver":Lrx/internal/operators/c$a;, "Lrx/internal/operators/c$a<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/c$1;->b:Lrx/e;

    invoke-virtual {v1, v0}, Lrx/e;->b(Lrx/l;)Lrx/m;

    .line 59
    invoke-virtual {v0}, Lrx/internal/operators/c$a;->a()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

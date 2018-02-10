.class final Lrx/internal/operators/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/d;->a(Lrx/e;)Ljava/lang/Iterable;
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
    .line 46
    iput-object p1, p0, Lrx/internal/operators/d$1;->a:Lrx/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lrx/internal/operators/d$b;

    invoke-direct {v0}, Lrx/internal/operators/d$b;-><init>()V

    .line 50
    .local v0, "nextObserver":Lrx/internal/operators/d$b;, "Lrx/internal/operators/d$b<TT;>;"
    new-instance v1, Lrx/internal/operators/d$a;

    iget-object v2, p0, Lrx/internal/operators/d$1;->a:Lrx/e;

    invoke-direct {v1, v2, v0}, Lrx/internal/operators/d$a;-><init>(Lrx/e;Lrx/internal/operators/d$b;)V

    return-object v1
.end method

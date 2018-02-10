.class public abstract Lrx/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/m;"
    }
.end annotation


# instance fields
.field private final a:Lrx/internal/util/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Lrx/k;, "Lrx/k<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lrx/internal/util/m;

    invoke-direct {v0}, Lrx/internal/util/m;-><init>()V

    iput-object v0, p0, Lrx/k;->a:Lrx/internal/util/m;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final a(Lrx/m;)V
    .locals 1
    .param p1, "s"    # Lrx/m;

    .prologue
    .line 70
    .local p0, "this":Lrx/k;, "Lrx/k<TT;>;"
    iget-object v0, p0, Lrx/k;->a:Lrx/internal/util/m;

    invoke-virtual {v0, p1}, Lrx/internal/util/m;->a(Lrx/m;)V

    .line 71
    return-void
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lrx/k;, "Lrx/k<TT;>;"
    iget-object v0, p0, Lrx/k;->a:Lrx/internal/util/m;

    invoke-virtual {v0}, Lrx/internal/util/m;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 75
    .local p0, "this":Lrx/k;, "Lrx/k<TT;>;"
    iget-object v0, p0, Lrx/k;->a:Lrx/internal/util/m;

    invoke-virtual {v0}, Lrx/internal/util/m;->unsubscribe()V

    .line 76
    return-void
.end method

.class public final Lrx/internal/operators/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/f$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lrx/e;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "source":Lrx/e;, "Lrx/e<+TT;>;"
    new-instance v0, Lrx/internal/operators/f$a;

    invoke-direct {v0}, Lrx/internal/operators/f$a;-><init>()V

    .line 52
    .local v0, "subscriber":Lrx/internal/operators/f$a;, "Lrx/internal/operators/f$a<TT;>;"
    invoke-virtual {p0}, Lrx/e;->q()Lrx/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/e;->b(Lrx/l;)Lrx/m;

    .line 53
    return-object v0
.end method

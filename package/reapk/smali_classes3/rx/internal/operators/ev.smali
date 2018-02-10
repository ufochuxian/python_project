.class public final Lrx/internal/operators/ev;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a([Lrx/i;Lrx/c/y;)Lrx/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/c/y",
            "<+TR;>;)",
            "Lrx/i",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "singles":[Lrx/i;, "[Lrx/i<+TT;>;"
    .local p1, "zipper":Lrx/c/y;, "Lrx/c/y<+TR;>;"
    new-instance v0, Lrx/internal/operators/ev$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/ev$1;-><init>([Lrx/i;Lrx/c/y;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

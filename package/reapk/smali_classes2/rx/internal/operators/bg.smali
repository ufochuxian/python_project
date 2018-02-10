.class public final Lrx/internal/operators/bg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/bg$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/util/concurrent/Future;)Lrx/e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;)",
            "Lrx/e$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "that":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    new-instance v0, Lrx/internal/operators/bg$a;

    invoke-direct {v0, p0}, Lrx/internal/operators/bg$a;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lrx/e$a;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "that":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    new-instance v0, Lrx/internal/operators/bg$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/internal/operators/bg$a;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

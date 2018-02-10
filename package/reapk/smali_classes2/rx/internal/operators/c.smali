.class public final Lrx/internal/operators/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/c$a;
    }
.end annotation


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

.method public static a(Lrx/e;Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;TT;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "source":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/operators/c$1;

    invoke-direct {v0, p1, p0}, Lrx/internal/operators/c$1;-><init>(Ljava/lang/Object;Lrx/e;)V

    return-object v0
.end method

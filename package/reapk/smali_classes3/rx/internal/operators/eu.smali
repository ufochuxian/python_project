.class public final Lrx/internal/operators/eu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/i$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/i",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/i;Lrx/c/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/c/p",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/i",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/eu;, "Lrx/internal/operators/eu<TT;>;"
    .local p1, "originalSingle":Lrx/i;, "Lrx/i<+TT;>;"
    .local p2, "resumeFunctionInCaseOfError":Lrx/c/p;, "Lrx/c/p<Ljava/lang/Throwable;+Lrx/i<+TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "originalSingle must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    if-nez p2, :cond_1

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resumeFunctionInCaseOfError must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    iput-object p1, p0, Lrx/internal/operators/eu;->b:Lrx/i;

    .line 38
    iput-object p2, p0, Lrx/internal/operators/eu;->a:Lrx/c/p;

    .line 39
    return-void
.end method

.method public static a(Lrx/i;Lrx/c/p;)Lrx/internal/operators/eu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/c/p",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/i",
            "<+TT;>;>;)",
            "Lrx/internal/operators/eu",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "originalSingle":Lrx/i;, "Lrx/i<+TT;>;"
    .local p1, "resumeFunctionInCaseOfError":Lrx/c/p;, "Lrx/c/p<Ljava/lang/Throwable;+Lrx/i<+TT;>;>;"
    new-instance v0, Lrx/internal/operators/eu;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/eu;-><init>(Lrx/i;Lrx/c/p;)V

    return-object v0
.end method

.method public static a(Lrx/i;Lrx/i;)Lrx/internal/operators/eu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/internal/operators/eu",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "originalSingle":Lrx/i;, "Lrx/i<+TT;>;"
    .local p1, "resumeSingleInCaseOfError":Lrx/i;, "Lrx/i<+TT;>;"
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resumeSingleInCaseOfError must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    new-instance v0, Lrx/internal/operators/eu;

    new-instance v1, Lrx/internal/operators/eu$1;

    invoke-direct {v1, p1}, Lrx/internal/operators/eu$1;-><init>(Lrx/i;)V

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/eu;-><init>(Lrx/i;Lrx/c/p;)V

    return-object v0
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/eu;, "Lrx/internal/operators/eu<TT;>;"
    .local p1, "child":Lrx/k;, "Lrx/k<-TT;>;"
    new-instance v0, Lrx/internal/operators/eu$2;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/eu$2;-><init>(Lrx/internal/operators/eu;Lrx/k;)V

    .line 76
    .local v0, "parent":Lrx/k;, "Lrx/k<-TT;>;"
    invoke-virtual {p1, v0}, Lrx/k;->a(Lrx/m;)V

    .line 77
    iget-object v1, p0, Lrx/internal/operators/eu;->b:Lrx/i;

    invoke-virtual {v1, v0}, Lrx/i;->a(Lrx/k;)Lrx/m;

    .line 78
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    .local p0, "this":Lrx/internal/operators/eu;, "Lrx/internal/operators/eu<TT;>;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/eu;->a(Lrx/k;)V

    return-void
.end method

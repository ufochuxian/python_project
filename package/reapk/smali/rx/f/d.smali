.class public abstract Lrx/f/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    return-object p1
.end method

.method public a(Lrx/e$a;)Lrx/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e$a",
            "<TT;>;)",
            "Lrx/e$a",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    .local p1, "f":Lrx/e$a;, "Lrx/e$a<TT;>;"
    return-object p1
.end method

.method public a(Lrx/e;Lrx/e$a;)Lrx/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e$a",
            "<TT;>;)",
            "Lrx/e$a",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    .local p1, "observableInstance":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "onSubscribe":Lrx/e$a;, "Lrx/e$a<TT;>;"
    return-object p2
.end method

.method public a(Lrx/e$b;)Lrx/e$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e$b",
            "<+TR;-TT;>;)",
            "Lrx/e$b",
            "<+TR;-TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 131
    .local p1, "lift":Lrx/e$b;, "Lrx/e$b<+TR;-TT;>;"
    return-object p1
.end method

.method public a(Lrx/m;)Lrx/m;
    .locals 0
    .param p1, "subscription"    # Lrx/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/m;",
            ")",
            "Lrx/m;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    return-object p1
.end method

.class public abstract Lrx/f/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
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
    .line 111
    return-object p1
.end method

.method public a(Lrx/i;Lrx/e$a;)Lrx/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
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
    .line 75
    .local p1, "singleInstance":Lrx/i;, "Lrx/i<+TT;>;"
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
    .line 130
    .local p1, "lift":Lrx/e$b;, "Lrx/e$b<+TR;-TT;>;"
    return-object p1
.end method

.method public a(Lrx/i$a;)Lrx/i$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i$a",
            "<TT;>;)",
            "Lrx/i$a",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    .local p1, "f":Lrx/i$a;, "Lrx/i$a<TT;>;"
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
    .line 94
    return-object p1
.end method

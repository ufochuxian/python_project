.class public final Lrx/internal/operators/cv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/cv;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT;>;)",
            "Lrx/e",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "source":Lrx/e;, "Lrx/e<TT;>;"
    sget-object v0, Lrx/internal/operators/cv;->a:Ljava/lang/Object;

    invoke-static {v0}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {p0, v0}, Lrx/e;->b(Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/c/q;)Lrx/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/c/q",
            "<-TT;-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "first":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "second":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "equality":Lrx/c/q;, "Lrx/c/q<-TT;-TT;Ljava/lang/Boolean;>;"
    invoke-static {p0}, Lrx/internal/operators/cv;->a(Lrx/e;)Lrx/e;

    move-result-object v0

    .line 60
    .local v0, "firstObservable":Lrx/e;, "Lrx/e<Ljava/lang/Object;>;"
    invoke-static {p1}, Lrx/internal/operators/cv;->a(Lrx/e;)Lrx/e;

    move-result-object v1

    .line 62
    .local v1, "secondObservable":Lrx/e;, "Lrx/e<Ljava/lang/Object;>;"
    new-instance v2, Lrx/internal/operators/cv$1;

    invoke-direct {v2, p2}, Lrx/internal/operators/cv$1;-><init>(Lrx/c/q;)V

    invoke-static {v0, v1, v2}, Lrx/e;->c(Lrx/e;Lrx/e;Lrx/c/q;)Lrx/e;

    move-result-object v2

    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/c/p;)Lrx/e;

    move-result-object v2

    return-object v2
.end method

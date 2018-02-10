.class public final Lrx/internal/operators/h;
.super Lrx/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/h$c;,
        Lrx/internal/operators/h$b;,
        Lrx/internal/operators/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/e",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lrx/internal/operators/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/h$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/e$a;Lrx/internal/operators/h$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e$a",
            "<TT;>;",
            "Lrx/internal/operators/h$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/h;, "Lrx/internal/operators/h<TT;>;"
    .local p1, "onSubscribe":Lrx/e$a;, "Lrx/e$a<TT;>;"
    .local p2, "state":Lrx/internal/operators/h$a;, "Lrx/internal/operators/h$a<TT;>;"
    invoke-direct {p0, p1}, Lrx/e;-><init>(Lrx/e$a;)V

    .line 71
    iput-object p2, p0, Lrx/internal/operators/h;->b:Lrx/internal/operators/h$a;

    .line 72
    return-void
.end method

.method public static e(Lrx/e;I)Lrx/internal/operators/h;
    .locals 4
    .param p1, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;I)",
            "Lrx/internal/operators/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "source":Lrx/e;, "Lrx/e<+TT;>;"
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 56
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "capacityHint > 0 required"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_0
    new-instance v1, Lrx/internal/operators/h$a;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/h$a;-><init>(Lrx/e;I)V

    .line 59
    .local v1, "state":Lrx/internal/operators/h$a;, "Lrx/internal/operators/h$a<TT;>;"
    new-instance v0, Lrx/internal/operators/h$b;

    invoke-direct {v0, v1}, Lrx/internal/operators/h$b;-><init>(Lrx/internal/operators/h$a;)V

    .line 60
    .local v0, "onSubscribe":Lrx/internal/operators/h$b;, "Lrx/internal/operators/h$b<TT;>;"
    new-instance v2, Lrx/internal/operators/h;

    invoke-direct {v2, v0, v1}, Lrx/internal/operators/h;-><init>(Lrx/e$a;Lrx/internal/operators/h$a;)V

    return-object v2
.end method

.method public static u(Lrx/e;)Lrx/internal/operators/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/internal/operators/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "source":Lrx/e;, "Lrx/e<+TT;>;"
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lrx/internal/operators/h;->e(Lrx/e;I)Lrx/internal/operators/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method K()Z
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/h;, "Lrx/internal/operators/h<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/h;->b:Lrx/internal/operators/h$a;

    iget-boolean v0, v0, Lrx/internal/operators/h$a;->e:Z

    return v0
.end method

.method L()Z
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/h;, "Lrx/internal/operators/h<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/h;->b:Lrx/internal/operators/h$a;

    iget-object v0, v0, Lrx/internal/operators/h$a;->c:[Lrx/internal/operators/h$c;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public final Lrx/internal/operators/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/an$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Left:Ljava/lang/Object;",
        "TRight:",
        "Ljava/lang/Object;",
        "T",
        "LeftDuration:Ljava/lang/Object;",
        "TRightDuration:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TT",
            "Left;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TTRight;>;"
        }
    .end annotation
.end field

.field final c:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<TT",
            "Left;",
            "Lrx/e",
            "<TT",
            "LeftDuration;",
            ">;>;"
        }
    .end annotation
.end field

.field final d:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<TTRight;",
            "Lrx/e",
            "<TTRightDuration;>;>;"
        }
    .end annotation
.end field

.field final e:Lrx/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/q",
            "<TT",
            "Left;",
            "TTRight;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/e;Lrx/e;Lrx/c/p;Lrx/c/p;Lrx/c/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT",
            "Left;",
            ">;",
            "Lrx/e",
            "<TTRight;>;",
            "Lrx/c/p",
            "<TT",
            "Left;",
            "Lrx/e",
            "<TT",
            "LeftDuration;",
            ">;>;",
            "Lrx/c/p",
            "<TTRight;",
            "Lrx/e",
            "<TTRightDuration;>;>;",
            "Lrx/c/q",
            "<TT",
            "Left;",
            "TTRight;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/an;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>;"
    .local p1, "left":Lrx/e;, "Lrx/e<TTLeft;>;"
    .local p2, "right":Lrx/e;, "Lrx/e<TTRight;>;"
    .local p3, "leftDurationSelector":Lrx/c/p;, "Lrx/c/p<TTLeft;Lrx/e<TTLeftDuration;>;>;"
    .local p4, "rightDurationSelector":Lrx/c/p;, "Lrx/c/p<TTRight;Lrx/e<TTRightDuration;>;>;"
    .local p5, "resultSelector":Lrx/c/q;, "Lrx/c/q<TTLeft;TTRight;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lrx/internal/operators/an;->a:Lrx/e;

    .line 51
    iput-object p2, p0, Lrx/internal/operators/an;->b:Lrx/e;

    .line 52
    iput-object p3, p0, Lrx/internal/operators/an;->c:Lrx/c/p;

    .line 53
    iput-object p4, p0, Lrx/internal/operators/an;->d:Lrx/c/p;

    .line 54
    iput-object p5, p0, Lrx/internal/operators/an;->e:Lrx/c/q;

    .line 55
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/an;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>;"
    .local p1, "t1":Lrx/l;, "Lrx/l<-TR;>;"
    new-instance v0, Lrx/internal/operators/an$a;

    new-instance v1, Lrx/e/g;

    invoke-direct {v1, p1}, Lrx/e/g;-><init>(Lrx/l;)V

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/an$a;-><init>(Lrx/internal/operators/an;Lrx/l;)V

    .line 60
    .local v0, "result":Lrx/internal/operators/an$a;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a;"
    invoke-virtual {v0}, Lrx/internal/operators/an$a;->run()V

    .line 61
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/an;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/an;->a(Lrx/l;)V

    return-void
.end method

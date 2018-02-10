.class public final Lrx/internal/operators/cw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/cw$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<TT;TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/cw;, "Lrx/internal/operators/cw<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static a()Lrx/internal/operators/cw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/cw",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lrx/internal/operators/cw$a;->a:Lrx/internal/operators/cw;

    return-object v0
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/cw;, "Lrx/internal/operators/cw<TT;>;"
    .local p1, "s":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/e/g;

    new-instance v1, Lrx/internal/operators/cw$1;

    invoke-direct {v1, p0, p1, p1}, Lrx/internal/operators/cw$1;-><init>(Lrx/internal/operators/cw;Lrx/l;Lrx/l;)V

    invoke-direct {v0, v1}, Lrx/e/g;-><init>(Lrx/l;)V

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 22
    .local p0, "this":Lrx/internal/operators/cw;, "Lrx/internal/operators/cw<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/cw;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

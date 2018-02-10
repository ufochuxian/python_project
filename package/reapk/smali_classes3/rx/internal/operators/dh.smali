.class public final Lrx/internal/operators/dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/dh$a;
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


# instance fields
.field final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/dh;, "Lrx/internal/operators/dh<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-gez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "count cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput p1, p0, Lrx/internal/operators/dh;->a:I

    .line 41
    return-void
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
    .line 45
    .local p0, "this":Lrx/internal/operators/dh;, "Lrx/internal/operators/dh<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/internal/operators/dh$a;

    iget v1, p0, Lrx/internal/operators/dh;->a:I

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/dh$a;-><init>(Lrx/l;I)V

    .line 47
    .local v0, "parent":Lrx/internal/operators/dh$a;, "Lrx/internal/operators/dh$a<TT;>;"
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 48
    new-instance v1, Lrx/internal/operators/dh$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/dh$1;-><init>(Lrx/internal/operators/dh;Lrx/internal/operators/dh$a;)V

    invoke-virtual {p1, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 55
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/dh;, "Lrx/internal/operators/dh<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/dh;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

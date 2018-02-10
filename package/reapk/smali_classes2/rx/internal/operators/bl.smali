.class public final Lrx/internal/operators/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/bl$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "TClosing:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/o",
            "<+",
            "Lrx/e",
            "<+TTClosing;>;>;"
        }
    .end annotation
.end field

.field final b:I


# direct methods
.method public constructor <init>(Lrx/c/o;I)V
    .locals 0
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/o",
            "<+",
            "Lrx/e",
            "<+TTClosing;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/bl;, "Lrx/internal/operators/bl<TT;TTClosing;>;"
    .local p1, "bufferClosingSelector":Lrx/c/o;, "Lrx/c/o<+Lrx/e<+TTClosing;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lrx/internal/operators/bl;->a:Lrx/c/o;

    .line 57
    iput p2, p0, Lrx/internal/operators/bl;->b:I

    .line 58
    return-void
.end method

.method public constructor <init>(Lrx/e;I)V
    .locals 1
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TTClosing;>;I)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/bl;, "Lrx/internal/operators/bl<TT;TTClosing;>;"
    .local p1, "bufferClosing":Lrx/e;, "Lrx/e<+TTClosing;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lrx/internal/operators/bl$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/bl$1;-><init>(Lrx/internal/operators/bl;Lrx/e;)V

    iput-object v0, p0, Lrx/internal/operators/bl;->a:Lrx/c/o;

    .line 73
    iput p2, p0, Lrx/internal/operators/bl;->b:I

    .line 74
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lrx/internal/operators/bl;, "Lrx/internal/operators/bl<TT;TTClosing;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-Ljava/util/List<TT;>;>;"
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/bl;->a:Lrx/c/o;

    invoke-interface {v4}, Lrx/c/o;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .local v0, "closing":Lrx/e;, "Lrx/e<+TTClosing;>;"
    new-instance v2, Lrx/internal/operators/bl$a;

    new-instance v4, Lrx/e/g;

    invoke-direct {v4, p1}, Lrx/e/g;-><init>(Lrx/l;)V

    invoke-direct {v2, p0, v4}, Lrx/internal/operators/bl$a;-><init>(Lrx/internal/operators/bl;Lrx/l;)V

    .line 87
    .local v2, "s":Lrx/internal/operators/bl$a;, "Lrx/internal/operators/bl<TT;TTClosing;>.a;"
    new-instance v1, Lrx/internal/operators/bl$2;

    invoke-direct {v1, p0, v2}, Lrx/internal/operators/bl$2;-><init>(Lrx/internal/operators/bl;Lrx/internal/operators/bl$a;)V

    .line 105
    .local v1, "closingSubscriber":Lrx/l;, "Lrx/l<TTClosing;>;"
    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 106
    invoke-virtual {p1, v2}, Lrx/l;->add(Lrx/m;)V

    .line 108
    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 110
    .end local v0    # "closing":Lrx/e;, "Lrx/e<+TTClosing;>;"
    .end local v1    # "closingSubscriber":Lrx/l;, "Lrx/l<TTClosing;>;"
    .end local v2    # "s":Lrx/internal/operators/bl$a;, "Lrx/internal/operators/bl<TT;TTClosing;>.a;"
    :goto_0
    return-object v2

    .line 81
    :catch_0
    move-exception v3

    .line 82
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {v3, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    .line 83
    invoke-static {}, Lrx/e/h;->a()Lrx/l;

    move-result-object v2

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/bl;, "Lrx/internal/operators/bl<TT;TTClosing;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/bl;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

.class public final Lrx/internal/operators/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/cn$c;,
        Lrx/internal/operators/cn$b;,
        Lrx/internal/operators/cn$a;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/cn;, "Lrx/internal/operators/cn<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method public static a()Lrx/internal/operators/cn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/cn",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lrx/internal/operators/cn$a;->a:Lrx/internal/operators/cn;

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
    .line 46
    .local p0, "this":Lrx/internal/operators/cn;, "Lrx/internal/operators/cn<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v1, Lrx/internal/operators/cn$b;

    invoke-direct {v1, p1}, Lrx/internal/operators/cn$b;-><init>(Lrx/l;)V

    .line 47
    .local v1, "producer":Lrx/internal/operators/cn$b;, "Lrx/internal/operators/cn$b<TT;>;"
    new-instance v0, Lrx/internal/operators/cn$c;

    invoke-direct {v0, v1}, Lrx/internal/operators/cn$c;-><init>(Lrx/internal/operators/cn$b;)V

    .line 48
    .local v0, "parent":Lrx/internal/operators/cn$c;, "Lrx/internal/operators/cn$c<TT;>;"
    iput-object v0, v1, Lrx/internal/operators/cn$b;->b:Lrx/internal/operators/cn$c;

    .line 49
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 50
    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 51
    invoke-virtual {p1, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 52
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/cn;, "Lrx/internal/operators/cn<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/cn;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

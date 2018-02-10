.class public final Lrx/internal/operators/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/q;
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/bw$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c/q",
        "<TU;TU;",
        "Ljava/lang/Boolean;",
        ">;",
        "Lrx/e$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+TU;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/q",
            "<-TU;-TU;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;+TU;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/bw;, "Lrx/internal/operators/bw<TT;TU;>;"
    .local p1, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lrx/internal/operators/bw;->a:Lrx/c/p;

    .line 53
    iput-object p0, p0, Lrx/internal/operators/bw;->b:Lrx/c/q;

    .line 55
    return-void
.end method

.method public constructor <init>(Lrx/c/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/q",
            "<-TU;-TU;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/bw;, "Lrx/internal/operators/bw<TT;TU;>;"
    .local p1, "comparator":Lrx/c/q;, "Lrx/c/q<-TU;-TU;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/bw;->a:Lrx/c/p;

    .line 60
    iput-object p1, p0, Lrx/internal/operators/bw;->b:Lrx/c/q;

    .line 61
    return-void
.end method

.method public static a()Lrx/internal/operators/bw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/bw",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lrx/internal/operators/bw$a;->a:Lrx/internal/operators/bw;

    return-object v0
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/bw;, "Lrx/internal/operators/bw<TT;TU;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/bw;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/l;)Lrx/l;
    .locals 1
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
    .line 70
    .local p0, "this":Lrx/internal/operators/bw;, "Lrx/internal/operators/bw<TT;TU;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/internal/operators/bw$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/bw$1;-><init>(Lrx/internal/operators/bw;Lrx/l;Lrx/l;)V

    return-object v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;TU;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/bw;, "Lrx/internal/operators/bw<TT;TU;>;"
    .local p1, "t1":Ljava/lang/Object;, "TU;"
    .local p2, "t2":Ljava/lang/Object;, "TU;"
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/bw;, "Lrx/internal/operators/bw<TT;TU;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/bw;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

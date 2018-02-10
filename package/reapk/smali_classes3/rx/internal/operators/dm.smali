.class public final Lrx/internal/operators/dm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
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
.field final a:Lrx/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/q",
            "<-TT;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/dm;, "Lrx/internal/operators/dm<TT;>;"
    .local p1, "underlying":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/dm$1;

    invoke-direct {v0, p1}, Lrx/internal/operators/dm$1;-><init>(Lrx/c/p;)V

    invoke-direct {p0, v0}, Lrx/internal/operators/dm;-><init>(Lrx/c/q;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lrx/c/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/q",
            "<-TT;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/dm;, "Lrx/internal/operators/dm<TT;>;"
    .local p1, "predicate":Lrx/c/q;, "Lrx/c/q<-TT;-Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lrx/internal/operators/dm;->a:Lrx/c/q;

    .line 45
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
    .line 49
    .local p0, "this":Lrx/internal/operators/dm;, "Lrx/internal/operators/dm<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/internal/operators/dm$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p1}, Lrx/internal/operators/dm$2;-><init>(Lrx/internal/operators/dm;Lrx/l;ZLrx/l;)V

    .line 90
    .local v0, "s":Lrx/l;, "Lrx/l<TT;>;"
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 91
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/dm;, "Lrx/internal/operators/dm<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/dm;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

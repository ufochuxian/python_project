.class public final Lrx/internal/operators/dk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/dk;, "Lrx/internal/operators/dk<TT;TE;>;"
    .local p1, "other":Lrx/e;, "Lrx/e<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/internal/operators/dk;->a:Lrx/e;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 4
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
    .local p0, "this":Lrx/internal/operators/dk;, "Lrx/internal/operators/dk<TT;TE;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    const/4 v3, 0x0

    .line 40
    new-instance v1, Lrx/e/g;

    invoke-direct {v1, p1, v3}, Lrx/e/g;-><init>(Lrx/l;Z)V

    .line 42
    .local v1, "serial":Lrx/l;, "Lrx/l<TT;>;"
    new-instance v0, Lrx/internal/operators/dk$1;

    invoke-direct {v0, p0, v1, v3, v1}, Lrx/internal/operators/dk$1;-><init>(Lrx/internal/operators/dk;Lrx/l;ZLrx/l;)V

    .line 65
    .local v0, "main":Lrx/l;, "Lrx/l<TT;>;"
    new-instance v2, Lrx/internal/operators/dk$2;

    invoke-direct {v2, p0, v0}, Lrx/internal/operators/dk$2;-><init>(Lrx/internal/operators/dk;Lrx/l;)V

    .line 88
    .local v2, "so":Lrx/l;, "Lrx/l<TE;>;"
    invoke-virtual {v1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 89
    invoke-virtual {v1, v2}, Lrx/l;->add(Lrx/m;)V

    .line 91
    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 93
    iget-object v3, p0, Lrx/internal/operators/dk;->a:Lrx/e;

    invoke-virtual {v3, v2}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 95
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/dk;, "Lrx/internal/operators/dk<TT;TE;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/dk;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

.class public Lrx/internal/operators/ca;
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
.field private final a:Lrx/c/b;


# direct methods
.method public constructor <init>(Lrx/c/b;)V
    .locals 0
    .param p1, "unsubscribe"    # Lrx/c/b;

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/ca;, "Lrx/internal/operators/ca<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/ca;->a:Lrx/c/b;

    .line 37
    return-void
.end method


# virtual methods
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
    .line 41
    .local p0, "this":Lrx/internal/operators/ca;, "Lrx/internal/operators/ca<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ca;->a:Lrx/c/b;

    invoke-static {v0}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 45
    invoke-static {p1}, Lrx/e/h;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/ca;, "Lrx/internal/operators/ca<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ca;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

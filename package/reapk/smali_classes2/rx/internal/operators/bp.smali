.class public Lrx/internal/operators/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/bp$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<TR;TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/bp;, "Lrx/internal/operators/bp<TT;TR;>;"
    .local p1, "castClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/bp;->a:Ljava/lang/Class;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/bp;, "Lrx/internal/operators/bp<TT;TR;>;"
    .local p1, "o":Lrx/l;, "Lrx/l<-TR;>;"
    new-instance v0, Lrx/internal/operators/bp$a;

    iget-object v1, p0, Lrx/internal/operators/bp;->a:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/bp$a;-><init>(Lrx/l;Ljava/lang/Class;)V

    .line 39
    .local v0, "parent":Lrx/internal/operators/bp$a;, "Lrx/internal/operators/bp$a<TT;TR;>;"
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 40
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/bp;, "Lrx/internal/operators/bp<TT;TR;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/bp;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

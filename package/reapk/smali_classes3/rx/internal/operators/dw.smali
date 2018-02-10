.class public final Lrx/internal/operators/dw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/dw$a;,
        Lrx/internal/operators/dw$b;
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
        "Lrx/e$b",
        "<",
        "Lrx/e",
        "<TT;>;TT;>;"
    }
.end annotation


# static fields
.field static final b:Ljava/lang/Object;


# instance fields
.field final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/dw;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/dw;, "Lrx/internal/operators/dw<TT;TU;>;"
    .local p1, "other":Lrx/e;, "Lrx/e<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lrx/internal/operators/dw;->a:Lrx/e;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Lrx/e",
            "<TT;>;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/dw;, "Lrx/internal/operators/dw<TT;TU;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-Lrx/e<TT;>;>;"
    new-instance v1, Lrx/internal/operators/dw$b;

    invoke-direct {v1, p1}, Lrx/internal/operators/dw$b;-><init>(Lrx/l;)V

    .line 47
    .local v1, "sub":Lrx/internal/operators/dw$b;, "Lrx/internal/operators/dw$b<TT;>;"
    new-instance v0, Lrx/internal/operators/dw$a;

    invoke-direct {v0, v1}, Lrx/internal/operators/dw$a;-><init>(Lrx/internal/operators/dw$b;)V

    .line 49
    .local v0, "bs":Lrx/internal/operators/dw$a;, "Lrx/internal/operators/dw$a<TT;TU;>;"
    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 50
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 52
    invoke-virtual {v1}, Lrx/internal/operators/dw$b;->c()V

    .line 54
    iget-object v2, p0, Lrx/internal/operators/dw;->a:Lrx/e;

    invoke-virtual {v2, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 56
    return-object v1
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/dw;, "Lrx/internal/operators/dw<TT;TU;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/dw;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

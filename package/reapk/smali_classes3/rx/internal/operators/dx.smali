.class public final Lrx/internal/operators/dx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/dx$a;,
        Lrx/internal/operators/dx$b;
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
.field final a:Lrx/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/o",
            "<+",
            "Lrx/e",
            "<+TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/dx;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/c/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/o",
            "<+",
            "Lrx/e",
            "<+TU;>;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/dx;, "Lrx/internal/operators/dx<TT;TU;>;"
    .local p1, "otherFactory":Lrx/c/o;, "Lrx/c/o<+Lrx/e<+TU;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lrx/internal/operators/dx;->a:Lrx/c/o;

    .line 44
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 2
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
    .line 49
    .local p0, "this":Lrx/internal/operators/dx;, "Lrx/internal/operators/dx<TT;TU;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-Lrx/e<TT;>;>;"
    new-instance v0, Lrx/internal/operators/dx$b;

    iget-object v1, p0, Lrx/internal/operators/dx;->a:Lrx/c/o;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/dx$b;-><init>(Lrx/l;Lrx/c/o;)V

    .line 51
    .local v0, "sub":Lrx/internal/operators/dx$b;, "Lrx/internal/operators/dx$b<TT;TU;>;"
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 53
    invoke-virtual {v0}, Lrx/internal/operators/dx$b;->c()V

    .line 55
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/dx;, "Lrx/internal/operators/dx<TT;TU;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/dx;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

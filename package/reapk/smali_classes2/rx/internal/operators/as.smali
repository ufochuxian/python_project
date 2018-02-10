.class public final Lrx/internal/operators/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/as$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/i$a",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static volatile c:Z


# instance fields
.field final a:Lrx/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lrx/i$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/as;, "Lrx/internal/operators/as<TT;>;"
    .local p1, "source":Lrx/i$a;, "Lrx/i$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lrx/internal/operators/as;->a:Lrx/i$a;

    .line 42
    invoke-static {}, Lrx/internal/operators/aq;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/as;->b:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/as;, "Lrx/internal/operators/as<TT;>;"
    .local p1, "t":Lrx/k;, "Lrx/k<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/as;->a:Lrx/i$a;

    new-instance v1, Lrx/internal/operators/as$a;

    iget-object v2, p0, Lrx/internal/operators/as;->b:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lrx/internal/operators/as$a;-><init>(Lrx/k;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lrx/i$a;->call(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/as;, "Lrx/internal/operators/as<TT;>;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/as;->a(Lrx/k;)V

    return-void
.end method

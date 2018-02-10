.class public Lrx/internal/operators/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/af$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/f",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/e;Lrx/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;",
            "Lrx/f",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/af;, "Lrx/internal/operators/af<TT;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<TT;>;"
    .local p2, "doOnEachObserver":Lrx/f;, "Lrx/f<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/internal/operators/af;->b:Lrx/e;

    .line 36
    iput-object p2, p0, Lrx/internal/operators/af;->a:Lrx/f;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/af;, "Lrx/internal/operators/af<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/af;->b:Lrx/e;

    new-instance v1, Lrx/internal/operators/af$a;

    iget-object v2, p0, Lrx/internal/operators/af;->a:Lrx/f;

    invoke-direct {v1, p1, v2}, Lrx/internal/operators/af$a;-><init>(Lrx/l;Lrx/f;)V

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 42
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/af;, "Lrx/internal/operators/af<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/af;->a(Lrx/l;)V

    return-void
.end method

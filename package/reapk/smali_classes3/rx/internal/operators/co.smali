.class public final Lrx/internal/operators/co;
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
.field final a:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/e",
            "<+TT;>;>;"
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
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/e",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/co;, "Lrx/internal/operators/co<TT;>;"
    .local p1, "f":Lrx/c/p;, "Lrx/c/p<-Ljava/lang/Throwable;+Lrx/e<+TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lrx/internal/operators/co;->a:Lrx/c/p;

    .line 81
    return-void
.end method

.method public static a(Lrx/c/p;)Lrx/internal/operators/co;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lrx/internal/operators/co",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "resumeFunction":Lrx/c/p;, "Lrx/c/p<-Ljava/lang/Throwable;+TT;>;"
    new-instance v0, Lrx/internal/operators/co;

    new-instance v1, Lrx/internal/operators/co$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/co$1;-><init>(Lrx/c/p;)V

    invoke-direct {v0, v1}, Lrx/internal/operators/co;-><init>(Lrx/c/p;)V

    return-object v0
.end method

.method public static a(Lrx/e;)Lrx/internal/operators/co;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/internal/operators/co",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "other":Lrx/e;, "Lrx/e<+TT;>;"
    new-instance v0, Lrx/internal/operators/co;

    new-instance v1, Lrx/internal/operators/co$2;

    invoke-direct {v1, p0}, Lrx/internal/operators/co$2;-><init>(Lrx/e;)V

    invoke-direct {v0, v1}, Lrx/internal/operators/co;-><init>(Lrx/c/p;)V

    return-object v0
.end method

.method public static b(Lrx/e;)Lrx/internal/operators/co;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/internal/operators/co",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "other":Lrx/e;, "Lrx/e<+TT;>;"
    new-instance v0, Lrx/internal/operators/co;

    new-instance v1, Lrx/internal/operators/co$3;

    invoke-direct {v1, p0}, Lrx/internal/operators/co$3;-><init>(Lrx/e;)V

    invoke-direct {v0, v1}, Lrx/internal/operators/co;-><init>(Lrx/c/p;)V

    return-object v0
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 3
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
    .line 85
    .local p0, "this":Lrx/internal/operators/co;, "Lrx/internal/operators/co<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/internal/producers/a;

    invoke-direct {v0}, Lrx/internal/producers/a;-><init>()V

    .line 87
    .local v0, "pa":Lrx/internal/producers/a;
    new-instance v2, Lrx/i/e;

    invoke-direct {v2}, Lrx/i/e;-><init>()V

    .line 89
    .local v2, "serial":Lrx/i/e;
    new-instance v1, Lrx/internal/operators/co$4;

    invoke-direct {v1, p0, p1, v0, v2}, Lrx/internal/operators/co$4;-><init>(Lrx/internal/operators/co;Lrx/l;Lrx/internal/producers/a;Lrx/i/e;)V

    .line 163
    .local v1, "parent":Lrx/l;, "Lrx/l<TT;>;"
    invoke-virtual {v2, v1}, Lrx/i/e;->a(Lrx/m;)V

    .line 165
    invoke-virtual {p1, v2}, Lrx/l;->add(Lrx/m;)V

    .line 166
    invoke-virtual {p1, v0}, Lrx/l;->setProducer(Lrx/g;)V

    .line 168
    return-object v1
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/co;, "Lrx/internal/operators/co<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/co;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

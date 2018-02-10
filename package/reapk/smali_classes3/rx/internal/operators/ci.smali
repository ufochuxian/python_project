.class public final Lrx/internal/operators/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/ci$c;,
        Lrx/internal/operators/ci$e;,
        Lrx/internal/operators/ci$d;,
        Lrx/internal/operators/ci$a;,
        Lrx/internal/operators/ci$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<TT;",
        "Lrx/e",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Z

.field final b:I


# direct methods
.method constructor <init>(ZI)V
    .locals 0
    .param p1, "delayErrors"    # Z
    .param p2, "maxConcurrent"    # I

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/operators/ci;, "Lrx/internal/operators/ci<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean p1, p0, Lrx/internal/operators/ci;->a:Z

    .line 101
    iput p2, p0, Lrx/internal/operators/ci;->b:I

    .line 102
    return-void
.end method

.method public static a(Z)Lrx/internal/operators/ci;
    .locals 1
    .param p0, "delayErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lrx/internal/operators/ci",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    if-eqz p0, :cond_0

    .line 77
    sget-object v0, Lrx/internal/operators/ci$a;->a:Lrx/internal/operators/ci;

    .line 79
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lrx/internal/operators/ci$b;->a:Lrx/internal/operators/ci;

    goto :goto_0
.end method

.method public static a(ZI)Lrx/internal/operators/ci;
    .locals 3
    .param p0, "delayErrors"    # Z
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZI)",
            "Lrx/internal/operators/ci",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 90
    if-gtz p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxConcurrent > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1

    .line 94
    invoke-static {p0}, Lrx/internal/operators/ci;->a(Z)Lrx/internal/operators/ci;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lrx/internal/operators/ci;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/ci;-><init>(ZI)V

    goto :goto_0
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
            "<",
            "Lrx/e",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/operators/ci;, "Lrx/internal/operators/ci<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v1, Lrx/internal/operators/ci$e;

    iget-boolean v2, p0, Lrx/internal/operators/ci;->a:Z

    iget v3, p0, Lrx/internal/operators/ci;->b:I

    invoke-direct {v1, p1, v2, v3}, Lrx/internal/operators/ci$e;-><init>(Lrx/l;ZI)V

    .line 107
    .local v1, "subscriber":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    new-instance v0, Lrx/internal/operators/ci$d;

    invoke-direct {v0, v1}, Lrx/internal/operators/ci$d;-><init>(Lrx/internal/operators/ci$e;)V

    .line 108
    .local v0, "producer":Lrx/internal/operators/ci$d;, "Lrx/internal/operators/ci$d<TT;>;"
    iput-object v0, v1, Lrx/internal/operators/ci$e;->d:Lrx/internal/operators/ci$d;

    .line 110
    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 111
    invoke-virtual {p1, v0}, Lrx/l;->setProducer(Lrx/g;)V

    .line 113
    return-object v1
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/ci;, "Lrx/internal/operators/ci<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ci;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

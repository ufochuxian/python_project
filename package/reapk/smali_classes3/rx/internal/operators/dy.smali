.class public final Lrx/internal/operators/dy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/dy$b;,
        Lrx/internal/operators/dy$c;,
        Lrx/internal/operators/dy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<",
        "Lrx/e",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "skip"    # I

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/dy;, "Lrx/internal/operators/dy<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lrx/internal/operators/dy;->a:I

    .line 47
    iput p2, p0, Lrx/internal/operators/dy;->b:I

    .line 48
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 5
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
    .line 52
    .local p0, "this":Lrx/internal/operators/dy;, "Lrx/internal/operators/dy<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-Lrx/e<TT;>;>;"
    iget v3, p0, Lrx/internal/operators/dy;->b:I

    iget v4, p0, Lrx/internal/operators/dy;->a:I

    if-ne v3, v4, :cond_0

    .line 53
    new-instance v0, Lrx/internal/operators/dy$a;

    iget v3, p0, Lrx/internal/operators/dy;->a:I

    invoke-direct {v0, p1, v3}, Lrx/internal/operators/dy$a;-><init>(Lrx/l;I)V

    .line 55
    .local v0, "parent":Lrx/internal/operators/dy$a;, "Lrx/internal/operators/dy$a<TT;>;"
    iget-object v3, v0, Lrx/internal/operators/dy$a;->d:Lrx/m;

    invoke-virtual {p1, v3}, Lrx/l;->add(Lrx/m;)V

    .line 56
    invoke-virtual {v0}, Lrx/internal/operators/dy$a;->a()Lrx/g;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/l;->setProducer(Lrx/g;)V

    .line 74
    .end local v0    # "parent":Lrx/internal/operators/dy$a;, "Lrx/internal/operators/dy$a<TT;>;"
    :goto_0
    return-object v0

    .line 60
    :cond_0
    iget v3, p0, Lrx/internal/operators/dy;->b:I

    iget v4, p0, Lrx/internal/operators/dy;->a:I

    if-le v3, v4, :cond_1

    .line 61
    new-instance v2, Lrx/internal/operators/dy$c;

    iget v3, p0, Lrx/internal/operators/dy;->a:I

    iget v4, p0, Lrx/internal/operators/dy;->b:I

    invoke-direct {v2, p1, v3, v4}, Lrx/internal/operators/dy$c;-><init>(Lrx/l;II)V

    .line 63
    .local v2, "parent":Lrx/internal/operators/dy$c;, "Lrx/internal/operators/dy$c<TT;>;"
    iget-object v3, v2, Lrx/internal/operators/dy$c;->e:Lrx/m;

    invoke-virtual {p1, v3}, Lrx/l;->add(Lrx/m;)V

    .line 64
    invoke-virtual {v2}, Lrx/internal/operators/dy$c;->a()Lrx/g;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/l;->setProducer(Lrx/g;)V

    move-object v0, v2

    .line 66
    goto :goto_0

    .line 69
    .end local v2    # "parent":Lrx/internal/operators/dy$c;, "Lrx/internal/operators/dy$c<TT;>;"
    :cond_1
    new-instance v1, Lrx/internal/operators/dy$b;

    iget v3, p0, Lrx/internal/operators/dy;->a:I

    iget v4, p0, Lrx/internal/operators/dy;->b:I

    invoke-direct {v1, p1, v3, v4}, Lrx/internal/operators/dy$b;-><init>(Lrx/l;II)V

    .line 71
    .local v1, "parent":Lrx/internal/operators/dy$b;, "Lrx/internal/operators/dy$b<TT;>;"
    iget-object v3, v1, Lrx/internal/operators/dy$b;->e:Lrx/m;

    invoke-virtual {p1, v3}, Lrx/l;->add(Lrx/m;)V

    .line 72
    invoke-virtual {v1}, Lrx/internal/operators/dy$b;->a()Lrx/g;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/l;->setProducer(Lrx/g;)V

    move-object v0, v1

    .line 74
    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/dy;, "Lrx/internal/operators/dy<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/dy;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

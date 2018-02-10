.class final Lrx/internal/operators/am$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/am$b$a;
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
.field final a:Lrx/i/d;

.field final b:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/e;Lrx/i/d;)V
    .locals 0
    .param p2, "refCount"    # Lrx/i/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;",
            "Lrx/i/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lrx/internal/operators/am$b;, "Lrx/internal/operators/am$b<TT;>;"
    .local p1, "underlying":Lrx/e;, "Lrx/e<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p2, p0, Lrx/internal/operators/am$b;->a:Lrx/i/d;

    .line 347
    iput-object p1, p0, Lrx/internal/operators/am$b;->b:Lrx/e;

    .line 348
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
    .line 352
    .local p0, "this":Lrx/internal/operators/am$b;, "Lrx/internal/operators/am$b<TT;>;"
    .local p1, "t1":Lrx/l;, "Lrx/l<-TT;>;"
    iget-object v2, p0, Lrx/internal/operators/am$b;->a:Lrx/i/d;

    invoke-virtual {v2}, Lrx/i/d;->a()Lrx/m;

    move-result-object v0

    .line 353
    .local v0, "ref":Lrx/m;
    new-instance v1, Lrx/internal/operators/am$b$a;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/operators/am$b$a;-><init>(Lrx/internal/operators/am$b;Lrx/l;Lrx/m;)V

    .line 354
    .local v1, "wo":Lrx/internal/operators/am$b$a;, "Lrx/internal/operators/am$b<TT;>.a;"
    invoke-virtual {v1, v0}, Lrx/internal/operators/am$b$a;->add(Lrx/m;)V

    .line 356
    iget-object v2, p0, Lrx/internal/operators/am$b;->b:Lrx/e;

    invoke-virtual {v2, v1}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 357
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 341
    .local p0, "this":Lrx/internal/operators/am$b;, "Lrx/internal/operators/am$b<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/am$b;->a(Lrx/l;)V

    return-void
.end method

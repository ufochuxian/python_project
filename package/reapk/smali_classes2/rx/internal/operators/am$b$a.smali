.class final Lrx/internal/operators/am$b$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/am$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lrx/internal/operators/am$b;

.field private final c:Lrx/m;


# direct methods
.method public constructor <init>(Lrx/internal/operators/am$b;Lrx/l;Lrx/m;)V
    .locals 0
    .param p3, "ref"    # Lrx/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;",
            "Lrx/m;",
            ")V"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lrx/internal/operators/am$b$a;, "Lrx/internal/operators/am$b<TT;>.a;"
    .local p2, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    iput-object p1, p0, Lrx/internal/operators/am$b$a;->b:Lrx/internal/operators/am$b;

    .line 365
    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    .line 366
    iput-object p2, p0, Lrx/internal/operators/am$b$a;->a:Lrx/l;

    .line 367
    iput-object p3, p0, Lrx/internal/operators/am$b$a;->c:Lrx/m;

    .line 368
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 383
    .local p0, "this":Lrx/internal/operators/am$b$a;, "Lrx/internal/operators/am$b<TT;>.a;"
    iget-object v0, p0, Lrx/internal/operators/am$b$a;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 384
    iget-object v0, p0, Lrx/internal/operators/am$b$a;->c:Lrx/m;

    invoke-interface {v0}, Lrx/m;->unsubscribe()V

    .line 385
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 377
    .local p0, "this":Lrx/internal/operators/am$b$a;, "Lrx/internal/operators/am$b<TT;>.a;"
    iget-object v0, p0, Lrx/internal/operators/am$b$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 378
    iget-object v0, p0, Lrx/internal/operators/am$b$a;->c:Lrx/m;

    invoke-interface {v0}, Lrx/m;->unsubscribe()V

    .line 379
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lrx/internal/operators/am$b$a;, "Lrx/internal/operators/am$b<TT;>.a;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/am$b$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 373
    return-void
.end method

.class final Lrx/internal/operators/an$a$b$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/an$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TTRightDuration;>;"
    }
.end annotation


# instance fields
.field final a:I

.field b:Z

.field final synthetic c:Lrx/internal/operators/an$a$b;


# direct methods
.method public constructor <init>(Lrx/internal/operators/an$a$b;I)V
    .locals 1
    .param p2, "id"    # I

    .prologue
    .line 302
    .local p0, "this":Lrx/internal/operators/an$a$b$a;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a.b.a;"
    iput-object p1, p0, Lrx/internal/operators/an$a$b$a;->c:Lrx/internal/operators/an$a$b;

    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/an$a$b$a;->b:Z

    .line 303
    iput p2, p0, Lrx/internal/operators/an$a$b$a;->a:I

    .line 304
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 318
    .local p0, "this":Lrx/internal/operators/an$a$b$a;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a.b.a;"
    iget-boolean v0, p0, Lrx/internal/operators/an$a$b$a;->b:Z

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/an$a$b$a;->b:Z

    .line 320
    iget-object v0, p0, Lrx/internal/operators/an$a$b$a;->c:Lrx/internal/operators/an$a$b;

    iget v1, p0, Lrx/internal/operators/an$a$b$a;->a:I

    invoke-virtual {v0, v1, p0}, Lrx/internal/operators/an$a$b;->a(ILrx/m;)V

    .line 322
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 313
    .local p0, "this":Lrx/internal/operators/an$a$b$a;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a.b.a;"
    iget-object v0, p0, Lrx/internal/operators/an$a$b$a;->c:Lrx/internal/operators/an$a$b;

    invoke-virtual {v0, p1}, Lrx/internal/operators/an$a$b;->onError(Ljava/lang/Throwable;)V

    .line 314
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRightDuration;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lrx/internal/operators/an$a$b$a;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a.b.a;"
    .local p1, "args":Ljava/lang/Object;, "TTRightDuration;"
    invoke-virtual {p0}, Lrx/internal/operators/an$a$b$a;->onCompleted()V

    .line 309
    return-void
.end method

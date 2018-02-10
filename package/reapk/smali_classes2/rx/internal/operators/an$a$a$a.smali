.class final Lrx/internal/operators/an$a$a$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/an$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TT",
        "LeftDuration;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field b:Z

.field final synthetic c:Lrx/internal/operators/an$a$a;


# direct methods
.method public constructor <init>(Lrx/internal/operators/an$a$a;I)V
    .locals 1
    .param p2, "id"    # I

    .prologue
    .line 190
    .local p0, "this":Lrx/internal/operators/an$a$a$a;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a.a.a;"
    iput-object p1, p0, Lrx/internal/operators/an$a$a$a;->c:Lrx/internal/operators/an$a$a;

    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/an$a$a$a;->b:Z

    .line 191
    iput p2, p0, Lrx/internal/operators/an$a$a$a;->a:I

    .line 192
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 206
    .local p0, "this":Lrx/internal/operators/an$a$a$a;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a.a.a;"
    iget-boolean v0, p0, Lrx/internal/operators/an$a$a$a;->b:Z

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/an$a$a$a;->b:Z

    .line 208
    iget-object v0, p0, Lrx/internal/operators/an$a$a$a;->c:Lrx/internal/operators/an$a$a;

    iget v1, p0, Lrx/internal/operators/an$a$a$a;->a:I

    invoke-virtual {v0, v1, p0}, Lrx/internal/operators/an$a$a;->a(ILrx/m;)V

    .line 210
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 201
    .local p0, "this":Lrx/internal/operators/an$a$a$a;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a.a.a;"
    iget-object v0, p0, Lrx/internal/operators/an$a$a$a;->c:Lrx/internal/operators/an$a$a;

    invoke-virtual {v0, p1}, Lrx/internal/operators/an$a$a;->onError(Ljava/lang/Throwable;)V

    .line 202
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "LeftDuration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lrx/internal/operators/an$a$a$a;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a.a.a;"
    .local p1, "args":Ljava/lang/Object;, "TTLeftDuration;"
    invoke-virtual {p0}, Lrx/internal/operators/an$a$a$a;->onCompleted()V

    .line 197
    return-void
.end method

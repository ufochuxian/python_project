.class final Lrx/internal/operators/ec$b;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lrx/internal/operators/ec$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/ec$a",
            "<**>;"
        }
    .end annotation
.end field

.field final b:I


# direct methods
.method public constructor <init>(Lrx/internal/operators/ec$a;I)V
    .locals 0
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/ec$a",
            "<**>;I)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "parent":Lrx/internal/operators/ec$a;, "Lrx/internal/operators/ec$a<**>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 195
    iput-object p1, p0, Lrx/internal/operators/ec$b;->a:Lrx/internal/operators/ec$a;

    .line 196
    iput p2, p0, Lrx/internal/operators/ec$b;->b:I

    .line 197
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lrx/internal/operators/ec$b;->a:Lrx/internal/operators/ec$a;

    iget v1, p0, Lrx/internal/operators/ec$b;->b:I

    invoke-virtual {v0, v1}, Lrx/internal/operators/ec$a;->a(I)V

    .line 212
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 206
    iget-object v0, p0, Lrx/internal/operators/ec$b;->a:Lrx/internal/operators/ec$a;

    iget v1, p0, Lrx/internal/operators/ec$b;->b:I

    invoke-virtual {v0, v1, p1}, Lrx/internal/operators/ec$a;->a(ILjava/lang/Throwable;)V

    .line 207
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 201
    iget-object v0, p0, Lrx/internal/operators/ec$b;->a:Lrx/internal/operators/ec$a;

    iget v1, p0, Lrx/internal/operators/ec$b;->b:I

    invoke-virtual {v0, v1, p1}, Lrx/internal/operators/ec$a;->a(ILjava/lang/Object;)V

    .line 202
    return-void
.end method

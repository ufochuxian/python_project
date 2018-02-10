.class Lrx/internal/operators/h$a$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/h$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/h$a;


# direct methods
.method constructor <init>(Lrx/internal/operators/h$a;)V
    .locals 0

    .prologue
    .line 168
    .local p0, "this":Lrx/internal/operators/h$a$1;, "Lrx/internal/operators/h$a.1;"
    iput-object p1, p0, Lrx/internal/operators/h$a$1;->a:Lrx/internal/operators/h$a;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 179
    .local p0, "this":Lrx/internal/operators/h$a$1;, "Lrx/internal/operators/h$a.1;"
    iget-object v0, p0, Lrx/internal/operators/h$a$1;->a:Lrx/internal/operators/h$a;

    invoke-virtual {v0}, Lrx/internal/operators/h$a;->onCompleted()V

    .line 180
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 175
    .local p0, "this":Lrx/internal/operators/h$a$1;, "Lrx/internal/operators/h$a.1;"
    iget-object v0, p0, Lrx/internal/operators/h$a$1;->a:Lrx/internal/operators/h$a;

    invoke-virtual {v0, p1}, Lrx/internal/operators/h$a;->onError(Ljava/lang/Throwable;)V

    .line 176
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
    .line 171
    .local p0, "this":Lrx/internal/operators/h$a$1;, "Lrx/internal/operators/h$a.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/h$a$1;->a:Lrx/internal/operators/h$a;

    invoke-virtual {v0, p1}, Lrx/internal/operators/h$a;->onNext(Ljava/lang/Object;)V

    .line 172
    return-void
.end method

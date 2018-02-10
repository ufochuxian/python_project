.class final Lrx/e/h$4;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/e/h;->a(Lrx/c/c;Lrx/c/c;Lrx/c/b;)Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/b;

.field final synthetic b:Lrx/c/c;

.field final synthetic c:Lrx/c/c;


# direct methods
.method constructor <init>(Lrx/c/b;Lrx/c/c;Lrx/c/c;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lrx/e/h$4;->a:Lrx/c/b;

    iput-object p2, p0, Lrx/e/h$4;->b:Lrx/c/c;

    iput-object p3, p0, Lrx/e/h$4;->c:Lrx/c/c;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lrx/e/h$4;->a:Lrx/c/b;

    invoke-interface {v0}, Lrx/c/b;->call()V

    .line 188
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 192
    iget-object v0, p0, Lrx/e/h$4;->b:Lrx/c/c;

    invoke-interface {v0, p1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 193
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/e/h$4;->c:Lrx/c/c;

    invoke-interface {v0, p1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

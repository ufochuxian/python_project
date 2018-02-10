.class Lrx/d/b$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/b;->a(Lrx/c/c;Lrx/c/c;Lrx/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/f",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/c;

.field final synthetic b:Lrx/c/c;

.field final synthetic c:Lrx/c/b;

.field final synthetic d:Lrx/d/b;


# direct methods
.method constructor <init>(Lrx/d/b;Lrx/c/c;Lrx/c/c;Lrx/c/b;)V
    .locals 0

    .prologue
    .line 666
    .local p0, "this":Lrx/d/b$9;, "Lrx/d/b.9;"
    iput-object p1, p0, Lrx/d/b$9;->d:Lrx/d/b;

    iput-object p2, p0, Lrx/d/b$9;->a:Lrx/c/c;

    iput-object p3, p0, Lrx/d/b$9;->b:Lrx/c/c;

    iput-object p4, p0, Lrx/d/b$9;->c:Lrx/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 679
    .local p0, "this":Lrx/d/b$9;, "Lrx/d/b.9;"
    iget-object v0, p0, Lrx/d/b$9;->c:Lrx/c/b;

    invoke-interface {v0}, Lrx/c/b;->call()V

    .line 680
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 674
    .local p0, "this":Lrx/d/b$9;, "Lrx/d/b.9;"
    iget-object v0, p0, Lrx/d/b$9;->b:Lrx/c/c;

    invoke-interface {v0, p1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 675
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
    .line 669
    .local p0, "this":Lrx/d/b$9;, "Lrx/d/b.9;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/d/b$9;->a:Lrx/c/c;

    invoke-interface {v0, p1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 670
    return-void
.end method

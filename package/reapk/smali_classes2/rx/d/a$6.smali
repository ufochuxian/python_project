.class Lrx/d/a$6;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a;->a(Lrx/l;)V
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
.field final synthetic a:Lrx/l;

.field final synthetic b:Lrx/d/a$b;

.field final synthetic c:Lrx/d/a;


# direct methods
.method constructor <init>(Lrx/d/a;Lrx/l;Lrx/d/a$b;)V
    .locals 0

    .prologue
    .line 326
    .local p0, "this":Lrx/d/a$6;, "Lrx/d/a.6;"
    iput-object p1, p0, Lrx/d/a$6;->c:Lrx/d/a;

    iput-object p2, p0, Lrx/d/a$6;->a:Lrx/l;

    iput-object p3, p0, Lrx/d/a$6;->b:Lrx/d/a$b;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 339
    .local p0, "this":Lrx/d/a$6;, "Lrx/d/a.6;"
    iget-object v0, p0, Lrx/d/a$6;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 340
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 334
    .local p0, "this":Lrx/d/a$6;, "Lrx/d/a.6;"
    iget-object v0, p0, Lrx/d/a$6;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 335
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
    .line 329
    .local p0, "this":Lrx/d/a$6;, "Lrx/d/a.6;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/d/a$6;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 330
    return-void
.end method

.method public setProducer(Lrx/g;)V
    .locals 1
    .param p1, "p"    # Lrx/g;

    .prologue
    .line 344
    .local p0, "this":Lrx/d/a$6;, "Lrx/d/a.6;"
    iget-object v0, p0, Lrx/d/a$6;->b:Lrx/d/a$b;

    invoke-virtual {v0, p1}, Lrx/d/a$b;->a(Lrx/g;)V

    .line 345
    return-void
.end method

.class final Lcom/jakewharton/rxbinding/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lcom/jakewharton/rxbinding/b/c;, "Lcom/jakewharton/rxbinding/b/c<TT;>;"
    .local p1, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/c;->a:Landroid/widget/Adapter;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/jakewharton/rxbinding/b/c;, "Lcom/jakewharton/rxbinding/b/c<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 22
    new-instance v0, Lcom/jakewharton/rxbinding/b/c$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/c$1;-><init>(Lcom/jakewharton/rxbinding/b/c;Lrx/l;)V

    .line 29
    .local v0, "observer":Landroid/database/DataSetObserver;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/c;->a:Landroid/widget/Adapter;

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 31
    new-instance v1, Lcom/jakewharton/rxbinding/b/c$2;

    invoke-direct {v1, p0, v0}, Lcom/jakewharton/rxbinding/b/c$2;-><init>(Lcom/jakewharton/rxbinding/b/c;Landroid/database/DataSetObserver;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 38
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/c;->a:Landroid/widget/Adapter;

    invoke-virtual {p1, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Lcom/jakewharton/rxbinding/b/c;, "Lcom/jakewharton/rxbinding/b/c<TT;>;"
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/c;->a(Lrx/l;)V

    return-void
.end method

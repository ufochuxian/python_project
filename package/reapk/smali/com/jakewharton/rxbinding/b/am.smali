.class final Lcom/jakewharton/rxbinding/b/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/SearchView;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/am;->a:Landroid/widget/SearchView;

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Ljava/lang/CharSequence;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 20
    new-instance v0, Lcom/jakewharton/rxbinding/b/am$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/am$1;-><init>(Lcom/jakewharton/rxbinding/b/am;Lrx/l;)V

    .line 34
    .local v0, "watcher":Landroid/widget/SearchView$OnQueryTextListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/am;->a:Landroid/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 36
    new-instance v1, Lcom/jakewharton/rxbinding/b/am$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/b/am$2;-><init>(Lcom/jakewharton/rxbinding/b/am;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 43
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/am;->a:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/am;->a(Lrx/l;)V

    return-void
.end method

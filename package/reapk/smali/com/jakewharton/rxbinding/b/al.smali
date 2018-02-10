.class final Lcom/jakewharton/rxbinding/b/al;
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
        "Lcom/jakewharton/rxbinding/b/an;",
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
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/al;->a:Landroid/widget/SearchView;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Lcom/jakewharton/rxbinding/b/an;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Lcom/jakewharton/rxbinding/b/an;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 21
    new-instance v0, Lcom/jakewharton/rxbinding/b/al$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/al$1;-><init>(Lcom/jakewharton/rxbinding/b/al;Lrx/l;)V

    .line 39
    .local v0, "watcher":Landroid/widget/SearchView$OnQueryTextListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/al;->a:Landroid/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 41
    new-instance v1, Lcom/jakewharton/rxbinding/b/al$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/b/al$2;-><init>(Lcom/jakewharton/rxbinding/b/al;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 48
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/al;->a:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/jakewharton/rxbinding/b/al;->a:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/jakewharton/rxbinding/b/an;->a(Landroid/widget/SearchView;Ljava/lang/CharSequence;Z)Lcom/jakewharton/rxbinding/b/an;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/al;->a(Lrx/l;)V

    return-void
.end method

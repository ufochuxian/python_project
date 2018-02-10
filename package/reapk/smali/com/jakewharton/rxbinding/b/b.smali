.class final Lcom/jakewharton/rxbinding/b/b;
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
        "Lcom/jakewharton/rxbinding/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/b;->a:Landroid/widget/AbsListView;

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
            "<-",
            "Lcom/jakewharton/rxbinding/b/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Lcom/jakewharton/rxbinding/b/a;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 22
    new-instance v0, Lcom/jakewharton/rxbinding/b/b$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/b$1;-><init>(Lcom/jakewharton/rxbinding/b/b;Lrx/l;)V

    .line 48
    .local v0, "listener":Landroid/widget/AbsListView$OnScrollListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/b;->a:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 50
    new-instance v1, Lcom/jakewharton/rxbinding/b/b$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/b/b$2;-><init>(Lcom/jakewharton/rxbinding/b/b;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 55
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/b;->a(Lrx/l;)V

    return-void
.end method

.class final Lcom/jakewharton/rxbinding/view/x;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/x;->a:Landroid/view/View;

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 20
    new-instance v0, Lcom/jakewharton/rxbinding/view/x$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/x$1;-><init>(Lcom/jakewharton/rxbinding/view/x;Lrx/l;)V

    .line 28
    .local v0, "listener":Landroid/view/View$OnSystemUiVisibilityChangeListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/x;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 30
    new-instance v1, Lcom/jakewharton/rxbinding/view/x$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/view/x$2;-><init>(Lcom/jakewharton/rxbinding/view/x;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 35
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/x;->a(Lrx/l;)V

    return-void
.end method

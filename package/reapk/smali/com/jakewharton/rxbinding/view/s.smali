.class final Lcom/jakewharton/rxbinding/view/s;
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
        "Lcom/jakewharton/rxbinding/view/r;",
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
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/s;->a:Landroid/view/View;

    .line 16
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
            "Lcom/jakewharton/rxbinding/view/r;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Lcom/jakewharton/rxbinding/view/r;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 21
    new-instance v0, Lcom/jakewharton/rxbinding/view/s$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/s$1;-><init>(Lcom/jakewharton/rxbinding/view/s;Lrx/l;)V

    .line 30
    .local v0, "listener":Landroid/view/View$OnLayoutChangeListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/s;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 32
    new-instance v1, Lcom/jakewharton/rxbinding/view/s$2;

    invoke-direct {v1, p0, v0}, Lcom/jakewharton/rxbinding/view/s$2;-><init>(Lcom/jakewharton/rxbinding/view/s;Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 37
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/s;->a(Lrx/l;)V

    return-void
.end method

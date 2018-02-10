.class final Lcom/jakewharton/rxbinding/view/aa;
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
        "Ljava/lang/Void;",
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
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/aa;->a:Landroid/view/View;

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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Ljava/lang/Void;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 22
    new-instance v0, Lcom/jakewharton/rxbinding/view/aa$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/aa$1;-><init>(Lcom/jakewharton/rxbinding/view/aa;Lrx/l;)V

    .line 30
    .local v0, "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/aa;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 32
    new-instance v1, Lcom/jakewharton/rxbinding/view/aa$2;

    invoke-direct {v1, p0, v0}, Lcom/jakewharton/rxbinding/view/aa$2;-><init>(Lcom/jakewharton/rxbinding/view/aa;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 41
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/aa;->a(Lrx/l;)V

    return-void
.end method

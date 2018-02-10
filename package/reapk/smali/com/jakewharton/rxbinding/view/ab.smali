.class final Lcom/jakewharton/rxbinding/view/ab;
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

.field final b:Lrx/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/o",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;Lrx/c/o;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lrx/c/o",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "proceedDrawingPass":Lrx/c/o;, "Lrx/c/o<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ab;->a:Landroid/view/View;

    .line 18
    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/ab;->b:Lrx/c/o;

    .line 19
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
    .line 22
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Ljava/lang/Void;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 24
    new-instance v0, Lcom/jakewharton/rxbinding/view/ab$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/ab$1;-><init>(Lcom/jakewharton/rxbinding/view/ab;Lrx/l;)V

    .line 34
    .local v0, "listener":Landroid/view/ViewTreeObserver$OnPreDrawListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ab;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 36
    new-instance v1, Lcom/jakewharton/rxbinding/view/ab$2;

    invoke-direct {v1, p0, v0}, Lcom/jakewharton/rxbinding/view/ab$2;-><init>(Lcom/jakewharton/rxbinding/view/ab;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 41
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/ab;->a(Lrx/l;)V

    return-void
.end method

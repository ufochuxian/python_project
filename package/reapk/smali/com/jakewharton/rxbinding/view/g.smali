.class final Lcom/jakewharton/rxbinding/view/g;
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
        "Lcom/jakewharton/rxbinding/view/ViewAttachEvent;",
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
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/g;->a:Landroid/view/View;

    .line 18
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
            "Lcom/jakewharton/rxbinding/view/ViewAttachEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Lcom/jakewharton/rxbinding/view/ViewAttachEvent;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 23
    new-instance v0, Lcom/jakewharton/rxbinding/view/g$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/g$1;-><init>(Lcom/jakewharton/rxbinding/view/g;Lrx/l;)V

    .line 36
    .local v0, "listener":Landroid/view/View$OnAttachStateChangeListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/g;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 38
    new-instance v1, Lcom/jakewharton/rxbinding/view/g$2;

    invoke-direct {v1, p0, v0}, Lcom/jakewharton/rxbinding/view/g$2;-><init>(Lcom/jakewharton/rxbinding/view/g;Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 43
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/g;->a(Lrx/l;)V

    return-void
.end method

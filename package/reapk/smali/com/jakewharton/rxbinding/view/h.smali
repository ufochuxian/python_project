.class final Lcom/jakewharton/rxbinding/view/h;
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
.field final a:Z

.field final b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callOnAttach"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/h;->b:Landroid/view/View;

    .line 17
    iput-boolean p2, p0, Lcom/jakewharton/rxbinding/view/h;->a:Z

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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Ljava/lang/Void;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 23
    new-instance v0, Lcom/jakewharton/rxbinding/view/h$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/h$1;-><init>(Lcom/jakewharton/rxbinding/view/h;Lrx/l;)V

    .line 36
    .local v0, "listener":Landroid/view/View$OnAttachStateChangeListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/h;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 38
    new-instance v1, Lcom/jakewharton/rxbinding/view/h$2;

    invoke-direct {v1, p0, v0}, Lcom/jakewharton/rxbinding/view/h$2;-><init>(Lcom/jakewharton/rxbinding/view/h;Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 43
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/h;->a(Lrx/l;)V

    return-void
.end method

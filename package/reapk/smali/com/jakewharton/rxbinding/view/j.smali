.class final Lcom/jakewharton/rxbinding/view/j;
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
        "Landroid/view/DragEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/view/View;

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-",
            "Landroid/view/DragEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;Lrx/c/p;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lrx/c/p",
            "<-",
            "Landroid/view/DragEvent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "handled":Lrx/c/p;, "Lrx/c/p<-Landroid/view/DragEvent;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/j;->a:Landroid/view/View;

    .line 18
    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/j;->b:Lrx/c/p;

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
            "Landroid/view/DragEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Landroid/view/DragEvent;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 24
    new-instance v0, Lcom/jakewharton/rxbinding/view/j$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/j$1;-><init>(Lcom/jakewharton/rxbinding/view/j;Lrx/l;)V

    .line 35
    .local v0, "listener":Landroid/view/View$OnDragListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/j;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 37
    new-instance v1, Lcom/jakewharton/rxbinding/view/j$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/view/j$2;-><init>(Lcom/jakewharton/rxbinding/view/j;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 42
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/j;->a(Lrx/l;)V

    return-void
.end method

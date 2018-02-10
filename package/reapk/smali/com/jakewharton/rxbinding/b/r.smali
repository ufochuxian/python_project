.class final Lcom/jakewharton/rxbinding/b/r;
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
        "Landroid/view/MenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/widget/PopupMenu;


# direct methods
.method public constructor <init>(Landroid/widget/PopupMenu;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/PopupMenu;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/r;->a:Landroid/widget/PopupMenu;

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
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Landroid/view/MenuItem;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 22
    new-instance v0, Lcom/jakewharton/rxbinding/b/r$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/r$1;-><init>(Lcom/jakewharton/rxbinding/b/r;Lrx/l;)V

    .line 31
    .local v0, "listener":Landroid/widget/PopupMenu$OnMenuItemClickListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/r;->a:Landroid/widget/PopupMenu;

    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 33
    new-instance v1, Lcom/jakewharton/rxbinding/b/r$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/b/r$2;-><init>(Lcom/jakewharton/rxbinding/b/r;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 38
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/r;->a(Lrx/l;)V

    return-void
.end method

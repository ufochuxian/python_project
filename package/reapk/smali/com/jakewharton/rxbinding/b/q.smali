.class final Lcom/jakewharton/rxbinding/b/q;
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
.field final a:Landroid/widget/PopupMenu;


# direct methods
.method public constructor <init>(Landroid/widget/PopupMenu;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/PopupMenu;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/q;->a:Landroid/widget/PopupMenu;

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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Ljava/lang/Void;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 21
    new-instance v0, Lcom/jakewharton/rxbinding/b/q$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/q$1;-><init>(Lcom/jakewharton/rxbinding/b/q;Lrx/l;)V

    .line 29
    .local v0, "listener":Landroid/widget/PopupMenu$OnDismissListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/q;->a:Landroid/widget/PopupMenu;

    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 31
    new-instance v1, Lcom/jakewharton/rxbinding/b/q$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/b/q$2;-><init>(Lcom/jakewharton/rxbinding/b/q;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 36
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/q;->a(Lrx/l;)V

    return-void
.end method

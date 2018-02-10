.class final Lcom/jakewharton/rxbinding/view/b;
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
.field final a:Landroid/view/MenuItem;

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-",
            "Landroid/view/MenuItem;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/MenuItem;Lrx/c/p;)V
    .locals 0
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            "Lrx/c/p",
            "<-",
            "Landroid/view/MenuItem;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p2, "handled":Lrx/c/p;, "Lrx/c/p<-Landroid/view/MenuItem;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/b;->a:Landroid/view/MenuItem;

    .line 17
    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/b;->b:Lrx/c/p;

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
    new-instance v0, Lcom/jakewharton/rxbinding/view/b$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/b$1;-><init>(Lcom/jakewharton/rxbinding/view/b;Lrx/l;)V

    .line 35
    .local v0, "listener":Landroid/view/MenuItem$OnMenuItemClickListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/b;->a:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 37
    new-instance v1, Lcom/jakewharton/rxbinding/view/b$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/view/b$2;-><init>(Lcom/jakewharton/rxbinding/view/b;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 42
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/b;->a(Lrx/l;)V

    return-void
.end method

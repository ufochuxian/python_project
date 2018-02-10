.class final Lcom/jakewharton/rxbinding/view/u;
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
    .line 15
    .local p2, "handled":Lrx/c/o;, "Lrx/c/o<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/u;->a:Landroid/view/View;

    .line 17
    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/u;->b:Lrx/c/o;

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
    new-instance v0, Lcom/jakewharton/rxbinding/view/u$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/u$1;-><init>(Lcom/jakewharton/rxbinding/view/u;Lrx/l;)V

    .line 34
    .local v0, "listener":Landroid/view/View$OnLongClickListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/u;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 36
    new-instance v1, Lcom/jakewharton/rxbinding/view/u$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/view/u$2;-><init>(Lcom/jakewharton/rxbinding/view/u;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 41
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/u;->a(Lrx/l;)V

    return-void
.end method

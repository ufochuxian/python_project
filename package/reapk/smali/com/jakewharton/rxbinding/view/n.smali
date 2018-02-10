.class final Lcom/jakewharton/rxbinding/view/n;
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
        "Lcom/jakewharton/rxbinding/view/m;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/n;->a:Landroid/view/ViewGroup;

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
            "Lcom/jakewharton/rxbinding/view/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Lcom/jakewharton/rxbinding/view/m;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 22
    new-instance v0, Lcom/jakewharton/rxbinding/view/n$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/n$1;-><init>(Lcom/jakewharton/rxbinding/view/n;Lrx/l;)V

    .line 38
    .local v0, "listener":Landroid/view/ViewGroup$OnHierarchyChangeListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/n;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 40
    new-instance v1, Lcom/jakewharton/rxbinding/view/n$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/view/n$2;-><init>(Lcom/jakewharton/rxbinding/view/n;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 45
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/n;->a(Lrx/l;)V

    return-void
.end method

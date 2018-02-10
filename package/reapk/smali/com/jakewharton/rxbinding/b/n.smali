.class final Lcom/jakewharton/rxbinding/b/n;
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
        "Lcom/jakewharton/rxbinding/b/m;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/n;->a:Landroid/widget/AdapterView;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Lcom/jakewharton/rxbinding/b/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Lcom/jakewharton/rxbinding/b/m;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 23
    new-instance v0, Lcom/jakewharton/rxbinding/b/n$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/n$1;-><init>(Lcom/jakewharton/rxbinding/b/n;Lrx/l;)V

    .line 37
    .local v0, "listener":Landroid/widget/AdapterView$OnItemSelectedListener;
    iget-object v5, p0, Lcom/jakewharton/rxbinding/b/n;->a:Landroid/widget/AdapterView;

    invoke-virtual {v5, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 39
    new-instance v5, Lcom/jakewharton/rxbinding/b/n$2;

    invoke-direct {v5, p0}, Lcom/jakewharton/rxbinding/b/n$2;-><init>(Lcom/jakewharton/rxbinding/b/n;)V

    invoke-virtual {p1, v5}, Lrx/l;->add(Lrx/m;)V

    .line 46
    iget-object v5, p0, Lcom/jakewharton/rxbinding/b/n;->a:Landroid/widget/AdapterView;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 47
    .local v1, "selectedPosition":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 48
    iget-object v5, p0, Lcom/jakewharton/rxbinding/b/n;->a:Landroid/widget/AdapterView;

    invoke-static {v5}, Lcom/jakewharton/rxbinding/b/l;->a(Landroid/widget/AdapterView;)Lcom/jakewharton/rxbinding/b/m;

    move-result-object v5

    invoke-virtual {p1, v5}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 55
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v5, p0, Lcom/jakewharton/rxbinding/b/n;->a:Landroid/widget/AdapterView;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 51
    .local v4, "selectedView":Landroid/view/View;
    iget-object v5, p0, Lcom/jakewharton/rxbinding/b/n;->a:Landroid/widget/AdapterView;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v2

    .line 52
    .local v2, "selectedId":J
    iget-object v5, p0, Lcom/jakewharton/rxbinding/b/n;->a:Landroid/widget/AdapterView;

    .line 53
    invoke-static {v5, v4, v1, v2, v3}, Lcom/jakewharton/rxbinding/b/j;->a(Landroid/widget/AdapterView;Landroid/view/View;IJ)Lcom/jakewharton/rxbinding/b/m;

    move-result-object v5

    .line 52
    invoke-virtual {p1, v5}, Lrx/l;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/n;->a(Lrx/l;)V

    return-void
.end method

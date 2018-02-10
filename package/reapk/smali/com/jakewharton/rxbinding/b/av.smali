.class final Lcom/jakewharton/rxbinding/b/av;
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
        "Lcom/jakewharton/rxbinding/b/au;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/av;->a:Landroid/widget/TextView;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Lcom/jakewharton/rxbinding/b/au;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Lcom/jakewharton/rxbinding/b/au;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 23
    new-instance v0, Lcom/jakewharton/rxbinding/b/av$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/av$1;-><init>(Lcom/jakewharton/rxbinding/b/av;Lrx/l;)V

    .line 36
    .local v0, "watcher":Landroid/text/TextWatcher;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/av;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 38
    new-instance v1, Lcom/jakewharton/rxbinding/b/av$2;

    invoke-direct {v1, p0, v0}, Lcom/jakewharton/rxbinding/b/av$2;-><init>(Lcom/jakewharton/rxbinding/b/av;Landroid/text/TextWatcher;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 45
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/av;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jakewharton/rxbinding/b/av;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jakewharton/rxbinding/b/au;->a(Landroid/widget/TextView;Landroid/text/Editable;)Lcom/jakewharton/rxbinding/b/au;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/av;->a(Lrx/l;)V

    return-void
.end method

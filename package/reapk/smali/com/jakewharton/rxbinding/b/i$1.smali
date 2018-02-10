.class Lcom/jakewharton/rxbinding/b/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/i;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lcom/jakewharton/rxbinding/b/i;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/b/i;Lrx/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/b/i;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/i$1;->b:Lcom/jakewharton/rxbinding/b/i;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/b/i$1;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/i$1;->b:Lcom/jakewharton/rxbinding/b/i;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/b/i;->b:Lrx/c/o;

    invoke-interface {v0}, Lrx/c/o;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/i$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/i$1;->a:Lrx/l;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 31
    :cond_0
    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

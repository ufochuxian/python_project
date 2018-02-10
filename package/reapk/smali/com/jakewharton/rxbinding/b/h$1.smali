.class Lcom/jakewharton/rxbinding/b/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/h;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lcom/jakewharton/rxbinding/b/h;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/b/h;Lrx/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/b/h;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/h$1;->b:Lcom/jakewharton/rxbinding/b/h;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/b/h$1;->a:Lrx/l;

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
    .line 29
    .line 30
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {p1, p2, p3, p4, p5}, Lcom/jakewharton/rxbinding/b/g;->a(Landroid/widget/AdapterView;Landroid/view/View;IJ)Lcom/jakewharton/rxbinding/b/g;

    move-result-object v0

    .line 31
    .local v0, "event":Lcom/jakewharton/rxbinding/b/g;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/h$1;->b:Lcom/jakewharton/rxbinding/b/h;

    iget-object v1, v1, Lcom/jakewharton/rxbinding/b/h;->b:Lrx/c/p;

    invoke-interface {v1, v0}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/h$1;->a:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/h$1;->a:Lrx/l;

    invoke-virtual {v1, v0}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 35
    :cond_0
    const/4 v1, 0x1

    .line 37
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

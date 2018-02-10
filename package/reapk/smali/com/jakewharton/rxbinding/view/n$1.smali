.class Lcom/jakewharton/rxbinding/view/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/n;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lcom/jakewharton/rxbinding/view/n;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/n;Lrx/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/n;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/n$1;->b:Lcom/jakewharton/rxbinding/view/n;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/n$1;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/n$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/n$1;->a:Lrx/l;

    check-cast p1, Landroid/view/ViewGroup;

    .line 26
    .end local p1    # "parent":Landroid/view/View;
    invoke-static {p1, p2}, Lcom/jakewharton/rxbinding/view/o;->a(Landroid/view/ViewGroup;Landroid/view/View;)Lcom/jakewharton/rxbinding/view/o;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 28
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/n$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/n$1;->a:Lrx/l;

    check-cast p1, Landroid/view/ViewGroup;

    .line 33
    .end local p1    # "parent":Landroid/view/View;
    invoke-static {p1, p2}, Lcom/jakewharton/rxbinding/view/p;->a(Landroid/view/ViewGroup;Landroid/view/View;)Lcom/jakewharton/rxbinding/view/p;

    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 35
    :cond_0
    return-void
.end method

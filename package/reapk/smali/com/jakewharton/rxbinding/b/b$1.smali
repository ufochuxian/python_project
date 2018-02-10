.class Lcom/jakewharton/rxbinding/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/b;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lrx/l;

.field final synthetic c:Lcom/jakewharton/rxbinding/b/b;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/b/b;Lrx/l;)V
    .locals 1
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/b/b;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/b$1;->c:Lcom/jakewharton/rxbinding/b/b;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/b/b$1;->b:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/jakewharton/rxbinding/b/b$1;->a:I

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 38
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/b$1;->b:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    iget v1, p0, Lcom/jakewharton/rxbinding/b/b$1;->a:I

    .line 40
    invoke-static {p1, v1, p2, p3, p4}, Lcom/jakewharton/rxbinding/b/a;->a(Landroid/widget/AbsListView;IIII)Lcom/jakewharton/rxbinding/b/a;

    move-result-object v0

    .line 42
    .local v0, "event":Lcom/jakewharton/rxbinding/b/a;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/b$1;->b:Lrx/l;

    invoke-virtual {v1, v0}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 44
    .end local v0    # "event":Lcom/jakewharton/rxbinding/b/a;
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 26
    iput p2, p0, Lcom/jakewharton/rxbinding/b/b$1;->a:I

    .line 28
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/b$1;->b:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 31
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    .line 30
    invoke-static {p1, p2, v1, v2, v3}, Lcom/jakewharton/rxbinding/b/a;->a(Landroid/widget/AbsListView;IIII)Lcom/jakewharton/rxbinding/b/a;

    move-result-object v0

    .line 32
    .local v0, "event":Lcom/jakewharton/rxbinding/b/a;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/b$1;->b:Lrx/l;

    invoke-virtual {v1, v0}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 34
    .end local v0    # "event":Lcom/jakewharton/rxbinding/b/a;
    :cond_0
    return-void
.end method

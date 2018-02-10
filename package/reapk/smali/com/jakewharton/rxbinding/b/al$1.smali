.class Lcom/jakewharton/rxbinding/b/al$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/al;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lcom/jakewharton/rxbinding/b/al;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/b/al;Lrx/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/b/al;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/al$1;->b:Lcom/jakewharton/rxbinding/b/al;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/b/al$1;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 23
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/al$1;->a:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/al$1;->a:Lrx/l;

    iget-object v2, p0, Lcom/jakewharton/rxbinding/b/al$1;->b:Lcom/jakewharton/rxbinding/b/al;

    iget-object v2, v2, Lcom/jakewharton/rxbinding/b/al;->a:Landroid/widget/SearchView;

    invoke-static {v2, p1, v0}, Lcom/jakewharton/rxbinding/b/an;->a(Landroid/widget/SearchView;Ljava/lang/CharSequence;Z)Lcom/jakewharton/rxbinding/b/an;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 25
    const/4 v0, 0x1

    .line 27
    :cond_0
    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 31
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/al$1;->a:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/al$1;->a:Lrx/l;

    iget-object v2, p0, Lcom/jakewharton/rxbinding/b/al$1;->b:Lcom/jakewharton/rxbinding/b/al;

    iget-object v2, v2, Lcom/jakewharton/rxbinding/b/al;->a:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/jakewharton/rxbinding/b/al$1;->b:Lcom/jakewharton/rxbinding/b/al;

    iget-object v3, v3, Lcom/jakewharton/rxbinding/b/al;->a:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/jakewharton/rxbinding/b/an;->a(Landroid/widget/SearchView;Ljava/lang/CharSequence;Z)Lcom/jakewharton/rxbinding/b/an;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

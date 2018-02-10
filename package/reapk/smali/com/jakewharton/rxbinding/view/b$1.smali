.class Lcom/jakewharton/rxbinding/view/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/b;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lcom/jakewharton/rxbinding/view/b;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/b;Lrx/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/b;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/b$1;->b:Lcom/jakewharton/rxbinding/view/b;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/b$1;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/b$1;->b:Lcom/jakewharton/rxbinding/view/b;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/b;->b:Lrx/c/p;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/b$1;->b:Lcom/jakewharton/rxbinding/view/b;

    iget-object v1, v1, Lcom/jakewharton/rxbinding/view/b;->a:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/b$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/b$1;->a:Lrx/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 29
    :cond_0
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

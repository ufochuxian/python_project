.class Lcom/jakewharton/rxbinding/view/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/a;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lcom/jakewharton/rxbinding/view/a;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/a;Lrx/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/a;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/a$1;->b:Lcom/jakewharton/rxbinding/view/a;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/a$1;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;)Z
    .locals 1
    .param p1, "event"    # Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/a$1;->b:Lcom/jakewharton/rxbinding/view/a;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/a;->b:Lrx/c/p;

    invoke-interface {v0, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/a$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/a$1;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 42
    :cond_0
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 33
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/a$1;->b:Lcom/jakewharton/rxbinding/view/a;

    iget-object v1, v1, Lcom/jakewharton/rxbinding/view/a;->a:Landroid/view/MenuItem;

    sget-object v2, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;->COLLAPSE:Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;

    invoke-static {v1, v2}, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;->a(Landroid/view/MenuItem;Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;)Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;

    move-result-object v0

    .line 34
    .local v0, "event":Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;
    invoke-direct {p0, v0}, Lcom/jakewharton/rxbinding/view/a$1;->a(Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;)Z

    move-result v1

    return v1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 28
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/a$1;->b:Lcom/jakewharton/rxbinding/view/a;

    iget-object v1, v1, Lcom/jakewharton/rxbinding/view/a;->a:Landroid/view/MenuItem;

    sget-object v2, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;->EXPAND:Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;

    invoke-static {v1, v2}, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;->a(Landroid/view/MenuItem;Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;)Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;

    move-result-object v0

    .line 29
    .local v0, "event":Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;
    invoke-direct {p0, v0}, Lcom/jakewharton/rxbinding/view/a$1;->a(Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;)Z

    move-result v1

    return v1
.end method

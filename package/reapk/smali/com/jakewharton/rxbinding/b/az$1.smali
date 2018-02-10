.class Lcom/jakewharton/rxbinding/b/az$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/az;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lcom/jakewharton/rxbinding/b/az;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/b/az;Lrx/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/b/az;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/az$1;->b:Lcom/jakewharton/rxbinding/b/az;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/b/az$1;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 28
    invoke-static {p1, p2, p3}, Lcom/jakewharton/rxbinding/b/ay;->a(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Lcom/jakewharton/rxbinding/b/ay;

    move-result-object v0

    .line 29
    .local v0, "event":Lcom/jakewharton/rxbinding/b/ay;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/az$1;->b:Lcom/jakewharton/rxbinding/b/az;

    iget-object v1, v1, Lcom/jakewharton/rxbinding/b/az;->b:Lrx/c/p;

    invoke-interface {v1, v0}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/az$1;->a:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/az$1;->a:Lrx/l;

    invoke-virtual {v1, v0}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 33
    :cond_0
    const/4 v1, 0x1

    .line 35
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.class Lcom/jakewharton/rxbinding/view/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/h;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lcom/jakewharton/rxbinding/view/h;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/h;Lrx/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/h;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/h$1;->b:Lcom/jakewharton/rxbinding/view/h;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/h$1;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/h$1;->b:Lcom/jakewharton/rxbinding/view/h;

    iget-boolean v0, v0, Lcom/jakewharton/rxbinding/view/h;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/h$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/h$1;->a:Lrx/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 28
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/h$1;->b:Lcom/jakewharton/rxbinding/view/h;

    iget-boolean v0, v0, Lcom/jakewharton/rxbinding/view/h;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/h$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/h$1;->a:Lrx/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 34
    :cond_0
    return-void
.end method

.class Lcom/jakewharton/rxbinding/view/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/g;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lcom/jakewharton/rxbinding/view/g;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/g;Lrx/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/g;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/g$1;->b:Lcom/jakewharton/rxbinding/view/g;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/g$1;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/g$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/g$1;->a:Lrx/l;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/g$1;->b:Lcom/jakewharton/rxbinding/view/g;

    iget-object v1, v1, Lcom/jakewharton/rxbinding/view/g;->a:Landroid/view/View;

    sget-object v2, Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;->ATTACH:Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;

    invoke-static {v1, v2}, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->a(Landroid/view/View;Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;)Lcom/jakewharton/rxbinding/view/ViewAttachEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 28
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/g$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/g$1;->a:Lrx/l;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/g$1;->b:Lcom/jakewharton/rxbinding/view/g;

    iget-object v1, v1, Lcom/jakewharton/rxbinding/view/g;->a:Landroid/view/View;

    sget-object v2, Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;->DETACH:Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;

    invoke-static {v1, v2}, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->a(Landroid/view/View;Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;)Lcom/jakewharton/rxbinding/view/ViewAttachEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 34
    :cond_0
    return-void
.end method

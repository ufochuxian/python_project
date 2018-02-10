.class Lcom/jakewharton/rxbinding/view/q$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/q;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lcom/jakewharton/rxbinding/view/q;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/q;Lrx/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/q;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/q$1;->b:Lcom/jakewharton/rxbinding/view/q;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/q$1;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/q$1;->b:Lcom/jakewharton/rxbinding/view/q;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/q;->b:Lrx/c/p;

    invoke-interface {v0, p2}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/q$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/q$1;->a:Lrx/l;

    invoke-virtual {v0, p2}, Lrx/l;->onNext(Ljava/lang/Object;)V

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

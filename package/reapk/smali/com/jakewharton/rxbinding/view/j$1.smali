.class Lcom/jakewharton/rxbinding/view/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/j;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lcom/jakewharton/rxbinding/view/j;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/j;Lrx/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/j;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/j$1;->b:Lcom/jakewharton/rxbinding/view/j;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/j$1;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/j$1;->b:Lcom/jakewharton/rxbinding/view/j;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/j;->b:Lrx/c/p;

    invoke-interface {v0, p2}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/j$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/j$1;->a:Lrx/l;

    invoke-virtual {v0, p2}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
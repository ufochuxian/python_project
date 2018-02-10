.class Lcom/jakewharton/rxbinding/view/ab$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/ab;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lcom/jakewharton/rxbinding/view/ab;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ab;Lrx/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/ab;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ab$1;->b:Lcom/jakewharton/rxbinding/view/ab;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/ab$1;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ab$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ab$1;->a:Lrx/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ab$1;->b:Lcom/jakewharton/rxbinding/view/ab;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/ab;->b:Lrx/c/o;

    invoke-interface {v0}, Lrx/c/o;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 30
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

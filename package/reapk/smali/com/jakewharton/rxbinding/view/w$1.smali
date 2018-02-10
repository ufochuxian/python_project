.class Lcom/jakewharton/rxbinding/view/w$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/w;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lcom/jakewharton/rxbinding/view/w;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/w;Lrx/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/w;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/w$1;->b:Lcom/jakewharton/rxbinding/view/w;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/w$1;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "oldScrollX"    # I
    .param p5, "oldScrollY"    # I

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/w$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/w$1;->a:Lrx/l;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/w$1;->b:Lcom/jakewharton/rxbinding/view/w;

    iget-object v1, v1, Lcom/jakewharton/rxbinding/view/w;->a:Landroid/view/View;

    .line 29
    invoke-static {v1, p2, p3, p4, p5}, Lcom/jakewharton/rxbinding/view/v;->a(Landroid/view/View;IIII)Lcom/jakewharton/rxbinding/view/v;

    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 31
    :cond_0
    return-void
.end method

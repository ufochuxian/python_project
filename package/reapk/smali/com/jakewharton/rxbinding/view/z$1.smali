.class Lcom/jakewharton/rxbinding/view/z$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/z;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lcom/jakewharton/rxbinding/view/z;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/z;Lrx/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/z;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/z$1;->b:Lcom/jakewharton/rxbinding/view/z;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/z$1;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/z$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/z$1;->a:Lrx/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 29
    :cond_0
    return-void
.end method

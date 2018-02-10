.class Lcom/jakewharton/rxbinding/view/aa$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/aa;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lcom/jakewharton/rxbinding/view/aa;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/aa;Lrx/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/aa;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/aa$1;->b:Lcom/jakewharton/rxbinding/view/aa;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/aa$1;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/aa$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/aa$1;->a:Lrx/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 27
    :cond_0
    return-void
.end method

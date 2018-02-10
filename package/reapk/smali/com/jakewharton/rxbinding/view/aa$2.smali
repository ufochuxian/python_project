.class Lcom/jakewharton/rxbinding/view/aa$2;
.super Lrx/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/aa;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field final synthetic b:Lcom/jakewharton/rxbinding/view/aa;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/aa;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/aa;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/aa$2;->b:Lcom/jakewharton/rxbinding/view/aa;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/aa$2;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Lrx/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/aa$2;->b:Lcom/jakewharton/rxbinding/view/aa;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/aa;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/aa$2;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/aa$2;->b:Lcom/jakewharton/rxbinding/view/aa;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/aa;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/aa$2;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

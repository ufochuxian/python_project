.class Lcom/jakewharton/rxbinding/view/ab$2;
.super Lrx/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/ab;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field final synthetic b:Lcom/jakewharton/rxbinding/view/ab;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ab;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/ab;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ab$2;->b:Lcom/jakewharton/rxbinding/view/ab;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/ab$2;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-direct {p0}, Lrx/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ab$2;->b:Lcom/jakewharton/rxbinding/view/ab;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/ab;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ab$2;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 39
    return-void
.end method

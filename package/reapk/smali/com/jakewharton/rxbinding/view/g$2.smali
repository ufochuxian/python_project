.class Lcom/jakewharton/rxbinding/view/g$2;
.super Lrx/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/g;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnAttachStateChangeListener;

.field final synthetic b:Lcom/jakewharton/rxbinding/view/g;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/g;Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/g;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/g$2;->b:Lcom/jakewharton/rxbinding/view/g;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/g$2;->a:Landroid/view/View$OnAttachStateChangeListener;

    invoke-direct {p0}, Lrx/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/g$2;->b:Lcom/jakewharton/rxbinding/view/g;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/g;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/g$2;->a:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 41
    return-void
.end method

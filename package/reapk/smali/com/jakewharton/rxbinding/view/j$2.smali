.class Lcom/jakewharton/rxbinding/view/j$2;
.super Lrx/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/j;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jakewharton/rxbinding/view/j;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/j;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/j;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/j$2;->a:Lcom/jakewharton/rxbinding/view/j;

    invoke-direct {p0}, Lrx/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/j$2;->a:Lcom/jakewharton/rxbinding/view/j;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/j;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 40
    return-void
.end method

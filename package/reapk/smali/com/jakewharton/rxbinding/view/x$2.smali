.class Lcom/jakewharton/rxbinding/view/x$2;
.super Lrx/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/x;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jakewharton/rxbinding/view/x;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/x;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/x;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/x$2;->a:Lcom/jakewharton/rxbinding/view/x;

    invoke-direct {p0}, Lrx/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/x$2;->a:Lcom/jakewharton/rxbinding/view/x;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/x;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 33
    return-void
.end method

.class Lcom/jakewharton/rxbinding/view/q$2;
.super Lrx/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/q;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jakewharton/rxbinding/view/q;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/q;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/q;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/q$2;->a:Lcom/jakewharton/rxbinding/view/q;

    invoke-direct {p0}, Lrx/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/q$2;->a:Lcom/jakewharton/rxbinding/view/q;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/q;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 41
    return-void
.end method

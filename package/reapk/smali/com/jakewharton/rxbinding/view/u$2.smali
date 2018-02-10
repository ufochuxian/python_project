.class Lcom/jakewharton/rxbinding/view/u$2;
.super Lrx/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/u;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jakewharton/rxbinding/view/u;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/u;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/u;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/u$2;->a:Lcom/jakewharton/rxbinding/view/u;

    invoke-direct {p0}, Lrx/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/u$2;->a:Lcom/jakewharton/rxbinding/view/u;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/u;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 39
    return-void
.end method

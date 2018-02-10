.class Lcom/jakewharton/rxbinding/b/bc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/bc;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lcom/jakewharton/rxbinding/b/bc;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/b/bc;Lrx/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/b/bc;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/bc$1;->b:Lcom/jakewharton/rxbinding/b/bc;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/b/bc$1;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 34
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 25
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/bc$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/bc$1;->a:Lrx/l;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/bc$1;->b:Lcom/jakewharton/rxbinding/b/bc;

    iget-object v1, v1, Lcom/jakewharton/rxbinding/b/bc;->a:Landroid/widget/TextView;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/jakewharton/rxbinding/b/bb;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;III)Lcom/jakewharton/rxbinding/b/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 31
    :cond_0
    return-void
.end method

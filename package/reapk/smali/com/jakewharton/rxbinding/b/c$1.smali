.class Lcom/jakewharton/rxbinding/b/c$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/c;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lcom/jakewharton/rxbinding/b/c;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/b/c;Lrx/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/b/c;

    .prologue
    .line 22
    .local p0, "this":Lcom/jakewharton/rxbinding/b/c$1;, "Lcom/jakewharton/rxbinding/b/c$1;"
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/c$1;->b:Lcom/jakewharton/rxbinding/b/c;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/b/c$1;->a:Lrx/l;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 24
    .local p0, "this":Lcom/jakewharton/rxbinding/b/c$1;, "Lcom/jakewharton/rxbinding/b/c$1;"
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/c$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/c$1;->a:Lrx/l;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/c$1;->b:Lcom/jakewharton/rxbinding/b/c;

    iget-object v1, v1, Lcom/jakewharton/rxbinding/b/c;->a:Landroid/widget/Adapter;

    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 27
    :cond_0
    return-void
.end method

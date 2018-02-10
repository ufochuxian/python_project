.class Lcom/jakewharton/rxbinding/b/c$2;
.super Lrx/a/b;
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
.field final synthetic a:Landroid/database/DataSetObserver;

.field final synthetic b:Lcom/jakewharton/rxbinding/b/c;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/b/c;Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/b/c;

    .prologue
    .line 31
    .local p0, "this":Lcom/jakewharton/rxbinding/b/c$2;, "Lcom/jakewharton/rxbinding/b/c$2;"
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/c$2;->b:Lcom/jakewharton/rxbinding/b/c;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/b/c$2;->a:Landroid/database/DataSetObserver;

    invoke-direct {p0}, Lrx/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 33
    .local p0, "this":Lcom/jakewharton/rxbinding/b/c$2;, "Lcom/jakewharton/rxbinding/b/c$2;"
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/c$2;->b:Lcom/jakewharton/rxbinding/b/c;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/b/c;->a:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/c$2;->a:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 34
    return-void
.end method

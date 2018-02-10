.class Lcom/jakewharton/rxbinding/b/b$2;
.super Lrx/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/b;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jakewharton/rxbinding/b/b;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/b/b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/b/b;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/b$2;->a:Lcom/jakewharton/rxbinding/b/b;

    invoke-direct {p0}, Lrx/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/b$2;->a:Lcom/jakewharton/rxbinding/b/b;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/b/b;->a:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 53
    return-void
.end method

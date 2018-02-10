.class Lcom/jakewharton/rxbinding/b/r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/r;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lcom/jakewharton/rxbinding/b/r;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/b/r;Lrx/l;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/b/r;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/r$1;->b:Lcom/jakewharton/rxbinding/b/r;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/b/r$1;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/r$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/r$1;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 27
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

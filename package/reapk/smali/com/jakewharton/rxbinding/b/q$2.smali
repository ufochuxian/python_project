.class Lcom/jakewharton/rxbinding/b/q$2;
.super Lrx/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/q;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jakewharton/rxbinding/b/q;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/b/q;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/b/q;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/q$2;->a:Lcom/jakewharton/rxbinding/b/q;

    invoke-direct {p0}, Lrx/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/q$2;->a:Lcom/jakewharton/rxbinding/b/q;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/b/q;->a:Landroid/widget/PopupMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 34
    return-void
.end method

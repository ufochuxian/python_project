.class Lcom/jakewharton/rxbinding/view/n$2;
.super Lrx/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/n;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jakewharton/rxbinding/view/n;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/n;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/n;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/n$2;->a:Lcom/jakewharton/rxbinding/view/n;

    invoke-direct {p0}, Lrx/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/n$2;->a:Lcom/jakewharton/rxbinding/view/n;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/n;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 43
    return-void
.end method

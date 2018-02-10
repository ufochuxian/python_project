.class Lcom/jakewharton/rxbinding/view/s$2;
.super Lrx/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/s;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnLayoutChangeListener;

.field final synthetic b:Lcom/jakewharton/rxbinding/view/s;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/s;Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/s;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/s$2;->b:Lcom/jakewharton/rxbinding/view/s;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/s$2;->a:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Lrx/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/s$2;->b:Lcom/jakewharton/rxbinding/view/s;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/s;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/s$2;->a:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 35
    return-void
.end method

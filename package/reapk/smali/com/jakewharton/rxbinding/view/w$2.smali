.class Lcom/jakewharton/rxbinding/view/w$2;
.super Lrx/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/w;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jakewharton/rxbinding/view/w;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/w;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/w;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/w$2;->a:Lcom/jakewharton/rxbinding/view/w;

    invoke-direct {p0}, Lrx/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/w$2;->a:Lcom/jakewharton/rxbinding/view/w;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/w;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 38
    return-void
.end method

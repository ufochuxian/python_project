.class Lcom/jakewharton/rxbinding/b/bd$2;
.super Lrx/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/bd;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/TextWatcher;

.field final synthetic b:Lcom/jakewharton/rxbinding/b/bd;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/b/bd;Landroid/text/TextWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/b/bd;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/bd$2;->b:Lcom/jakewharton/rxbinding/b/bd;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/b/bd$2;->a:Landroid/text/TextWatcher;

    invoke-direct {p0}, Lrx/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/bd$2;->b:Lcom/jakewharton/rxbinding/b/bd;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/b/bd;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/bd$2;->a:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 40
    return-void
.end method

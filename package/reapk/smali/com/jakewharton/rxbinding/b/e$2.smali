.class Lcom/jakewharton/rxbinding/b/e$2;
.super Lrx/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/e;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jakewharton/rxbinding/b/e;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/b/e;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/b/e;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/e$2;->a:Lcom/jakewharton/rxbinding/b/e;

    invoke-direct {p0}, Lrx/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/e$2;->a:Lcom/jakewharton/rxbinding/b/e;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/b/e;->a:Landroid/widget/AdapterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 34
    return-void
.end method

.class Lcom/jakewharton/rxbinding/b/f$2;
.super Lrx/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/f;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jakewharton/rxbinding/b/f;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/b/f;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/b/f;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/f$2;->a:Lcom/jakewharton/rxbinding/b/f;

    invoke-direct {p0}, Lrx/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/f$2;->a:Lcom/jakewharton/rxbinding/b/f;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/b/f;->a:Landroid/widget/AdapterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 33
    return-void
.end method

.class Lcom/jakewharton/rxbinding/b/k$2;
.super Lrx/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/k;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jakewharton/rxbinding/b/k;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/b/k;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/b/k;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/k$2;->a:Lcom/jakewharton/rxbinding/b/k;

    invoke-direct {p0}, Lrx/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/k$2;->a:Lcom/jakewharton/rxbinding/b/k;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/b/k;->a:Landroid/widget/AdapterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 41
    return-void
.end method

.class Lcom/jakewharton/rxbinding/b/al$2;
.super Lrx/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/al;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jakewharton/rxbinding/b/al;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/b/al;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/b/al;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/al$2;->a:Lcom/jakewharton/rxbinding/b/al;

    invoke-direct {p0}, Lrx/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/al$2;->a:Lcom/jakewharton/rxbinding/b/al;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/b/al;->a:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 44
    return-void
.end method

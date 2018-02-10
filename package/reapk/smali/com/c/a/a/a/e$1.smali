.class Lcom/c/a/a/a/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/a/a/a/e;->b(I)Lcom/c/a/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/c/a/a/a/e;


# direct methods
.method constructor <init>(Lcom/c/a/a/a/e;)V
    .locals 0
    .param p1, "this$0"    # Lcom/c/a/a/a/e;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/c/a/a/a/e$1;->a:Lcom/c/a/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/c/a/a/a/e$1;->a:Lcom/c/a/a/a/e;

    invoke-static {v0}, Lcom/c/a/a/a/e;->a(Lcom/c/a/a/a/e;)Lcom/c/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/a/a/c;->getOnItemChildClickListener()Lcom/c/a/a/a/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/c/a/a/a/e$1;->a:Lcom/c/a/a/a/e;

    invoke-static {v0}, Lcom/c/a/a/a/e;->a(Lcom/c/a/a/a/e;)Lcom/c/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/a/a/c;->getOnItemChildClickListener()Lcom/c/a/a/a/c$b;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/a/a/e$1;->a:Lcom/c/a/a/a/e;

    invoke-static {v1}, Lcom/c/a/a/a/e;->a(Lcom/c/a/a/a/e;)Lcom/c/a/a/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/a/a/e$1;->a:Lcom/c/a/a/a/e;

    invoke-static {v2}, Lcom/c/a/a/a/e;->b(Lcom/c/a/a/a/e;)I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/c/a/a/a/c$b;->onItemChildClick(Lcom/c/a/a/a/c;Landroid/view/View;I)V

    .line 365
    :cond_0
    return-void
.end method

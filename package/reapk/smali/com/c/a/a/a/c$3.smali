.class Lcom/c/a/a/a/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/a/a/a/c;->getLoadingView(Landroid/view/ViewGroup;)Lcom/c/a/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/c/a/a/a/c;


# direct methods
.method constructor <init>(Lcom/c/a/a/a/c;)V
    .locals 0
    .param p1, "this$0"    # Lcom/c/a/a/a/c;

    .prologue
    .line 683
    .local p0, "this":Lcom/c/a/a/a/c$3;, "Lcom/c/a/a/a/c$3;"
    iput-object p1, p0, Lcom/c/a/a/a/c$3;->a:Lcom/c/a/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 686
    .local p0, "this":Lcom/c/a/a/a/c$3;, "Lcom/c/a/a/a/c$3;"
    iget-object v0, p0, Lcom/c/a/a/a/c$3;->a:Lcom/c/a/a/a/c;

    invoke-static {v0}, Lcom/c/a/a/a/c;->access$100(Lcom/c/a/a/a/c;)Lcom/c/a/a/a/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/a/a/e/a;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 687
    iget-object v0, p0, Lcom/c/a/a/a/c$3;->a:Lcom/c/a/a/a/c;

    invoke-static {v0}, Lcom/c/a/a/a/c;->access$100(Lcom/c/a/a/a/c;)Lcom/c/a/a/a/e/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e/a;->a(I)V

    .line 688
    iget-object v0, p0, Lcom/c/a/a/a/c$3;->a:Lcom/c/a/a/a/c;

    iget-object v1, p0, Lcom/c/a/a/a/c$3;->a:Lcom/c/a/a/a/c;

    invoke-virtual {v1}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v1

    iget-object v2, p0, Lcom/c/a/a/a/c$3;->a:Lcom/c/a/a/a/c;

    iget-object v2, v2, Lcom/c/a/a/a/c;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/c/a/a/a/c$3;->a:Lcom/c/a/a/a/c;

    invoke-virtual {v2}, Lcom/c/a/a/a/c;->getFooterLayoutCount()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/c;->notifyItemChanged(I)V

    .line 690
    :cond_0
    return-void
.end method

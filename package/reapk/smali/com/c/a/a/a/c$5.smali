.class Lcom/c/a/a/a/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/a/a/a/c;->bindViewClickListener(Lcom/c/a/a/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/c/a/a/a/e;

.field final synthetic b:Lcom/c/a/a/a/c;


# direct methods
.method constructor <init>(Lcom/c/a/a/a/c;Lcom/c/a/a/a/e;)V
    .locals 0
    .param p1, "this$0"    # Lcom/c/a/a/a/c;

    .prologue
    .line 805
    .local p0, "this":Lcom/c/a/a/a/c$5;, "Lcom/c/a/a/a/c$5;"
    iput-object p1, p0, Lcom/c/a/a/a/c$5;->b:Lcom/c/a/a/a/c;

    iput-object p2, p0, Lcom/c/a/a/a/c$5;->a:Lcom/c/a/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 808
    .local p0, "this":Lcom/c/a/a/a/c$5;, "Lcom/c/a/a/a/c$5;"
    iget-object v0, p0, Lcom/c/a/a/a/c$5;->b:Lcom/c/a/a/a/c;

    invoke-virtual {v0}, Lcom/c/a/a/a/c;->getOnItemClickListener()Lcom/c/a/a/a/c$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/a/c$5;->a:Lcom/c/a/a/a/e;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/c/a/a/a/c$5;->b:Lcom/c/a/a/a/c;

    invoke-virtual {v0}, Lcom/c/a/a/a/c;->getOnItemClickListener()Lcom/c/a/a/a/c$d;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/a/a/c$5;->b:Lcom/c/a/a/a/c;

    iget-object v2, p0, Lcom/c/a/a/a/c$5;->a:Lcom/c/a/a/a/e;

    invoke-virtual {v2}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v2

    iget-object v3, p0, Lcom/c/a/a/a/c$5;->b:Lcom/c/a/a/a/c;

    invoke-virtual {v3}, Lcom/c/a/a/a/c;->getHeaderLayoutCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, p1, v2}, Lcom/c/a/a/a/c$d;->a(Lcom/c/a/a/a/c;Landroid/view/View;I)V

    .line 813
    :cond_0
    return-void
.end method

.class Lcom/c/a/a/a/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/a/a/a/e;->d(I)Lcom/c/a/a/a/e;
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
    .line 403
    iput-object p1, p0, Lcom/c/a/a/a/e$2;->a:Lcom/c/a/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/c/a/a/a/e$2;->a:Lcom/c/a/a/a/e;

    invoke-static {v0}, Lcom/c/a/a/a/e;->a(Lcom/c/a/a/a/e;)Lcom/c/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/a/a/c;->getOnItemChildLongClickListener()Lcom/c/a/a/a/c$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/c/a/a/a/e$2;->a:Lcom/c/a/a/a/e;

    invoke-static {v0}, Lcom/c/a/a/a/e;->a(Lcom/c/a/a/a/e;)Lcom/c/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/a/a/c;->getOnItemChildLongClickListener()Lcom/c/a/a/a/c$c;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/a/a/e$2;->a:Lcom/c/a/a/a/e;

    invoke-static {v1}, Lcom/c/a/a/a/e;->a(Lcom/c/a/a/a/e;)Lcom/c/a/a/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/a/a/e$2;->a:Lcom/c/a/a/a/e;

    invoke-static {v2}, Lcom/c/a/a/a/e;->b(Lcom/c/a/a/a/e;)I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/c/a/a/a/c$c;->a(Lcom/c/a/a/a/c;Landroid/view/View;I)Z

    move-result v0

    .line 409
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

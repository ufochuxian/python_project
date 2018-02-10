.class Lcom/c/a/a/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/a/a/a/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/c/a/a/a/a;


# direct methods
.method constructor <init>(Lcom/c/a/a/a/a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/c/a/a/a/a;

    .prologue
    .line 110
    .local p0, "this":Lcom/c/a/a/a/a$2;, "Lcom/c/a/a/a/a$2;"
    iput-object p1, p0, Lcom/c/a/a/a/a$2;->a:Lcom/c/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 113
    .local p0, "this":Lcom/c/a/a/a/a$2;, "Lcom/c/a/a/a/a$2;"
    invoke-static {p2}, Landroid/support/v4/view/x;->a(Landroid/view/MotionEvent;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/c/a/a/a/a$2;->a:Lcom/c/a/a/a/a;

    iget-boolean v0, v0, Lcom/c/a/a/a/a;->g:Z

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/c/a/a/a/a$2;->a:Lcom/c/a/a/a/a;

    iget-object v0, v0, Lcom/c/a/a/a/a;->b:Landroid/support/v7/widget/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/a/a$2;->a:Lcom/c/a/a/a/a;

    iget-boolean v0, v0, Lcom/c/a/a/a/a;->c:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/c/a/a/a/a$2;->a:Lcom/c/a/a/a/a;

    iget-object v1, v0, Lcom/c/a/a/a/a;->b:Landroid/support/v7/widget/a/a;

    sget v0, Lcom/c/a/b$c;->BaseQuickAdapter_viewholder_support:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/a/a;->b(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 118
    :cond_0
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/mob/tools/gui/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/h;-><init>(Lcom/mob/tools/gui/PullToRequestView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/gui/h;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/h;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mob/tools/gui/h;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/mob/tools/gui/h$1;->a:Lcom/mob/tools/gui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 37
    iput p2, p0, Lcom/mob/tools/gui/h$1;->b:I

    .line 38
    iput p3, p0, Lcom/mob/tools/gui/h$1;->c:I

    .line 39
    add-int/lit8 v1, p3, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/mob/tools/gui/h$1;->a:Lcom/mob/tools/gui/h;

    add-int v1, p2, p3

    if-ne v1, p4, :cond_0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getBottom()I

    move-result v3

    if-gt v1, v3, :cond_0

    const/4 v1, 0x1

    .line 40
    :goto_0
    invoke-static {v2, v1}, Lcom/mob/tools/gui/h;->b(Lcom/mob/tools/gui/h;Z)Z

    .line 42
    iget-object v1, p0, Lcom/mob/tools/gui/h$1;->a:Lcom/mob/tools/gui/h;

    iget-object v2, p0, Lcom/mob/tools/gui/h$1;->a:Lcom/mob/tools/gui/h;

    invoke-static {v2}, Lcom/mob/tools/gui/h;->c(Lcom/mob/tools/gui/h;)Lcom/mob/tools/gui/ScrollableListView;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/mob/tools/gui/h;->a(Lcom/mob/tools/gui/i;III)V

    .line 44
    return-void

    .line 41
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 25
    iget-object v1, p0, Lcom/mob/tools/gui/h$1;->a:Lcom/mob/tools/gui/h;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/mob/tools/gui/h;->a(Lcom/mob/tools/gui/h;Z)Z

    .line 26
    if-nez p2, :cond_0

    .line 27
    iget-object v0, p0, Lcom/mob/tools/gui/h$1;->a:Lcom/mob/tools/gui/h;

    invoke-static {v0}, Lcom/mob/tools/gui/h;->a(Lcom/mob/tools/gui/h;)Lcom/mob/tools/gui/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/mob/tools/gui/h$1;->a:Lcom/mob/tools/gui/h;

    invoke-static {v0}, Lcom/mob/tools/gui/h;->a(Lcom/mob/tools/gui/h;)Lcom/mob/tools/gui/c;

    move-result-object v0

    iget v1, p0, Lcom/mob/tools/gui/h$1;->b:I

    iget v2, p0, Lcom/mob/tools/gui/h$1;->c:I

    invoke-interface {v0, v1, v2}, Lcom/mob/tools/gui/c;->a(II)V

    .line 33
    :cond_0
    :goto_1
    return-void

    .line 25
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/mob/tools/gui/h$1;->a:Lcom/mob/tools/gui/h;

    invoke-static {v0}, Lcom/mob/tools/gui/h;->b(Lcom/mob/tools/gui/h;)Lcom/mob/tools/gui/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/mob/tools/gui/h$1;->a:Lcom/mob/tools/gui/h;

    invoke-static {v0}, Lcom/mob/tools/gui/h;->b(Lcom/mob/tools/gui/h;)Lcom/mob/tools/gui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/gui/e;->notifyDataSetChanged()V

    goto :goto_1
.end method

.class public abstract Lcom/mob/tools/gui/g;
.super Lcom/mob/tools/gui/f;
.source "SourceFile"


# instance fields
.field private a:Lcom/mob/tools/gui/ScrollableGridView;

.field private b:Lcom/mob/tools/gui/e;

.field private c:Z

.field private d:Lcom/mob/tools/gui/c;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/mob/tools/gui/PullToRequestView;)V
    .locals 2
    .param p1, "view"    # Lcom/mob/tools/gui/PullToRequestView;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/f;-><init>(Lcom/mob/tools/gui/PullToRequestView;)V

    .line 18
    invoke-virtual {p0}, Lcom/mob/tools/gui/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/g;->a(Landroid/content/Context;)Lcom/mob/tools/gui/ScrollableGridView;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/g;->a:Lcom/mob/tools/gui/ScrollableGridView;

    .line 19
    iget-object v0, p0, Lcom/mob/tools/gui/g;->a:Lcom/mob/tools/gui/ScrollableGridView;

    new-instance v1, Lcom/mob/tools/gui/g$1;

    invoke-direct {v1, p0}, Lcom/mob/tools/gui/g$1;-><init>(Lcom/mob/tools/gui/g;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/ScrollableGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 45
    new-instance v0, Lcom/mob/tools/gui/e;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/e;-><init>(Lcom/mob/tools/gui/f;)V

    iput-object v0, p0, Lcom/mob/tools/gui/g;->b:Lcom/mob/tools/gui/e;

    .line 46
    iget-object v0, p0, Lcom/mob/tools/gui/g;->a:Lcom/mob/tools/gui/ScrollableGridView;

    iget-object v1, p0, Lcom/mob/tools/gui/g;->b:Lcom/mob/tools/gui/e;

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/ScrollableGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/mob/tools/gui/g;)Lcom/mob/tools/gui/c;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/g;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/mob/tools/gui/g;->d:Lcom/mob/tools/gui/c;

    return-object v0
.end method

.method static synthetic a(Lcom/mob/tools/gui/g;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/g;
    .param p1, "x1"    # Z

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/mob/tools/gui/g;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/mob/tools/gui/g;)Lcom/mob/tools/gui/e;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/g;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/mob/tools/gui/g;->b:Lcom/mob/tools/gui/e;

    return-object v0
.end method

.method static synthetic b(Lcom/mob/tools/gui/g;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/g;
    .param p1, "x1"    # Z

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/mob/tools/gui/g;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/mob/tools/gui/g;)Lcom/mob/tools/gui/ScrollableGridView;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/g;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/mob/tools/gui/g;->a:Lcom/mob/tools/gui/ScrollableGridView;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/mob/tools/gui/ScrollableGridView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    new-instance v0, Lcom/mob/tools/gui/ScrollableGridView;

    invoke-direct {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Lcom/mob/tools/gui/i;III)V
    .locals 0
    .param p1, "scrollable"    # Lcom/mob/tools/gui/i;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 76
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/mob/tools/gui/f;->c()V

    .line 80
    iget-object v0, p0, Lcom/mob/tools/gui/g;->b:Lcom/mob/tools/gui/e;

    invoke-virtual {v0}, Lcom/mob/tools/gui/e;->notifyDataSetChanged()V

    .line 81
    return-void
.end method

.method public e()Lcom/mob/tools/gui/i;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mob/tools/gui/g;->a:Lcom/mob/tools/gui/ScrollableGridView;

    return-object v0
.end method

.method public f(I)V
    .locals 1
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mob/tools/gui/g;->a:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->setHorizontalSpacing(I)V

    .line 85
    return-void
.end method

.method public g(I)V
    .locals 1
    .param p1, "verticalSpacing"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mob/tools/gui/g;->a:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->setVerticalSpacing(I)V

    .line 89
    return-void
.end method

.method public h(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mob/tools/gui/g;->a:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->setNumColumns(I)V

    .line 93
    return-void
.end method

.method public i(I)V
    .locals 1
    .param p1, "columnWidth"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mob/tools/gui/g;->a:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->setColumnWidth(I)V

    .line 97
    return-void
.end method

.method public j(I)V
    .locals 1
    .param p1, "stretchMode"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mob/tools/gui/g;->a:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->setStretchMode(I)V

    .line 101
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mob/tools/gui/g;->a:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0}, Lcom/mob/tools/gui/ScrollableGridView;->a()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/mob/tools/gui/g;->e:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/mob/tools/gui/g;->c:Z

    return v0
.end method

.method public o()Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mob/tools/gui/g;->a:Lcom/mob/tools/gui/ScrollableGridView;

    return-object v0
.end method

.class public abstract Lcom/mob/tools/gui/h;
.super Lcom/mob/tools/gui/f;
.source "SourceFile"


# instance fields
.field private a:Lcom/mob/tools/gui/ScrollableListView;

.field private b:Lcom/mob/tools/gui/e;

.field private c:Z

.field private d:Lcom/mob/tools/gui/c;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/mob/tools/gui/PullToRequestView;)V
    .locals 2
    .param p1, "view"    # Lcom/mob/tools/gui/PullToRequestView;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/f;-><init>(Lcom/mob/tools/gui/PullToRequestView;)V

    .line 19
    invoke-virtual {p0}, Lcom/mob/tools/gui/h;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/h;->a(Landroid/content/Context;)Lcom/mob/tools/gui/ScrollableListView;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/h;->a:Lcom/mob/tools/gui/ScrollableListView;

    .line 20
    iget-object v0, p0, Lcom/mob/tools/gui/h;->a:Lcom/mob/tools/gui/ScrollableListView;

    new-instance v1, Lcom/mob/tools/gui/h$1;

    invoke-direct {v1, p0}, Lcom/mob/tools/gui/h$1;-><init>(Lcom/mob/tools/gui/h;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/ScrollableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 46
    new-instance v0, Lcom/mob/tools/gui/e;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/e;-><init>(Lcom/mob/tools/gui/f;)V

    iput-object v0, p0, Lcom/mob/tools/gui/h;->b:Lcom/mob/tools/gui/e;

    .line 47
    iget-object v0, p0, Lcom/mob/tools/gui/h;->a:Lcom/mob/tools/gui/ScrollableListView;

    iget-object v1, p0, Lcom/mob/tools/gui/h;->b:Lcom/mob/tools/gui/e;

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/ScrollableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/mob/tools/gui/h;)Lcom/mob/tools/gui/c;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/h;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/mob/tools/gui/h;->d:Lcom/mob/tools/gui/c;

    return-object v0
.end method

.method static synthetic a(Lcom/mob/tools/gui/h;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/h;
    .param p1, "x1"    # Z

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/mob/tools/gui/h;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/mob/tools/gui/h;)Lcom/mob/tools/gui/e;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/h;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/mob/tools/gui/h;->b:Lcom/mob/tools/gui/e;

    return-object v0
.end method

.method static synthetic b(Lcom/mob/tools/gui/h;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/h;
    .param p1, "x1"    # Z

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/mob/tools/gui/h;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/mob/tools/gui/h;)Lcom/mob/tools/gui/ScrollableListView;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/h;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/mob/tools/gui/h;->a:Lcom/mob/tools/gui/ScrollableListView;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/mob/tools/gui/ScrollableListView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    new-instance v0, Lcom/mob/tools/gui/ScrollableListView;

    invoke-direct {v0, p1}, Lcom/mob/tools/gui/ScrollableListView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mob/tools/gui/h;->a:Lcom/mob/tools/gui/ScrollableListView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 78
    return-void
.end method

.method public a(Lcom/mob/tools/gui/i;III)V
    .locals 0
    .param p1, "scrollable"    # Lcom/mob/tools/gui/i;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 69
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/mob/tools/gui/f;->c()V

    .line 73
    iget-object v0, p0, Lcom/mob/tools/gui/h;->b:Lcom/mob/tools/gui/e;

    invoke-virtual {v0}, Lcom/mob/tools/gui/e;->notifyDataSetChanged()V

    .line 74
    return-void
.end method

.method public e()Lcom/mob/tools/gui/i;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mob/tools/gui/h;->a:Lcom/mob/tools/gui/ScrollableListView;

    return-object v0
.end method

.method public f(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mob/tools/gui/h;->a:Lcom/mob/tools/gui/ScrollableListView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableListView;->setDividerHeight(I)V

    .line 82
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mob/tools/gui/h;->a:Lcom/mob/tools/gui/ScrollableListView;

    invoke-virtual {v0}, Lcom/mob/tools/gui/ScrollableListView;->a()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/mob/tools/gui/h;->e:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/mob/tools/gui/h;->c:Z

    return v0
.end method

.method public o()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mob/tools/gui/h;->a:Lcom/mob/tools/gui/ScrollableListView;

    return-object v0
.end method

.class public Lcom/mob/tools/gui/ScrollableListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/gui/i;


# instance fields
.field private a:Lcom/mob/tools/gui/i$a;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScrollableListView;->a(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScrollableListView;->a(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScrollableListView;->a(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v1}, Lcom/mob/tools/gui/ScrollableListView;->setCacheColorHint(I)V

    .line 29
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScrollableListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 30
    invoke-virtual {p0, v1}, Lcom/mob/tools/gui/ScrollableListView;->setDividerHeight(I)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mob/tools/gui/ScrollableListView;->b:Z

    .line 32
    new-instance v0, Lcom/mob/tools/gui/ScrollableListView$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/ScrollableListView$1;-><init>(Lcom/mob/tools/gui/ScrollableListView;)V

    iput-object v0, p0, Lcom/mob/tools/gui/ScrollableListView;->a:Lcom/mob/tools/gui/i$a;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/mob/tools/gui/ScrollableListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/ScrollableListView;
    .param p1, "x1"    # Z

    .prologue
    .line 8
    iput-boolean p1, p0, Lcom/mob/tools/gui/ScrollableListView;->b:Z

    return p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/mob/tools/gui/ScrollableListView;->b:Z

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v3

    .line 46
    .local v3, "offset":I
    iget-object v0, p0, Lcom/mob/tools/gui/ScrollableListView;->a:Lcom/mob/tools/gui/i$a;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/mob/tools/gui/ScrollableListView;->a:Lcom/mob/tools/gui/i$a;

    move-object v1, p0

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v5}, Lcom/mob/tools/gui/i$a;->a(Lcom/mob/tools/gui/i;IIII)V

    .line 49
    :cond_0
    return v3
.end method

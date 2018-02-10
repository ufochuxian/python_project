.class Landroid/support/v7/widget/ActionMenuPresenter;
.super Landroid/support/v7/view/menu/b;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuPresenter$b;,
        Landroid/support/v7/widget/ActionMenuPresenter$c;,
        Landroid/support/v7/widget/ActionMenuPresenter$e;,
        Landroid/support/v7/widget/ActionMenuPresenter$a;,
        Landroid/support/v7/widget/ActionMenuPresenter$d;,
        Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;,
        Landroid/support/v7/widget/ActionMenuPresenter$f;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/support/v7/widget/ActionMenuPresenter$b;

.field g:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

.field h:Landroid/support/v7/widget/ActionMenuPresenter$d;

.field i:Landroid/support/v7/widget/ActionMenuPresenter$a;

.field j:Landroid/support/v7/widget/ActionMenuPresenter$c;

.field final k:Landroid/support/v7/widget/ActionMenuPresenter$e;

.field l:I

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private final z:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    sget v0, Landroid/support/v7/a/b$i;->abc_action_menu_layout:I

    sget v1, Landroid/support/v7/a/b$i;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/view/menu/b;-><init>(Landroid/content/Context;II)V

    .line 74
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->z:Landroid/util/SparseBooleanArray;

    .line 84
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$e;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter$e;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->k:Landroid/support/v7/widget/ActionMenuPresenter$e;

    .line 89
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/h;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/view/menu/h;

    return-object v0
.end method

.method private a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    .line 324
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Landroid/support/v7/view/menu/p;

    check-cast v3, Landroid/view/ViewGroup;

    .line 325
    .local v3, "parent":Landroid/view/ViewGroup;
    if-nez v3, :cond_1

    move-object v0, v5

    .line 335
    :cond_0
    :goto_0
    return-object v0

    .line 327
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 328
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 329
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 330
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Landroid/support/v7/view/menu/p$a;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Landroid/support/v7/view/menu/p$a;

    .line 331
    invoke-interface {v4}, Landroid/support/v7/view/menu/p$a;->getItemData()Landroid/support/v7/view/menu/k;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 328
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    :cond_3
    move-object v0, v5

    .line 335
    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/h;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/view/menu/h;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/p;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Landroid/support/v7/view/menu/p;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/h;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/view/menu/h;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/h;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/view/menu/h;

    return-object v0
.end method

.method static synthetic f(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/p;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Landroid/support/v7/view/menu/p;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/p;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Landroid/support/v7/view/menu/p;

    .line 186
    .local v0, "oldMenuView":Landroid/support/v7/view/menu/p;
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/b;->a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/p;

    move-result-object v1

    .line 187
    .local v1, "result":Landroid/support/v7/view/menu/p;
    if-eq v0, v1, :cond_0

    move-object v2, v1

    .line 188
    check-cast v2, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v2, p0}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 190
    :cond_0
    return-object v1
.end method

.method public a(Landroid/support/v7/view/menu/k;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Landroid/support/v7/view/menu/k;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/support/v7/view/menu/k;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/k;->o()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/menu/b;->a(Landroid/support/v7/view/menu/k;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 199
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/view/menu/k;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v2, p3

    .line 201
    check-cast v2, Landroid/support/v7/widget/ActionMenuView;

    .line 202
    .local v2, "menuParent":Landroid/support/v7/widget/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 203
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 204
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    :cond_2
    return-object v0

    .line 199
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "menuParent":Landroid/support/v7/widget/ActionMenuView;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .prologue
    .line 146
    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->r:I

    .line 147
    iput-boolean p2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->v:Z

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->w:Z

    .line 149
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "menu"    # Landroid/support/v7/view/menu/h;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 93
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/b;->a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 97
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Landroid/support/v7/view/a;->a(Landroid/content/Context;)Landroid/support/v7/view/a;

    move-result-object v0

    .line 98
    .local v0, "abp":Landroid/support/v7/view/a;
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->q:Z

    if-nez v4, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/support/v7/view/a;->b()Z

    move-result v4

    iput-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->p:Z

    .line 102
    :cond_0
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->w:Z

    if-nez v4, :cond_1

    .line 103
    invoke-virtual {v0}, Landroid/support/v7/view/a;->c()I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->r:I

    .line 107
    :cond_1
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->u:Z

    if-nez v4, :cond_2

    .line 108
    invoke-virtual {v0}, Landroid/support/v7/view/a;->a()I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->t:I

    .line 111
    :cond_2
    iget v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->r:I

    .line 112
    .local v3, "width":I
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->p:Z

    if-eqz v4, :cond_5

    .line 113
    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v4, :cond_4

    .line 114
    new-instance v4, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->a:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 115
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->o:Z

    if-eqz v4, :cond_3

    .line 116
    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iput-object v7, p0, Landroid/support/v7/widget/ActionMenuPresenter;->n:Landroid/graphics/drawable/Drawable;

    .line 118
    iput-boolean v6, p0, Landroid/support/v7/widget/ActionMenuPresenter;->o:Z

    .line 120
    :cond_3
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 121
    .local v2, "spec":I
    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v4, v2, v2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->measure(II)V

    .line 123
    .end local v2    # "spec":I
    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 128
    :goto_0
    iput v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->s:I

    .line 130
    const/high16 v4, 0x42600000    # 56.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->y:I

    .line 133
    iput-object v7, p0, Landroid/support/v7/widget/ActionMenuPresenter;->A:Landroid/view/View;

    .line 134
    return-void

    .line 125
    :cond_5
    iput-object v7, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 137
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->u:Z

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/view/a;->a(Landroid/content/Context;)Landroid/support/v7/view/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/a;->a()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->t:I

    .line 140
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 143
    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->o:Z

    .line 170
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->n:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 577
    instance-of v3, p1, Landroid/support/v7/widget/ActionMenuPresenter$f;

    if-nez v3, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    .line 581
    check-cast v1, Landroid/support/v7/widget/ActionMenuPresenter$f;

    .line 582
    .local v1, "saved":Landroid/support/v7/widget/ActionMenuPresenter$f;
    iget v3, v1, Landroid/support/v7/widget/ActionMenuPresenter$f;->a:I

    if-lez v3, :cond_0

    .line 583
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/view/menu/h;

    iget v4, v1, Landroid/support/v7/widget/ActionMenuPresenter$f;->a:I

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/h;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 584
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 585
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/u;

    .line 586
    .local v2, "subMenu":Landroid/support/v7/view/menu/u;
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/view/menu/u;)Z

    goto :goto_0
.end method

.method public a(Landroid/support/v7/view/menu/h;Z)V
    .locals 0
    .param p1, "menu"    # Landroid/support/v7/view/menu/h;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 564
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->h()Z

    .line 565
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/b;->a(Landroid/support/v7/view/menu/h;Z)V

    .line 566
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/k;Landroid/support/v7/view/menu/p$a;)V
    .locals 3
    .param p1, "item"    # Landroid/support/v7/view/menu/k;
    .param p2, "itemView"    # Landroid/support/v7/view/menu/p$a;

    .prologue
    .line 211
    const/4 v2, 0x0

    invoke-interface {p2, p1, v2}, Landroid/support/v7/view/menu/p$a;->a(Landroid/support/v7/view/menu/k;I)V

    .line 213
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Landroid/support/v7/view/menu/p;

    check-cast v1, Landroid/support/v7/widget/ActionMenuView;

    .local v1, "menuView":Landroid/support/v7/widget/ActionMenuView;
    move-object v0, p2

    .line 214
    check-cast v0, Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 215
    .local v0, "actionItemView":Landroid/support/v7/view/menu/ActionMenuItemView;
    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/ActionMenuItemView;->setItemInvoker(Landroid/support/v7/view/menu/h$b;)V

    .line 217
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->B:Landroid/support/v7/widget/ActionMenuPresenter$b;

    if-nez v2, :cond_0

    .line 218
    new-instance v2, Landroid/support/v7/widget/ActionMenuPresenter$b;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/ActionMenuPresenter$b;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    iput-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->B:Landroid/support/v7/widget/ActionMenuPresenter$b;

    .line 220
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->B:Landroid/support/v7/widget/ActionMenuPresenter$b;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/ActionMenuItemView;->setPopupCallback(Landroid/support/v7/view/menu/ActionMenuItemView$b;)V

    .line 221
    return-void
.end method

.method public a(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 1
    .param p1, "menuView"    # Landroid/support/v7/widget/ActionMenuView;

    .prologue
    .line 602
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Landroid/support/v7/view/menu/p;

    .line 603
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/view/menu/h;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/support/v7/view/menu/h;)V

    .line 604
    return-void
.end method

.method public a(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 593
    if-eqz p1, :cond_1

    .line 595
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/view/menu/b;->a(Landroid/support/v7/view/menu/u;)Z

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->b(Z)V

    goto :goto_0
.end method

.method public a(ILandroid/support/v7/view/menu/k;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Landroid/support/v7/view/menu/k;

    .prologue
    .line 225
    invoke-virtual {p2}, Landroid/support/v7/view/menu/k;->k()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/u;)Z
    .locals 9
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/u;

    .prologue
    const/4 v6, 0x0

    .line 288
    invoke-virtual {p1}, Landroid/support/v7/view/menu/u;->hasVisibleItems()Z

    move-result v7

    if-nez v7, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v6

    .line 290
    :cond_1
    move-object v5, p1

    .line 291
    .local v5, "topSubMenu":Landroid/support/v7/view/menu/u;
    :goto_1
    invoke-virtual {v5}, Landroid/support/v7/view/menu/u;->t()Landroid/view/Menu;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/view/menu/h;

    if-eq v7, v8, :cond_2

    .line 292
    invoke-virtual {v5}, Landroid/support/v7/view/menu/u;->t()Landroid/view/Menu;

    move-result-object v5

    .end local v5    # "topSubMenu":Landroid/support/v7/view/menu/u;
    check-cast v5, Landroid/support/v7/view/menu/u;

    .restart local v5    # "topSubMenu":Landroid/support/v7/view/menu/u;
    goto :goto_1

    .line 294
    :cond_2
    invoke-virtual {v5}, Landroid/support/v7/view/menu/u;->getItem()Landroid/view/MenuItem;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 295
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p1}, Landroid/support/v7/view/menu/u;->getItem()Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    iput v6, p0, Landroid/support/v7/widget/ActionMenuPresenter;->l:I

    .line 305
    const/4 v4, 0x0

    .line 306
    .local v4, "preserveIconSpacing":Z
    invoke-virtual {p1}, Landroid/support/v7/view/menu/u;->size()I

    move-result v2

    .line 307
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_3

    .line 308
    invoke-virtual {p1, v3}, Landroid/support/v7/view/menu/u;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 309
    .local v1, "childItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 310
    const/4 v4, 0x1

    .line 315
    .end local v1    # "childItem":Landroid/view/MenuItem;
    :cond_3
    new-instance v6, Landroid/support/v7/widget/ActionMenuPresenter$a;

    iget-object v7, p0, Landroid/support/v7/widget/ActionMenuPresenter;->b:Landroid/content/Context;

    invoke-direct {v6, p0, v7, p1, v0}, Landroid/support/v7/widget/ActionMenuPresenter$a;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/view/menu/u;Landroid/view/View;)V

    iput-object v6, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/support/v7/widget/ActionMenuPresenter$a;

    .line 316
    iget-object v6, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/support/v7/widget/ActionMenuPresenter$a;

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/ActionMenuPresenter$a;->a(Z)V

    .line 317
    iget-object v6, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/support/v7/widget/ActionMenuPresenter$a;

    invoke-virtual {v6}, Landroid/support/v7/widget/ActionMenuPresenter$a;->c()V

    .line 319
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/b;->a(Landroid/support/v7/view/menu/u;)Z

    .line 320
    const/4 v6, 0x1

    goto :goto_0

    .line 307
    .restart local v1    # "childItem":Landroid/view/MenuItem;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public a(Landroid/view/ViewGroup;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .prologue
    .line 283
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 284
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/b;->a(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 1
    .param p1, "itemCount"    # I

    .prologue
    .line 157
    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->t:I

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->u:Z

    .line 159
    return-void
.end method

.method public b(Z)V
    .locals 12
    .param p1, "cleared"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 230
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Landroid/support/v7/view/menu/p;

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 231
    .local v5, "menuViewParent":Landroid/view/ViewGroup;
    if-eqz v5, :cond_0

    .line 232
    invoke-static {v5}, Landroid/support/v7/g/a;->a(Landroid/view/ViewGroup;)V

    .line 234
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/b;->b(Z)V

    .line 236
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Landroid/support/v7/view/menu/p;

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    .line 238
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/view/menu/h;

    if-eqz v9, :cond_2

    .line 239
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/view/menu/h;

    invoke-virtual {v9}, Landroid/support/v7/view/menu/h;->l()Ljava/util/ArrayList;

    move-result-object v0

    .line 240
    .local v0, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 241
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 242
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/view/menu/k;

    invoke-virtual {v9}, Landroid/support/v7/view/menu/k;->a()Landroid/support/v4/view/e;

    move-result-object v8

    .line 243
    .local v8, "provider":Landroid/support/v4/view/e;
    if-eqz v8, :cond_1

    .line 244
    invoke-virtual {v8, p0}, Landroid/support/v4/view/e;->a(Landroid/support/v4/view/e$a;)V

    .line 241
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    .end local v0    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v8    # "provider":Landroid/support/v4/view/e;
    :cond_2
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/view/menu/h;

    if-eqz v9, :cond_7

    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/view/menu/h;

    .line 250
    invoke-virtual {v9}, Landroid/support/v7/view/menu/h;->m()Ljava/util/ArrayList;

    move-result-object v6

    .line 252
    .local v6, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    :goto_1
    const/4 v2, 0x0

    .line 253
    .local v2, "hasOverflow":Z
    iget-boolean v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->p:Z

    if-eqz v9, :cond_3

    if-eqz v6, :cond_3

    .line 254
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 255
    .restart local v1    # "count":I
    if-ne v1, v10, :cond_9

    .line 256
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/view/menu/k;

    invoke-virtual {v9}, Landroid/support/v7/view/menu/k;->isActionViewExpanded()Z

    move-result v9

    if-nez v9, :cond_8

    move v2, v10

    .line 262
    .end local v1    # "count":I
    :cond_3
    :goto_2
    if-eqz v2, :cond_b

    .line 263
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v9, :cond_4

    .line 264
    new-instance v9, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v10, p0, Landroid/support/v7/widget/ActionMenuPresenter;->a:Landroid/content/Context;

    invoke-direct {v9, p0, v10}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 266
    :cond_4
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v9}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 267
    .local v7, "parent":Landroid/view/ViewGroup;
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Landroid/support/v7/view/menu/p;

    if-eq v7, v9, :cond_6

    .line 268
    if-eqz v7, :cond_5

    .line 269
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 271
    :cond_5
    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Landroid/support/v7/view/menu/p;

    check-cast v4, Landroid/support/v7/widget/ActionMenuView;

    .line 272
    .local v4, "menuView":Landroid/support/v7/widget/ActionMenuView;
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionMenuView;->c()Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/support/v7/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    .end local v4    # "menuView":Landroid/support/v7/widget/ActionMenuView;
    .end local v7    # "parent":Landroid/view/ViewGroup;
    :cond_6
    :goto_3
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Landroid/support/v7/view/menu/p;

    check-cast v9, Landroid/support/v7/widget/ActionMenuView;

    iget-boolean v10, p0, Landroid/support/v7/widget/ActionMenuPresenter;->p:Z

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 279
    return-void

    .line 250
    .end local v2    # "hasOverflow":Z
    .end local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    .restart local v1    # "count":I
    .restart local v2    # "hasOverflow":Z
    .restart local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    :cond_8
    move v2, v11

    .line 256
    goto :goto_2

    .line 258
    :cond_9
    if-lez v1, :cond_a

    move v2, v10

    :goto_4
    goto :goto_2

    :cond_a
    move v2, v11

    goto :goto_4

    .line 274
    .end local v1    # "count":I
    :cond_b
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v9, :cond_6

    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v9}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    iget-object v10, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Landroid/support/v7/view/menu/p;

    if-ne v9, v10, :cond_6

    .line 275
    iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Landroid/support/v7/view/menu/p;

    check-cast v9, Landroid/view/ViewGroup;

    iget-object v10, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3
.end method

.method public b()Z
    .locals 29

    .prologue
    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/view/menu/h;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/view/menu/h;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/support/v7/view/menu/h;->j()Ljava/util/ArrayList;

    move-result-object v25

    .line 425
    .local v25, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 431
    .local v15, "itemsSize":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->t:I

    move/from16 v17, v0

    .line 432
    .local v17, "maxActions":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->s:I

    move/from16 v26, v0

    .line 433
    .local v26, "widthLimit":I
    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 434
    .local v20, "querySpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Landroid/support/v7/view/menu/p;

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/ViewGroup;

    .line 436
    .local v19, "parent":Landroid/view/ViewGroup;
    const/16 v22, 0x0

    .line 437
    .local v22, "requiredItems":I
    const/16 v21, 0x0

    .line 438
    .local v21, "requestedItems":I
    const/4 v8, 0x0

    .line 439
    .local v8, "firstActionWidth":I
    const/4 v10, 0x0

    .line 440
    .local v10, "hasOverflow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v15, :cond_4

    .line 441
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v7/view/menu/k;

    .line 442
    .local v14, "item":Landroid/support/v7/view/menu/k;
    invoke-virtual {v14}, Landroid/support/v7/view/menu/k;->m()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 443
    add-int/lit8 v22, v22, 0x1

    .line 449
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->x:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    invoke-virtual {v14}, Landroid/support/v7/view/menu/k;->isActionViewExpanded()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 452
    const/16 v17, 0x0

    .line 440
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 427
    .end local v8    # "firstActionWidth":I
    .end local v10    # "hasOverflow":Z
    .end local v11    # "i":I
    .end local v14    # "item":Landroid/support/v7/view/menu/k;
    .end local v15    # "itemsSize":I
    .end local v17    # "maxActions":I
    .end local v19    # "parent":Landroid/view/ViewGroup;
    .end local v20    # "querySpec":I
    .end local v21    # "requestedItems":I
    .end local v22    # "requiredItems":I
    .end local v25    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    .end local v26    # "widthLimit":I
    :cond_1
    const/16 v25, 0x0

    .line 428
    .restart local v25    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    const/4 v15, 0x0

    .restart local v15    # "itemsSize":I
    goto :goto_0

    .line 444
    .restart local v8    # "firstActionWidth":I
    .restart local v10    # "hasOverflow":Z
    .restart local v11    # "i":I
    .restart local v14    # "item":Landroid/support/v7/view/menu/k;
    .restart local v17    # "maxActions":I
    .restart local v19    # "parent":Landroid/view/ViewGroup;
    .restart local v20    # "querySpec":I
    .restart local v21    # "requestedItems":I
    .restart local v22    # "requiredItems":I
    .restart local v26    # "widthLimit":I
    :cond_2
    invoke-virtual {v14}, Landroid/support/v7/view/menu/k;->l()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 445
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 447
    :cond_3
    const/4 v10, 0x1

    goto :goto_2

    .line 457
    .end local v14    # "item":Landroid/support/v7/view/menu/k;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->p:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    if-nez v10, :cond_5

    add-int v27, v22, v21

    move/from16 v0, v27

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    .line 459
    :cond_5
    add-int/lit8 v17, v17, -0x1

    .line 461
    :cond_6
    sub-int v17, v17, v22

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->z:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    .line 464
    .local v23, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->clear()V

    .line 466
    const/4 v4, 0x0

    .line 467
    .local v4, "cellSize":I
    const/4 v7, 0x0

    .line 468
    .local v7, "cellsRemaining":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->v:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    .line 469
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->y:I

    move/from16 v27, v0

    div-int v7, v26, v27

    .line 470
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->y:I

    move/from16 v27, v0

    rem-int v5, v26, v27

    .line 471
    .local v5, "cellSizeRemaining":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->y:I

    move/from16 v27, v0

    div-int v28, v5, v7

    add-int v4, v27, v28

    .line 475
    .end local v5    # "cellSizeRemaining":I
    :cond_7
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v15, :cond_1e

    .line 476
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v7/view/menu/k;

    .line 478
    .restart local v14    # "item":Landroid/support/v7/view/menu/k;
    invoke-virtual {v14}, Landroid/support/v7/view/menu/k;->m()Z

    move-result v27

    if-eqz v27, :cond_c

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->A:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/view/menu/k;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 480
    .local v24, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->A:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_8

    .line 481
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/ActionMenuPresenter;->A:Landroid/view/View;

    .line 483
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->v:Z

    move/from16 v27, v0

    if-eqz v27, :cond_b

    .line 484
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v27

    sub-int v7, v7, v27

    .line 489
    :goto_4
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 490
    .local v18, "measuredWidth":I
    sub-int v26, v26, v18

    .line 491
    if-nez v8, :cond_9

    .line 492
    move/from16 v8, v18

    .line 494
    :cond_9
    invoke-virtual {v14}, Landroid/support/v7/view/menu/k;->getGroupId()I

    move-result v9

    .line 495
    .local v9, "groupId":I
    if-eqz v9, :cond_a

    .line 496
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 498
    :cond_a
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/support/v7/view/menu/k;->d(Z)V

    .line 475
    .end local v9    # "groupId":I
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 487
    .restart local v24    # "v":Landroid/view/View;
    :cond_b
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 499
    .end local v24    # "v":Landroid/view/View;
    :cond_c
    invoke-virtual {v14}, Landroid/support/v7/view/menu/k;->l()Z

    move-result v27

    if-eqz v27, :cond_1d

    .line 502
    invoke-virtual {v14}, Landroid/support/v7/view/menu/k;->getGroupId()I

    move-result v9

    .line 503
    .restart local v9    # "groupId":I
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    .line 504
    .local v12, "inGroup":Z
    if-gtz v17, :cond_d

    if-eqz v12, :cond_15

    :cond_d
    if-lez v26, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->v:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    if-lez v7, :cond_15

    :cond_e
    const/4 v13, 0x1

    .line 507
    .local v13, "isAction":Z
    :goto_6
    if-eqz v13, :cond_12

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->A:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/view/menu/k;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 509
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->A:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_f

    .line 510
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/ActionMenuPresenter;->A:Landroid/view/View;

    .line 512
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->v:Z

    move/from16 v27, v0

    if-eqz v27, :cond_16

    .line 513
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v6

    .line 515
    .local v6, "cells":I
    sub-int/2addr v7, v6

    .line 516
    if-nez v6, :cond_10

    .line 517
    const/4 v13, 0x0

    .line 522
    .end local v6    # "cells":I
    :cond_10
    :goto_7
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 523
    .restart local v18    # "measuredWidth":I
    sub-int v26, v26, v18

    .line 524
    if-nez v8, :cond_11

    .line 525
    move/from16 v8, v18

    .line 528
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->v:Z

    move/from16 v27, v0

    if-eqz v27, :cond_18

    .line 529
    if-ltz v26, :cond_17

    const/16 v27, 0x1

    :goto_8
    and-int v13, v13, v27

    .line 536
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_12
    :goto_9
    if-eqz v13, :cond_1a

    if-eqz v9, :cond_1a

    .line 537
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 551
    :cond_13
    if-eqz v13, :cond_14

    add-int/lit8 v17, v17, -0x1

    .line 553
    :cond_14
    invoke-virtual {v14, v13}, Landroid/support/v7/view/menu/k;->d(Z)V

    goto/16 :goto_5

    .line 504
    .end local v13    # "isAction":Z
    :cond_15
    const/4 v13, 0x0

    goto :goto_6

    .line 520
    .restart local v13    # "isAction":Z
    .restart local v24    # "v":Landroid/view/View;
    :cond_16
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 529
    .restart local v18    # "measuredWidth":I
    :cond_17
    const/16 v27, 0x0

    goto :goto_8

    .line 532
    :cond_18
    add-int v27, v26, v8

    if-lez v27, :cond_19

    const/16 v27, 0x1

    :goto_a
    and-int v13, v13, v27

    goto :goto_9

    :cond_19
    const/16 v27, 0x0

    goto :goto_a

    .line 538
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_1a
    if-eqz v12, :cond_13

    .line 540
    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 541
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_b
    move/from16 v0, v16

    if-ge v0, v11, :cond_13

    .line 542
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/k;

    .line 543
    .local v3, "areYouMyGroupie":Landroid/support/v7/view/menu/k;
    invoke-virtual {v3}, Landroid/support/v7/view/menu/k;->getGroupId()I

    move-result v27

    move/from16 v0, v27

    if-ne v0, v9, :cond_1c

    .line 545
    invoke-virtual {v3}, Landroid/support/v7/view/menu/k;->k()Z

    move-result v27

    if-eqz v27, :cond_1b

    add-int/lit8 v17, v17, 0x1

    .line 546
    :cond_1b
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/support/v7/view/menu/k;->d(Z)V

    .line 541
    :cond_1c
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 556
    .end local v3    # "areYouMyGroupie":Landroid/support/v7/view/menu/k;
    .end local v9    # "groupId":I
    .end local v12    # "inGroup":Z
    .end local v13    # "isAction":Z
    .end local v16    # "j":I
    :cond_1d
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/support/v7/view/menu/k;->d(Z)V

    goto/16 :goto_5

    .line 559
    .end local v14    # "item":Landroid/support/v7/view/menu/k;
    :cond_1e
    const/16 v27, 0x1

    return v27
.end method

.method public c(Z)V
    .locals 1
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->p:Z

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->q:Z

    .line 154
    return-void
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    .line 177
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->o:Z

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->n:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->x:Z

    .line 163
    return-void
.end method

.method public e()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 343
    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->p:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->j()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/view/menu/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Landroid/support/v7/view/menu/p;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$c;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/view/menu/h;

    .line 344
    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->m()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$d;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->b:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/view/menu/h;

    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/ActionMenuPresenter$d;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;Z)V

    .line 346
    .local v0, "popup":Landroid/support/v7/widget/ActionMenuPresenter$d;
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter$c;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$c;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$d;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$c;

    .line 348
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Landroid/support/v7/view/menu/p;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$c;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 352
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/support/v7/view/menu/b;->a(Landroid/support/v7/view/menu/u;)Z

    .line 356
    .end local v0    # "popup":Landroid/support/v7/widget/ActionMenuPresenter$d;
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public f()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 570
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$f;

    invoke-direct {v0}, Landroid/support/v7/widget/ActionMenuPresenter$f;-><init>()V

    .line 571
    .local v0, "state":Landroid/support/v7/widget/ActionMenuPresenter$f;
    iget v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->l:I

    iput v1, v0, Landroid/support/v7/widget/ActionMenuPresenter$f;->a:I

    .line 572
    return-object v0
.end method

.method public g()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 365
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Landroid/support/v7/view/menu/p;

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Landroid/support/v7/view/menu/p;

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$c;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 367
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$c;

    move v1, v2

    .line 376
    :goto_0
    return v1

    .line 371
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->h:Landroid/support/v7/widget/ActionMenuPresenter$d;

    .line 372
    .local v0, "popup":Landroid/support/v7/view/menu/n;
    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {v0}, Landroid/support/v7/view/menu/n;->a()V

    move v1, v2

    .line 374
    goto :goto_0

    .line 376
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 384
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->g()Z

    move-result v0

    .line 385
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->i()Z

    move-result v1

    or-int/2addr v0, v1

    .line 386
    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/support/v7/widget/ActionMenuPresenter$a;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/support/v7/widget/ActionMenuPresenter$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$a;->a()V

    .line 397
    const/4 v0, 0x1

    .line 399
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->h:Landroid/support/v7/widget/ActionMenuPresenter$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->h:Landroid/support/v7/widget/ActionMenuPresenter$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->p:Z

    return v0
.end method

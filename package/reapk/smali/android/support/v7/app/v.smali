.class Landroid/support/v7/app/v;
.super Landroid/support/v7/app/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/v$b;,
        Landroid/support/v7/app/v$c;,
        Landroid/support/v7/app/v$a;,
        Landroid/support/v7/app/v$d;
    }
.end annotation


# instance fields
.field i:Landroid/support/v7/widget/p;

.field j:Z

.field k:Landroid/view/Window$Callback;

.field private l:Z

.field private m:Z

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/app/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/support/v7/view/menu/f;

.field private final p:Ljava/lang/Runnable;

.field private final q:Landroid/support/v7/widget/Toolbar$c;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v7/app/a;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/v;->n:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Landroid/support/v7/app/v$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/v$1;-><init>(Landroid/support/v7/app/v;)V

    iput-object v0, p0, Landroid/support/v7/app/v;->p:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Landroid/support/v7/app/v$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/v$2;-><init>(Landroid/support/v7/app/v;)V

    iput-object v0, p0, Landroid/support/v7/app/v;->q:Landroid/support/v7/widget/Toolbar$c;

    .line 74
    new-instance v0, Landroid/support/v7/widget/au;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/au;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    .line 75
    new-instance v0, Landroid/support/v7/app/v$d;

    invoke-direct {v0, p0, p3}, Landroid/support/v7/app/v$d;-><init>(Landroid/support/v7/app/v;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/view/Window$Callback;

    .line 76
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/app/v;->k:Landroid/view/Window$Callback;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/p;->a(Landroid/view/Window$Callback;)V

    .line 77
    iget-object v0, p0, Landroid/support/v7/app/v;->q:Landroid/support/v7/widget/Toolbar$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$c;)V

    .line 78
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0, p2}, Landroid/support/v7/widget/p;->a(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method private B()Landroid/view/Menu;
    .locals 3

    .prologue
    .line 590
    iget-boolean v0, p0, Landroid/support/v7/app/v;->l:Z

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    new-instance v1, Landroid/support/v7/app/v$a;

    invoke-direct {v1, p0}, Landroid/support/v7/app/v$a;-><init>(Landroid/support/v7/app/v;)V

    new-instance v2, Landroid/support/v7/app/v$b;

    invoke-direct {v2, p0}, Landroid/support/v7/app/v$b;-><init>(Landroid/support/v7/app/v;)V

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/p;->a(Landroid/support/v7/view/menu/o$a;Landroid/support/v7/view/menu/h$a;)V

    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/v;->l:Z

    .line 595
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->A()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x1

    .line 528
    iget-object v5, p0, Landroid/support/v7/app/v;->o:Landroid/support/v7/view/menu/f;

    if-nez v5, :cond_1

    instance-of v5, p1, Landroid/support/v7/view/menu/h;

    if-eqz v5, :cond_1

    move-object v2, p1

    .line 529
    check-cast v2, Landroid/support/v7/view/menu/h;

    .line 531
    .local v2, "mb":Landroid/support/v7/view/menu/h;
    iget-object v5, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v5}, Landroid/support/v7/widget/p;->b()Landroid/content/Context;

    move-result-object v0

    .line 532
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 533
    .local v3, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 534
    .local v4, "widgetTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 537
    sget v5, Landroid/support/v7/a/b$b;->actionBarPopupTheme:I

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 538
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_0

    .line 539
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 543
    :cond_0
    sget v5, Landroid/support/v7/a/b$b;->panelMenuListTheme:I

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 544
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_2

    .line 545
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 550
    :goto_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const/4 v5, 0x0

    invoke-direct {v1, v0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 551
    .end local v0    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 554
    new-instance v5, Landroid/support/v7/view/menu/f;

    sget v6, Landroid/support/v7/a/b$i;->abc_list_menu_item_layout:I

    invoke-direct {v5, v1, v6}, Landroid/support/v7/view/menu/f;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Landroid/support/v7/app/v;->o:Landroid/support/v7/view/menu/f;

    .line 555
    iget-object v5, p0, Landroid/support/v7/app/v;->o:Landroid/support/v7/view/menu/f;

    new-instance v6, Landroid/support/v7/app/v$c;

    invoke-direct {v6, p0}, Landroid/support/v7/app/v$c;-><init>(Landroid/support/v7/app/v;)V

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/f;->a(Landroid/support/v7/view/menu/o$a;)V

    .line 556
    iget-object v5, p0, Landroid/support/v7/app/v;->o:Landroid/support/v7/view/menu/f;

    invoke-virtual {v2, v5}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/o;)V

    .line 558
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "mb":Landroid/support/v7/view/menu/h;
    .end local v3    # "outValue":Landroid/util/TypedValue;
    .end local v4    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_1
    return-void

    .line 547
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "mb":Landroid/support/v7/view/menu/h;
    .restart local v3    # "outValue":Landroid/util/TypedValue;
    .restart local v4    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_2
    sget v5, Landroid/support/v7/a/b$k;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method


# virtual methods
.method A()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 447
    invoke-direct {p0}, Landroid/support/v7/app/v;->B()Landroid/view/Menu;

    move-result-object v1

    .line 448
    .local v1, "menu":Landroid/view/Menu;
    instance-of v2, v1, Landroid/support/v7/view/menu/h;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/support/v7/view/menu/h;

    move-object v0, v2

    .line 449
    .local v0, "mb":Landroid/support/v7/view/menu/h;
    :cond_0
    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->h()V

    .line 453
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 454
    iget-object v2, p0, Landroid/support/v7/app/v;->k:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/app/v;->k:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 455
    invoke-interface {v2, v3, v4, v1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 456
    :cond_2
    invoke-interface {v1}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    :cond_3
    if-eqz v0, :cond_4

    .line 460
    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->i()V

    .line 463
    :cond_4
    return-void

    .line 459
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_5

    .line 460
    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->i()V

    :cond_5
    throw v2
.end method

.method public a()I
    .locals 1

    .prologue
    .line 213
    const/4 v0, -0x1

    return v0
.end method

.method a(Landroid/view/Menu;)Landroid/view/View;
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 515
    invoke-direct {p0, p1}, Landroid/support/v7/app/v;->b(Landroid/view/Menu;)V

    .line 517
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/v;->o:Landroid/support/v7/view/menu/f;

    if-nez v1, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-object v0

    .line 521
    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/v;->o:Landroid/support/v7/view/menu/f;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/f;->a()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 522
    iget-object v0, p0, Landroid/support/v7/app/v;->o:Landroid/support/v7/view/menu/f;

    iget-object v1, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v1}, Landroid/support/v7/widget/p;->a()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/f;->a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/p;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public a(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 141
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->a()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/view/ap;->m(Landroid/view/View;F)V

    .line 142
    return-void
.end method

.method public a(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 100
    iget-object v1, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v1}, Landroid/support/v7/widget/p;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 101
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v1}, Landroid/support/v7/widget/p;->a()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/v;->a(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method public a(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 263
    iget-object v1, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v1}, Landroid/support/v7/widget/p;->r()I

    move-result v0

    .line 264
    .local v0, "currentOptions":I
    iget-object v1, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/support/v7/widget/p;->c(I)V

    .line 265
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/support/v7/app/a;->a(Landroid/content/res/Configuration;)V

    .line 192
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/p;->a(Landroid/graphics/drawable/Drawable;)V

    .line 112
    return-void
.end method

.method public a(Landroid/support/v7/app/a$d;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v7/app/a$d;

    .prologue
    .line 495
    iget-object v0, p0, Landroid/support/v7/app/v;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    return-void
.end method

.method public a(Landroid/support/v7/app/a$f;)V
    .locals 2
    .param p1, "tab"    # Landroid/support/v7/app/a$f;

    .prologue
    .line 338
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/support/v7/app/a$f;I)V
    .locals 2
    .param p1, "tab"    # Landroid/support/v7/app/a$f;
    .param p2, "position"    # I

    .prologue
    .line 350
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/support/v7/app/a$f;IZ)V
    .locals 2
    .param p1, "tab"    # Landroid/support/v7/app/a$f;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 356
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/support/v7/app/a$f;Z)V
    .locals 2
    .param p1, "tab"    # Landroid/support/v7/app/a$f;
    .param p2, "setSelected"    # Z

    .prologue
    .line 344
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x2

    .line 87
    new-instance v0, Landroid/support/v7/app/a$b;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/app/a$b;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/v;->a(Landroid/view/View;Landroid/support/v7/app/a$b;)V

    .line 88
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v7/app/a$b;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/support/v7/app/a$b;

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/p;->a(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method public a(Landroid/widget/SpinnerAdapter;Landroid/support/v7/app/a$e;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Landroid/support/v7/app/a$e;

    .prologue
    .line 196
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    new-instance v1, Landroid/support/v7/app/o;

    invoke-direct {v1, p2}, Landroid/support/v7/app/o;-><init>(Landroid/support/v7/app/a$e;)V

    invoke-interface {v0, p1, v1}, Landroid/support/v7/widget/p;->a(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 197
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 223
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/p;->b(Ljava/lang/CharSequence;)V

    .line 224
    return-void
.end method

.method public a(Z)V
    .locals 2
    .param p1, "useLogo"    # Z

    .prologue
    const/4 v1, 0x1

    .line 269
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/v;->a(II)V

    .line 270
    return-void

    .line 269
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 475
    invoke-direct {p0}, Landroid/support/v7/app/v;->B()Landroid/view/Menu;

    move-result-object v1

    .line 476
    .local v1, "menu":Landroid/view/Menu;
    if-eqz v1, :cond_0

    .line 477
    if-eqz p2, :cond_1

    .line 478
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    .line 477
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 479
    .local v0, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    if-eq v2, v3, :cond_2

    move v2, v3

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 480
    invoke-interface {v1, p1, p2, v4}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 485
    .end local v0    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_0
    return v3

    .line 478
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .restart local v0    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_2
    move v2, v4

    .line 479
    goto :goto_1
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 467
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 468
    invoke-virtual {p0}, Landroid/support/v7/app/v;->u()Z

    .line 470
    :cond_0
    return v1
.end method

.method public b()I
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 106
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/p;->a(I)V

    .line 107
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/p;->b(Landroid/graphics/drawable/Drawable;)V

    .line 122
    return-void
.end method

.method public b(Landroid/support/v7/app/a$d;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v7/app/a$d;

    .prologue
    .line 499
    iget-object v0, p0, Landroid/support/v7/app/v;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 500
    return-void
.end method

.method public b(Landroid/support/v7/app/a$f;)V
    .locals 2
    .param p1, "tab"    # Landroid/support/v7/app/a$f;

    .prologue
    .line 362
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 248
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/p;->c(Ljava/lang/CharSequence;)V

    .line 249
    return-void
.end method

.method public b(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .prologue
    const/4 v1, 0x2

    .line 274
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/v;->a(II)V

    .line 275
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Landroid/view/View;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->x()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/p;->b(I)V

    .line 117
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 294
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/p;->e(Landroid/graphics/drawable/Drawable;)V

    .line 295
    return-void
.end method

.method public c(Landroid/support/v7/app/a$f;)V
    .locals 2
    .param p1, "tab"    # Landroid/support/v7/app/a$f;

    .prologue
    .line 380
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 171
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/p;->d(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method public c(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    .line 279
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/v;->a(II)V

    .line 280
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->e()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public d(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 201
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->u()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/p;->e(I)V

    .line 209
    return-void

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 127
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 233
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/p;->a(Ljava/lang/CharSequence;)V

    .line 234
    return-void
.end method

.method public d(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v1, 0x8

    .line 284
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/v;->a(II)V

    .line 285
    return-void

    .line 284
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->f()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 228
    iget-object v1, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Landroid/support/v7/widget/p;->b(Ljava/lang/CharSequence;)V

    .line 229
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 132
    return-void
.end method

.method public e(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .prologue
    const/16 v1, 0x10

    .line 289
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/v;->a(II)V

    .line 290
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public f(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 253
    iget-object v1, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Landroid/support/v7/widget/p;->c(Ljava/lang/CharSequence;)V

    .line 254
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 161
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/p;->c(Landroid/graphics/drawable/Drawable;)V

    .line 162
    return-void
.end method

.method public f(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 137
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->r()I

    move-result v0

    return v0
.end method

.method public g(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    .line 258
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/v;->a(II)V

    .line 259
    return-void
.end method

.method public h()Landroid/support/v7/app/a$f;
    .locals 2

    .prologue
    .line 332
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 319
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tabs not supported in this configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/p;->d(I)V

    .line 323
    return-void
.end method

.method public h(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 177
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 374
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 368
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 187
    return-void
.end method

.method public j()Landroid/support/v7/app/a$f;
    .locals 2

    .prologue
    .line 386
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j(I)Landroid/support/v7/app/a$f;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 392
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 503
    iget-boolean v2, p0, Landroid/support/v7/app/v;->m:Z

    if-ne p1, v2, :cond_1

    .line 512
    :cond_0
    return-void

    .line 506
    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/app/v;->m:Z

    .line 508
    iget-object v2, p0, Landroid/support/v7/app/v;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 509
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 510
    iget-object v2, p0, Landroid/support/v7/app/v;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/a$d;

    invoke-interface {v2, p1}, Landroid/support/v7/app/a$d;->a(Z)V

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public k(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/p;->g(I)V

    .line 167
    return-void
.end method

.method public l()I
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->y()I

    move-result v0

    return v0
.end method

.method public l(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/p;->h(I)V

    .line 182
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v7/widget/p;->j(I)V

    .line 411
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/support/v7/widget/p;->j(I)V

    .line 418
    return-void
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->z()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Landroid/content/Context;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Landroid/support/v7/app/a;->q()Z

    move-result v0

    return v0
.end method

.method public t()F
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->a()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ap;->K(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->n()Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/v;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 433
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/v;->p:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ap;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 434
    const/4 v0, 0x1

    return v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->d()V

    .line 441
    const/4 v0, 0x1

    .line 443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()Z
    .locals 2

    .prologue
    .line 238
    iget-object v1, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v1}, Landroid/support/v7/widget/p;->a()Landroid/view/ViewGroup;

    move-result-object v0

    .line 239
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 241
    const/4 v1, 0x1

    .line 243
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method y()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/v;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 492
    return-void
.end method

.method public z()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/v7/app/v;->k:Landroid/view/Window$Callback;

    return-object v0
.end method
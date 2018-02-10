.class public final Landroid/support/v7/app/AppCompatDelegateImplV9$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Landroid/view/ViewGroup;

.field h:Landroid/view/View;

.field i:Landroid/view/View;

.field j:Landroid/support/v7/view/menu/h;

.field k:Landroid/support/v7/view/menu/f;

.field l:Landroid/content/Context;

.field m:Z

.field n:Z

.field o:Z

.field public p:Z

.field q:Z

.field r:Z

.field s:Z

.field t:Landroid/os/Bundle;

.field u:Landroid/os/Bundle;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 1953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1954
    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->a:I

    .line 1956
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->q:Z

    .line 1957
    return-void
.end method


# virtual methods
.method a(Landroid/support/v7/view/menu/o$a;)Landroid/support/v7/view/menu/p;
    .locals 4
    .param p1, "cb"    # Landroid/support/v7/view/menu/o$a;

    .prologue
    .line 2021
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->j:Landroid/support/v7/view/menu/h;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 2032
    :goto_0
    return-object v0

    .line 2023
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->k:Landroid/support/v7/view/menu/f;

    if-nez v1, :cond_1

    .line 2024
    new-instance v1, Landroid/support/v7/view/menu/f;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->l:Landroid/content/Context;

    sget v3, Landroid/support/v7/a/b$i;->abc_list_menu_item_layout:I

    invoke-direct {v1, v2, v3}, Landroid/support/v7/view/menu/f;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->k:Landroid/support/v7/view/menu/f;

    .line 2026
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->k:Landroid/support/v7/view/menu/f;

    invoke-virtual {v1, p1}, Landroid/support/v7/view/menu/f;->a(Landroid/support/v7/view/menu/o$a;)V

    .line 2027
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->j:Landroid/support/v7/view/menu/h;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->k:Landroid/support/v7/view/menu/f;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/o;)V

    .line 2030
    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->k:Landroid/support/v7/view/menu/f;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/f;->a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/p;

    move-result-object v0

    .line 2032
    .local v0, "result":Landroid/support/v7/view/menu/p;
    goto :goto_0
.end method

.method a(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1977
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1978
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1979
    .local v3, "widgetTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1982
    sget v4, Landroid/support/v7/a/b$b;->actionBarPopupTheme:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1983
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_0

    .line 1984
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1988
    :cond_0
    sget v4, Landroid/support/v7/a/b$b;->panelMenuListTheme:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1989
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_1

    .line 1990
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1995
    :goto_0
    new-instance v1, Landroid/support/v7/view/d;

    invoke-direct {v1, p1, v6}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    .line 1996
    .end local p1    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1998
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->l:Landroid/content/Context;

    .line 2000
    sget-object v4, Landroid/support/v7/a/b$l;->AppCompatTheme:[I

    invoke-virtual {v1, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2001
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Landroid/support/v7/a/b$l;->AppCompatTheme_panelBackground:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->b:I

    .line 2003
    sget v4, Landroid/support/v7/a/b$l;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->f:I

    .line 2005
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2006
    return-void

    .line 1992
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "context":Landroid/content/Context;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    sget v4, Landroid/support/v7/a/b$k;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method

.method a(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v2, 0x0

    .line 2049
    move-object v0, p1

    check-cast v0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;

    .line 2050
    .local v0, "savedState":Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;
    iget v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->a:I

    iput v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->a:I

    .line 2051
    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->b:Z

    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->s:Z

    .line 2052
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->c:Landroid/os/Bundle;

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->t:Landroid/os/Bundle;

    .line 2054
    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->h:Landroid/view/View;

    .line 2055
    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->g:Landroid/view/ViewGroup;

    .line 2056
    return-void
.end method

.method a(Landroid/support/v7/view/menu/h;)V
    .locals 2
    .param p1, "menu"    # Landroid/support/v7/view/menu/h;

    .prologue
    .line 2009
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->j:Landroid/support/v7/view/menu/h;

    if-ne p1, v0, :cond_1

    .line 2018
    :cond_0
    :goto_0
    return-void

    .line 2011
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->j:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_2

    .line 2012
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->j:Landroid/support/v7/view/menu/h;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->k:Landroid/support/v7/view/menu/f;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->b(Landroid/support/v7/view/menu/o;)V

    .line 2014
    :cond_2
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->j:Landroid/support/v7/view/menu/h;

    .line 2015
    if-eqz p1, :cond_0

    .line 2016
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->k:Landroid/support/v7/view/menu/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->k:Landroid/support/v7/view/menu/f;

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/o;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1960
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->h:Landroid/view/View;

    if-nez v2, :cond_1

    move v0, v1

    .line 1963
    :cond_0
    :goto_0
    return v0

    .line 1961
    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->i:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1963
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->k:Landroid/support/v7/view/menu/f;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/f;->a()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 1970
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->j:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_0

    .line 1971
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->j:Landroid/support/v7/view/menu/h;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->k:Landroid/support/v7/view/menu/f;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->b(Landroid/support/v7/view/menu/o;)V

    .line 1973
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->k:Landroid/support/v7/view/menu/f;

    .line 1974
    return-void
.end method

.method c()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 2036
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;-><init>()V

    .line 2037
    .local v0, "savedState":Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;
    iget v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->a:I

    iput v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->a:I

    .line 2038
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->o:Z

    iput-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->b:Z

    .line 2040
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->j:Landroid/support/v7/view/menu/h;

    if-eqz v1, :cond_0

    .line 2041
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->c:Landroid/os/Bundle;

    .line 2042
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->j:Landroid/support/v7/view/menu/h;

    iget-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->c:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/h;->a(Landroid/os/Bundle;)V

    .line 2045
    :cond_0
    return-object v0
.end method

.method d()V
    .locals 2

    .prologue
    .line 2059
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->j:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->t:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2060
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->j:Landroid/support/v7/view/menu/h;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->t:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->b(Landroid/os/Bundle;)V

    .line 2061
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->t:Landroid/os/Bundle;

    .line 2063
    :cond_0
    return-void
.end method

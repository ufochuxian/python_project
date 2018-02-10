.class public Landroid/support/v7/view/menu/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/j;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    a = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final a:I = 0x30


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/support/v7/view/menu/h;

.field private final d:Z

.field private final e:I

.field private final f:I

.field private g:Landroid/view/View;

.field private h:I

.field private i:Z

.field private j:Landroid/support/v7/view/menu/o$a;

.field private k:Landroid/support/v7/view/menu/m;

.field private l:Landroid/widget/PopupWindow$OnDismissListener;

.field private final m:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "menu"    # Landroid/support/v7/view/menu/h;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 66
    const/4 v3, 0x0

    sget v5, Landroid/support/v7/a/b$b;->popupMenuStyle:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/n;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;ZII)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "menu"    # Landroid/support/v7/view/menu/h;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p3, "anchorView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 71
    sget v5, Landroid/support/v7/a/b$b;->popupMenuStyle:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/n;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;ZII)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;ZI)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "menu"    # Landroid/support/v7/view/menu/h;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p3, "anchorView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I
        .annotation build Landroid/support/annotation/f;
        .end annotation
    .end param

    .prologue
    .line 77
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/n;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;ZII)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;ZII)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "menu"    # Landroid/support/v7/view/menu/h;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p3, "anchorView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I
        .annotation build Landroid/support/annotation/f;
        .end annotation
    .end param
    .param p6, "popupStyleRes"    # I
        .annotation build Landroid/support/annotation/aj;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const v0, 0x800003

    iput v0, p0, Landroid/support/v7/view/menu/n;->h:I

    .line 334
    new-instance v0, Landroid/support/v7/view/menu/n$1;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/n$1;-><init>(Landroid/support/v7/view/menu/n;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/n;->m:Landroid/widget/PopupWindow$OnDismissListener;

    .line 83
    iput-object p1, p0, Landroid/support/v7/view/menu/n;->b:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Landroid/support/v7/view/menu/n;->c:Landroid/support/v7/view/menu/h;

    .line 85
    iput-object p3, p0, Landroid/support/v7/view/menu/n;->g:Landroid/view/View;

    .line 86
    iput-boolean p4, p0, Landroid/support/v7/view/menu/n;->d:Z

    .line 87
    iput p5, p0, Landroid/support/v7/view/menu/n;->e:I

    .line 88
    iput p6, p0, Landroid/support/v7/view/menu/n;->f:I

    .line 89
    return-void
.end method

.method private a(IIZZ)V
    .locals 9
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I
    .param p3, "useOffsets"    # Z
    .param p4, "showTitle"    # Z

    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/support/v7/view/menu/n;->d()Landroid/support/v7/view/menu/m;

    move-result-object v4

    .line 264
    .local v4, "popup":Landroid/support/v7/view/menu/m;
    invoke-virtual {v4, p4}, Landroid/support/v7/view/menu/m;->c(Z)V

    .line 266
    if-eqz p3, :cond_1

    .line 270
    iget v5, p0, Landroid/support/v7/view/menu/n;->h:I

    iget-object v6, p0, Landroid/support/v7/view/menu/n;->g:Landroid/view/View;

    .line 271
    invoke-static {v6}, Landroid/support/v4/view/ap;->k(Landroid/view/View;)I

    move-result v6

    .line 270
    invoke-static {v5, v6}, Landroid/support/v4/view/h;->a(II)I

    move-result v5

    and-int/lit8 v3, v5, 0x7

    .line 272
    .local v3, "hgrav":I
    const/4 v5, 0x5

    if-ne v3, v5, :cond_0

    .line 273
    iget-object v5, p0, Landroid/support/v7/view/menu/n;->g:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr p1, v5

    .line 276
    :cond_0
    invoke-virtual {v4, p1}, Landroid/support/v7/view/menu/m;->b(I)V

    .line 277
    invoke-virtual {v4, p2}, Landroid/support/v7/view/menu/m;->c(I)V

    .line 283
    iget-object v5, p0, Landroid/support/v7/view/menu/n;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 284
    .local v0, "density":F
    const/high16 v5, 0x42400000    # 48.0f

    mul-float/2addr v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v2, v5

    .line 285
    .local v2, "halfSize":I
    new-instance v1, Landroid/graphics/Rect;

    sub-int v5, p1, v2

    sub-int v6, p2, v2

    add-int v7, p1, v2

    add-int v8, p2, v2

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 287
    .local v1, "epicenter":Landroid/graphics/Rect;
    invoke-virtual {v4, v1}, Landroid/support/v7/view/menu/m;->a(Landroid/graphics/Rect;)V

    .line 290
    .end local v0    # "density":F
    .end local v1    # "epicenter":Landroid/graphics/Rect;
    .end local v2    # "halfSize":I
    .end local v3    # "hgrav":I
    :cond_1
    invoke-virtual {v4}, Landroid/support/v7/view/menu/m;->a()V

    .line 291
    return-void
.end method

.method private h()Landroid/support/v7/view/menu/m;
    .locals 13
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 222
    iget-object v1, p0, Landroid/support/v7/view/menu/n;->b:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 224
    .local v12, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 225
    .local v7, "display":Landroid/view/Display;
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 227
    .local v8, "displaySize":Landroid/graphics/Point;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 228
    invoke-virtual {v7, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 235
    :goto_0
    iget v1, v8, Landroid/graphics/Point;->x:I

    iget v2, v8, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 236
    .local v11, "smallestWidth":I
    iget-object v1, p0, Landroid/support/v7/view/menu/n;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/a/b$e;->abc_cascading_menus_min_smallest_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 238
    .local v10, "minSmallestWidthCascading":I
    if-lt v11, v10, :cond_2

    const/4 v9, 0x1

    .line 241
    .local v9, "enableCascadingSubmenus":Z
    :goto_1
    if-eqz v9, :cond_3

    .line 242
    new-instance v0, Landroid/support/v7/view/menu/e;

    iget-object v1, p0, Landroid/support/v7/view/menu/n;->b:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/view/menu/n;->g:Landroid/view/View;

    iget v3, p0, Landroid/support/v7/view/menu/n;->e:I

    iget v4, p0, Landroid/support/v7/view/menu/n;->f:I

    iget-boolean v5, p0, Landroid/support/v7/view/menu/n;->d:Z

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/e;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    .line 250
    .local v0, "popup":Landroid/support/v7/view/menu/m;
    :goto_2
    iget-object v1, p0, Landroid/support/v7/view/menu/n;->c:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/m;->a(Landroid/support/v7/view/menu/h;)V

    .line 251
    iget-object v1, p0, Landroid/support/v7/view/menu/n;->m:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/m;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 254
    iget-object v1, p0, Landroid/support/v7/view/menu/n;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/m;->a(Landroid/view/View;)V

    .line 255
    iget-object v1, p0, Landroid/support/v7/view/menu/n;->j:Landroid/support/v7/view/menu/o$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/m;->a(Landroid/support/v7/view/menu/o$a;)V

    .line 256
    iget-boolean v1, p0, Landroid/support/v7/view/menu/n;->i:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/m;->a(Z)V

    .line 257
    iget v1, p0, Landroid/support/v7/view/menu/n;->h:I

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/m;->a(I)V

    .line 259
    return-object v0

    .line 229
    .end local v0    # "popup":Landroid/support/v7/view/menu/m;
    .end local v9    # "enableCascadingSubmenus":Z
    .end local v10    # "minSmallestWidthCascading":I
    .end local v11    # "smallestWidth":I
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_1

    .line 230
    invoke-virtual {v7, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 238
    .restart local v10    # "minSmallestWidthCascading":I
    .restart local v11    # "smallestWidth":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 245
    .restart local v9    # "enableCascadingSubmenus":Z
    :cond_3
    new-instance v0, Landroid/support/v7/view/menu/t;

    iget-object v1, p0, Landroid/support/v7/view/menu/n;->b:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/view/menu/n;->c:Landroid/support/v7/view/menu/h;

    iget-object v3, p0, Landroid/support/v7/view/menu/n;->g:Landroid/view/View;

    iget v4, p0, Landroid/support/v7/view/menu/n;->e:I

    iget v5, p0, Landroid/support/v7/view/menu/n;->f:I

    iget-boolean v6, p0, Landroid/support/v7/view/menu/n;->d:Z

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/t;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;IIZ)V

    .restart local v0    # "popup":Landroid/support/v7/view/menu/m;
    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/support/v7/view/menu/n;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Landroid/support/v7/view/menu/n;->k:Landroid/support/v7/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/m;->d()V

    .line 301
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 130
    iput p1, p0, Landroid/support/v7/view/menu/n;->h:I

    .line 131
    return-void
.end method

.method public a(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 147
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/view/menu/n;->b(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/o$a;)V
    .locals 1
    .param p1, "cb"    # Landroid/support/v7/view/menu/o$a;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 325
    iput-object p1, p0, Landroid/support/v7/view/menu/n;->j:Landroid/support/v7/view/menu/o$a;

    .line 326
    iget-object v0, p0, Landroid/support/v7/view/menu/n;->k:Landroid/support/v7/view/menu/m;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Landroid/support/v7/view/menu/n;->k:Landroid/support/v7/view/menu/m;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/m;->a(Landroid/support/v7/view/menu/o$a;)V

    .line 329
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 103
    iput-object p1, p0, Landroid/support/v7/view/menu/n;->g:Landroid/view/View;

    .line 104
    return-void
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 92
    iput-object p1, p0, Landroid/support/v7/view/menu/n;->l:Landroid/widget/PopupWindow$OnDismissListener;

    .line 93
    return-void
.end method

.method public a(Z)V
    .locals 1
    .param p1, "forceShowIcon"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Landroid/support/v7/view/menu/n;->i:Z

    .line 117
    iget-object v0, p0, Landroid/support/v7/view/menu/n;->k:Landroid/support/v7/view/menu/m;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroid/support/v7/view/menu/n;->k:Landroid/support/v7/view/menu/m;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/m;->a(Z)V

    .line 120
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Landroid/support/v7/view/menu/n;->h:I

    return v0
.end method

.method public b(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x1

    .line 203
    invoke-virtual {p0}, Landroid/support/v7/view/menu/n;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    :goto_0
    return v0

    .line 207
    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/menu/n;->g:Landroid/view/View;

    if-nez v1, :cond_1

    .line 208
    const/4 v0, 0x0

    goto :goto_0

    .line 211
    :cond_1
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/support/v7/view/menu/n;->a(IIZZ)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/support/v7/view/menu/n;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    return-void
.end method

.method public d()Landroid/support/v7/view/menu/m;
    .locals 1
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/v7/view/menu/n;->k:Landroid/support/v7/view/menu/m;

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0}, Landroid/support/v7/view/menu/n;->h()Landroid/support/v7/view/menu/m;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/n;->k:Landroid/support/v7/view/menu/m;

    .line 157
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/n;->k:Landroid/support/v7/view/menu/m;

    return-object v0
.end method

.method public e()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 167
    invoke-virtual {p0}, Landroid/support/v7/view/menu/n;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    :goto_0
    return v0

    .line 171
    :cond_0
    iget-object v2, p0, Landroid/support/v7/view/menu/n;->g:Landroid/view/View;

    if-nez v2, :cond_1

    move v0, v1

    .line 172
    goto :goto_0

    .line 175
    :cond_1
    invoke-direct {p0, v1, v1, v1, v1}, Landroid/support/v7/view/menu/n;->a(IIZZ)V

    goto :goto_0
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/n;->k:Landroid/support/v7/view/menu/m;

    .line 314
    iget-object v0, p0, Landroid/support/v7/view/menu/n;->l:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Landroid/support/v7/view/menu/n;->l:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 317
    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Landroid/support/v7/view/menu/n;->k:Landroid/support/v7/view/menu/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/n;->k:Landroid/support/v7/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

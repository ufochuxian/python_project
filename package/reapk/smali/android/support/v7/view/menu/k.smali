.class public final Landroid/support/v7/view/menu/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/f/a/b;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    a = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final A:I = 0x4

.field private static final B:I = 0x8

.field private static final C:I = 0x10

.field private static final D:I = 0x20

.field private static K:Ljava/lang/String; = null

.field private static L:Ljava/lang/String; = null

.field private static M:Ljava/lang/String; = null

.field private static N:Ljava/lang/String; = null

.field static final g:I = 0x0

.field private static final h:Ljava/lang/String; = "MenuItemImpl"

.field private static final i:I = 0x3

.field private static final y:I = 0x1

.field private static final z:I = 0x2


# instance fields
.field private E:I

.field private F:Landroid/view/View;

.field private G:Landroid/support/v4/view/e;

.field private H:Landroid/support/v4/view/u$e;

.field private I:Z

.field private J:Landroid/view/ContextMenu$ContextMenuInfo;

.field f:Landroid/support/v7/view/menu/h;

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private n:Ljava/lang/CharSequence;

.field private o:Ljava/lang/CharSequence;

.field private p:Landroid/content/Intent;

.field private q:C

.field private r:C

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:I

.field private u:Landroid/support/v7/view/menu/u;

.field private v:Ljava/lang/Runnable;

.field private w:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private x:I


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/h;IIIILjava/lang/CharSequence;I)V
    .locals 2
    .param p1, "menu"    # Landroid/support/v7/view/menu/h;
    .param p2, "group"    # I
    .param p3, "id"    # I
    .param p4, "categoryOrder"    # I
    .param p5, "ordering"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "showAsAction"    # I

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v1, p0, Landroid/support/v7/view/menu/k;->t:I

    .line 80
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/view/menu/k;->x:I

    .line 88
    iput v1, p0, Landroid/support/v7/view/menu/k;->E:I

    .line 93
    iput-boolean v1, p0, Landroid/support/v7/view/menu/k;->I:Z

    .line 137
    iput-object p1, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    .line 138
    iput p3, p0, Landroid/support/v7/view/menu/k;->j:I

    .line 139
    iput p2, p0, Landroid/support/v7/view/menu/k;->k:I

    .line 140
    iput p4, p0, Landroid/support/v7/view/menu/k;->l:I

    .line 141
    iput p5, p0, Landroid/support/v7/view/menu/k;->m:I

    .line 142
    iput-object p6, p0, Landroid/support/v7/view/menu/k;->n:Ljava/lang/CharSequence;

    .line 143
    iput p7, p0, Landroid/support/v7/view/menu/k;->E:I

    .line 144
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/f/a/b;
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 622
    iget-object v2, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/h;->f()Landroid/content/Context;

    move-result-object v0

    .line 623
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 624
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/view/menu/k;->a(Landroid/view/View;)Landroid/support/v4/f/a/b;

    .line 625
    return-object p0
.end method

.method public a(Landroid/support/v4/view/e;)Landroid/support/v4/f/a/b;
    .locals 2
    .param p1, "actionProvider"    # Landroid/support/v4/view/e;

    .prologue
    .line 659
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->G:Landroid/support/v4/view/e;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->G:Landroid/support/v4/view/e;

    invoke-virtual {v0}, Landroid/support/v4/view/e;->h()V

    .line 662
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/k;->F:Landroid/view/View;

    .line 663
    iput-object p1, p0, Landroid/support/v7/view/menu/k;->G:Landroid/support/v4/view/e;

    .line 664
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 665
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->G:Landroid/support/v4/view/e;

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->G:Landroid/support/v4/view/e;

    new-instance v1, Landroid/support/v7/view/menu/k$1;

    invoke-direct {v1, p0}, Landroid/support/v7/view/menu/k$1;-><init>(Landroid/support/v7/view/menu/k;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/e;->a(Landroid/support/v4/view/e$b;)V

    .line 673
    :cond_1
    return-object p0
.end method

.method public a(Landroid/support/v4/view/u$e;)Landroid/support/v4/f/a/b;
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/u$e;

    .prologue
    .line 717
    iput-object p1, p0, Landroid/support/v7/view/menu/k;->H:Landroid/support/v4/view/u$e;

    .line 718
    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/v4/f/a/b;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 611
    iput-object p1, p0, Landroid/support/v7/view/menu/k;->F:Landroid/view/View;

    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/k;->G:Landroid/support/v4/view/e;

    .line 613
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/view/menu/k;->j:I

    if-lez v0, :cond_0

    .line 614
    iget v0, p0, Landroid/support/v7/view/menu/k;->j:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 616
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/h;->b(Landroid/support/v7/view/menu/k;)V

    .line 617
    return-object p0
.end method

.method public a()Landroid/support/v4/view/e;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->G:Landroid/support/v4/view/e;

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 235
    iput-object p1, p0, Landroid/support/v7/view/menu/k;->v:Ljava/lang/Runnable;

    .line 236
    return-object p0
.end method

.method a(Landroid/support/v7/view/menu/p$a;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "itemView"    # Landroid/support/v7/view/menu/p$a;

    .prologue
    .line 366
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/support/v7/view/menu/p$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Landroid/support/v7/view/menu/k;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/k;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/view/menu/u;)V
    .locals 1
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/u;

    .prologue
    .line 348
    iput-object p1, p0, Landroid/support/v7/view/menu/k;->u:Landroid/support/v7/view/menu/u;

    .line 350
    invoke-virtual {p0}, Landroid/support/v7/view/menu/k;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/u;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 351
    return-void
.end method

.method a(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 548
    iput-object p1, p0, Landroid/support/v7/view/menu/k;->J:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 549
    return-void
.end method

.method public a(Z)V
    .locals 2
    .param p1, "exclusive"    # Z

    .prologue
    .line 471
    iget v0, p0, Landroid/support/v7/view/menu/k;->x:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/view/menu/k;->x:I

    .line 472
    return-void

    .line 471
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Landroid/support/v4/f/a/b;
    .locals 0
    .param p1, "actionEnum"    # I

    .prologue
    .line 678
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/k;->setShowAsAction(I)V

    .line 679
    return-object p0
.end method

.method b(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 497
    iget v0, p0, Landroid/support/v7/view/menu/k;->x:I

    .line 498
    .local v0, "oldFlags":I
    iget v1, p0, Landroid/support/v7/view/menu/k;->x:I

    and-int/lit8 v3, v1, -0x3

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Landroid/support/v7/view/menu/k;->x:I

    .line 499
    iget v1, p0, Landroid/support/v7/view/menu/k;->x:I

    if-eq v0, v1, :cond_0

    .line 500
    iget-object v1, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 502
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 498
    goto :goto_0
.end method

.method public b()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 152
    iget-object v2, p0, Landroid/support/v7/view/menu/k;->w:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/view/menu/k;->w:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v1

    .line 156
    :cond_1
    iget-object v2, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    iget-object v3, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/h;->q()Landroid/support/v7/view/menu/h;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    iget-object v2, p0, Landroid/support/v7/view/menu/k;->v:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 161
    iget-object v2, p0, Landroid/support/v7/view/menu/k;->v:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 165
    :cond_2
    iget-object v2, p0, Landroid/support/v7/view/menu/k;->p:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 167
    :try_start_0
    iget-object v2, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/h;->f()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/view/menu/k;->p:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    iget-object v2, p0, Landroid/support/v7/view/menu/k;->G:Landroid/support/v4/view/e;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/view/menu/k;->G:Landroid/support/v4/view/e;

    invoke-virtual {v2}, Landroid/support/v4/view/e;->f()Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Landroid/support/v7/view/menu/k;->m:I

    return v0
.end method

.method c(Z)Z
    .locals 4
    .param p1, "shown"    # Z

    .prologue
    const/4 v2, 0x0

    .line 521
    iget v0, p0, Landroid/support/v7/view/menu/k;->x:I

    .line 522
    .local v0, "oldFlags":I
    iget v1, p0, Landroid/support/v7/view/menu/k;->x:I

    and-int/lit8 v3, v1, -0x9

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Landroid/support/v7/view/menu/k;->x:I

    .line 523
    iget v1, p0, Landroid/support/v7/view/menu/k;->x:I

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 522
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public collapseActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 698
    iget v1, p0, Landroid/support/v7/view/menu/k;->E:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 711
    :cond_0
    :goto_0
    return v0

    .line 701
    :cond_1
    iget-object v1, p0, Landroid/support/v7/view/menu/k;->F:Landroid/view/View;

    if-nez v1, :cond_2

    .line 703
    const/4 v0, 0x1

    goto :goto_0

    .line 706
    :cond_2
    iget-object v1, p0, Landroid/support/v7/view/menu/k;->H:Landroid/support/v4/view/u$e;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/view/menu/k;->H:Landroid/support/v4/view/u$e;

    .line 707
    invoke-interface {v1, p0}, Landroid/support/v4/view/u$e;->b(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    :cond_3
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/h;->d(Landroid/support/v7/view/menu/k;)Z

    move-result v0

    goto :goto_0
.end method

.method d()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->v:Ljava/lang/Runnable;

    return-object v0
.end method

.method public d(Z)V
    .locals 1
    .param p1, "isActionButton"    # Z

    .prologue
    .line 580
    if-eqz p1, :cond_0

    .line 581
    iget v0, p0, Landroid/support/v7/view/menu/k;->x:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/support/v7/view/menu/k;->x:I

    .line 585
    :goto_0
    return-void

    .line 583
    :cond_0
    iget v0, p0, Landroid/support/v7/view/menu/k;->x:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/view/menu/k;->x:I

    goto :goto_0
.end method

.method e()C
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Landroid/support/v7/view/menu/k;->r:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Landroid/support/v7/view/menu/k;->q:C

    goto :goto_0
.end method

.method public e(Z)V
    .locals 2
    .param p1, "isExpanded"    # Z

    .prologue
    .line 732
    iput-boolean p1, p0, Landroid/support/v7/view/menu/k;->I:Z

    .line 733
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 734
    return-void
.end method

.method public expandActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 684
    invoke-virtual {p0}, Landroid/support/v7/view/menu/k;->o()Z

    move-result v1

    if-nez v1, :cond_1

    .line 693
    :cond_0
    :goto_0
    return v0

    .line 688
    :cond_1
    iget-object v1, p0, Landroid/support/v7/view/menu/k;->H:Landroid/support/v4/view/u$e;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/view/menu/k;->H:Landroid/support/v4/view/u$e;

    .line 689
    invoke-interface {v1, p0}, Landroid/support/v4/view/u$e;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/h;->c(Landroid/support/v7/view/menu/k;)Z

    move-result v0

    goto :goto_0
.end method

.method f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 299
    invoke-virtual {p0}, Landroid/support/v7/view/menu/k;->e()C

    move-result v1

    .line 300
    .local v1, "shortcut":C
    if-nez v1, :cond_0

    .line 301
    const-string v2, ""

    .line 324
    :goto_0
    return-object v2

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/support/v7/view/menu/k;->K:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, "sb":Ljava/lang/StringBuilder;
    sparse-switch v1, :sswitch_data_0

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 324
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 308
    :sswitch_0
    sget-object v2, Landroid/support/v7/view/menu/k;->L:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 312
    :sswitch_1
    sget-object v2, Landroid/support/v7/view/menu/k;->M:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 316
    :sswitch_2
    sget-object v2, Landroid/support/v7/view/menu/k;->N:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 305
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method g()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/view/menu/k;->e()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .prologue
    .line 648
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->F:Landroid/view/View;

    .line 636
    :goto_0
    return-object v0

    .line 632
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->G:Landroid/support/v4/view/e;

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->G:Landroid/support/v4/view/e;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/e;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/k;->F:Landroid/view/View;

    .line 634
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->F:Landroid/view/View;

    goto :goto_0

    .line 636
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 241
    iget-char v0, p0, Landroid/support/v7/view/menu/k;->r:C

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Landroid/support/v7/view/menu/k;->k:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 420
    iget-object v1, p0, Landroid/support/v7/view/menu/k;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 421
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->s:Landroid/graphics/drawable/Drawable;

    .line 431
    :goto_0
    return-object v0

    .line 424
    :cond_0
    iget v1, p0, Landroid/support/v7/view/menu/k;->t:I

    if-eqz v1, :cond_1

    .line 425
    iget-object v1, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->f()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/view/menu/k;->t:I

    invoke-static {v1, v2}, Landroid/support/v7/b/a/b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 426
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/view/menu/k;->t:I

    .line 427
    iput-object v0, p0, Landroid/support/v7/view/menu/k;->s:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 431
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->p:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 207
    iget v0, p0, Landroid/support/v7/view/menu/k;->j:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->J:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 259
    iget-char v0, p0, Landroid/support/v7/view/menu/k;->q:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Landroid/support/v7/view/menu/k;->l:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->u:Landroid/support/v7/view/menu/u;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->n:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 391
    iget-object v1, p0, Landroid/support/v7/view/menu/k;->o:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->o:Ljava/lang/CharSequence;

    .line 393
    .local v0, "ctitle":Ljava/lang/CharSequence;
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 397
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    .end local v0    # "ctitle":Ljava/lang/CharSequence;
    :cond_0
    return-object v0

    .line 391
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->n:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Landroid/support/v7/view/menu/k;->x:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->u:Landroid/support/v7/view/menu/u;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/h;->b(Landroid/support/v7/view/menu/k;)V

    .line 558
    return-void
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 738
    iget-boolean v0, p0, Landroid/support/v7/view/menu/k;->I:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 456
    iget v1, p0, Landroid/support/v7/view/menu/k;->x:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 480
    iget v0, p0, Landroid/support/v7/view/menu/k;->x:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Landroid/support/v7/view/menu/k;->x:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 506
    iget-object v2, p0, Landroid/support/v7/view/menu/k;->G:Landroid/support/v4/view/e;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/view/menu/k;->G:Landroid/support/v4/view/e;

    invoke-virtual {v2}, Landroid/support/v4/view/e;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 507
    iget v2, p0, Landroid/support/v7/view/menu/k;->x:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/view/menu/k;->G:Landroid/support/v4/view/e;

    invoke-virtual {v2}, Landroid/support/v4/view/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 507
    goto :goto_0

    .line 509
    :cond_2
    iget v2, p0, Landroid/support/v7/view/menu/k;->x:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->r()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 568
    iget v0, p0, Landroid/support/v7/view/menu/k;->x:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 572
    iget v1, p0, Landroid/support/v7/view/menu/k;->E:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 576
    iget v0, p0, Landroid/support/v7/view/menu/k;->E:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 588
    iget v0, p0, Landroid/support/v7/view/menu/k;->E:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 722
    iget v1, p0, Landroid/support/v7/view/menu/k;->E:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 723
    iget-object v1, p0, Landroid/support/v7/view/menu/k;->F:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/view/menu/k;->G:Landroid/support/v4/view/e;

    if-eqz v1, :cond_0

    .line 724
    iget-object v1, p0, Landroid/support/v7/view/menu/k;->G:Landroid/support/v4/view/e;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/e;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/k;->F:Landroid/view/View;

    .line 726
    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/menu/k;->F:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 728
    :cond_1
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "actionProvider"    # Landroid/view/ActionProvider;

    .prologue
    .line 642
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/k;->a(I)Landroid/support/v4/f/a/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/k;->a(Landroid/view/View;)Landroid/support/v4/f/a/b;

    move-result-object v0

    return-object v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "alphaChar"    # C

    .prologue
    .line 246
    iget-char v0, p0, Landroid/support/v7/view/menu/k;->r:C

    if-ne v0, p1, :cond_0

    .line 254
    :goto_0
    return-object p0

    .line 250
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/k;->r:C

    .line 252
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->c(Z)V

    goto :goto_0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 4
    .param p1, "checkable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 461
    iget v0, p0, Landroid/support/v7/view/menu/k;->x:I

    .line 462
    .local v0, "oldFlags":I
    iget v1, p0, Landroid/support/v7/view/menu/k;->x:I

    and-int/lit8 v3, v1, -0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Landroid/support/v7/view/menu/k;->x:I

    .line 463
    iget v1, p0, Landroid/support/v7/view/menu/k;->x:I

    if-eq v0, v1, :cond_0

    .line 464
    iget-object v1, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 467
    :cond_0
    return-object p0

    :cond_1
    move v1, v2

    .line 462
    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 485
    iget v0, p0, Landroid/support/v7/view/menu/k;->x:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/h;->a(Landroid/view/MenuItem;)V

    .line 493
    :goto_0
    return-object p0

    .line 490
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/k;->b(Z)V

    goto :goto_0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    iget v0, p0, Landroid/support/v7/view/menu/k;->x:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/view/menu/k;->x:I

    .line 194
    :goto_0
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 196
    return-object p0

    .line 191
    :cond_0
    iget v0, p0, Landroid/support/v7/view/menu/k;->x:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/view/menu/k;->x:I

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "iconResId"    # I

    .prologue
    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/k;->s:Landroid/graphics/drawable/Drawable;

    .line 446
    iput p1, p0, Landroid/support/v7/view/menu/k;->t:I

    .line 449
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 451
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 436
    iput v1, p0, Landroid/support/v7/view/menu/k;->t:I

    .line 437
    iput-object p1, p0, Landroid/support/v7/view/menu/k;->s:Landroid/graphics/drawable/Drawable;

    .line 438
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 440
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 226
    iput-object p1, p0, Landroid/support/v7/view/menu/k;->p:Landroid/content/Intent;

    .line 227
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C

    .prologue
    .line 264
    iget-char v0, p0, Landroid/support/v7/view/menu/k;->q:C

    if-ne v0, p1, :cond_0

    .line 272
    :goto_0
    return-object p0

    .line 268
    :cond_0
    iput-char p1, p0, Landroid/support/v7/view/menu/k;->q:C

    .line 270
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->c(Z)V

    goto :goto_0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .prologue
    .line 743
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setOnActionExpandListener()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "clickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 538
    iput-object p1, p0, Landroid/support/v7/view/menu/k;->w:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 539
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .prologue
    .line 277
    iput-char p1, p0, Landroid/support/v7/view/menu/k;->q:C

    .line 278
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/k;->r:C

    .line 280
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 282
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2
    .param p1, "actionEnum"    # I

    .prologue
    .line 593
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 602
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :pswitch_0
    iput p1, p0, Landroid/support/v7/view/menu/k;->E:I

    .line 606
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/h;->b(Landroid/support/v7/view/menu/k;)V

    .line 607
    return-void

    .line 593
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/k;->b(I)Landroid/support/v4/f/a/b;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 386
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/k;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 373
    iput-object p1, p0, Landroid/support/v7/view/menu/k;->n:Ljava/lang/CharSequence;

    .line 375
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 377
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->u:Landroid/support/v7/view/menu/u;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->u:Landroid/support/v7/view/menu/u;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/u;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 381
    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 406
    iput-object p1, p0, Landroid/support/v7/view/menu/k;->o:Ljava/lang/CharSequence;

    .line 409
    if-nez p1, :cond_0

    .line 410
    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Ljava/lang/CharSequence;

    .line 413
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 415
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/k;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/k;)V

    .line 533
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->n:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->n:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

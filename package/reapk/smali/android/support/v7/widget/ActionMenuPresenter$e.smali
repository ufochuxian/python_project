.class Landroid/support/v7/widget/ActionMenuPresenter$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 767
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$e;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/menu/h;Z)V
    .locals 3
    .param p1, "menu"    # Landroid/support/v7/view/menu/h;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 781
    instance-of v1, p1, Landroid/support/v7/view/menu/u;

    if-eqz v1, :cond_0

    .line 782
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->q()Landroid/support/v7/view/menu/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/h;->b(Z)V

    .line 784
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter$e;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a()Landroid/support/v7/view/menu/o$a;

    move-result-object v0

    .line 785
    .local v0, "cb":Landroid/support/v7/view/menu/o$a;
    if-eqz v0, :cond_1

    .line 786
    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/o$a;->a(Landroid/support/v7/view/menu/h;Z)V

    .line 788
    :cond_1
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;)Z
    .locals 4
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/h;

    .prologue
    const/4 v2, 0x0

    .line 772
    if-nez p1, :cond_0

    .line 776
    :goto_0
    return v2

    .line 774
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter$e;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v1, p1

    check-cast v1, Landroid/support/v7/view/menu/u;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/u;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, v3, Landroid/support/v7/widget/ActionMenuPresenter;->l:I

    .line 775
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter$e;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a()Landroid/support/v7/view/menu/o$a;

    move-result-object v0

    .line 776
    .local v0, "cb":Landroid/support/v7/view/menu/o$a;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/o$a;->a(Landroid/support/v7/view/menu/h;)Z

    move-result v1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

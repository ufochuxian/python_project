.class Landroid/support/v7/view/menu/ActionMenuItemView$a;
.super Landroid/support/v7/widget/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/ActionMenuItemView;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView$a;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 311
    invoke-direct {p0, p1}, Landroid/support/v7/widget/u;-><init>(Landroid/view/View;)V

    .line 312
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/view/menu/s;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView$a;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    iget-object v0, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->c:Landroid/support/v7/view/menu/ActionMenuItemView$b;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView$a;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    iget-object v0, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->c:Landroid/support/v7/view/menu/ActionMenuItemView$b;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/ActionMenuItemView$b;->a()Landroid/support/v7/view/menu/s;

    move-result-object v0

    .line 319
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 325
    iget-object v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView$a;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    iget-object v2, v2, Landroid/support/v7/view/menu/ActionMenuItemView;->b:Landroid/support/v7/view/menu/h$b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView$a;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    iget-object v2, v2, Landroid/support/v7/view/menu/ActionMenuItemView;->b:Landroid/support/v7/view/menu/h$b;

    iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView$a;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    iget-object v3, v3, Landroid/support/v7/view/menu/ActionMenuItemView;->a:Landroid/support/v7/view/menu/k;

    invoke-interface {v2, v3}, Landroid/support/v7/view/menu/h$b;->a(Landroid/support/v7/view/menu/k;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView$a;->a()Landroid/support/v7/view/menu/s;

    move-result-object v0

    .line 327
    .local v0, "popup":Landroid/support/v7/view/menu/s;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v7/view/menu/s;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 329
    .end local v0    # "popup":Landroid/support/v7/view/menu/s;
    :cond_0
    return v1
.end method

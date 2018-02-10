.class Landroid/support/v7/view/menu/l$a;
.super Landroid/support/v7/view/menu/MenuItemWrapperICS$a;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field c:Landroid/support/v4/view/e$b;

.field final synthetic d:Landroid/support/v7/view/menu/l;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/l;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/view/menu/l;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "inner"    # Landroid/view/ActionProvider;

    .prologue
    .line 52
    iput-object p1, p0, Landroid/support/v7/view/menu/l$a;->d:Landroid/support/v7/view/menu/l;

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/view/menu/MenuItemWrapperICS$a;-><init>(Landroid/support/v7/view/menu/MenuItemWrapperICS;Landroid/content/Context;Landroid/view/ActionProvider;)V

    .line 54
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1
    .param p1, "forItem"    # Landroid/view/MenuItem;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v7/view/menu/l$a;->a:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/view/e$b;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/e$b;

    .prologue
    .line 78
    iput-object p1, p0, Landroid/support/v7/view/menu/l$a;->c:Landroid/support/v4/view/e$b;

    .line 79
    iget-object v0, p0, Landroid/support/v7/view/menu/l$a;->a:Landroid/view/ActionProvider;

    if-eqz p1, :cond_0

    .end local p0    # "this":Landroid/support/v7/view/menu/l$a;
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    .line 80
    return-void

    .line 79
    .restart local p0    # "this":Landroid/support/v7/view/menu/l$a;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/view/menu/l$a;->a:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v7/view/menu/l$a;->a:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/v7/view/menu/l$a;->a:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->refreshVisibility()V

    .line 74
    return-void
.end method

.method public onActionProviderVisibilityChanged(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v7/view/menu/l$a;->c:Landroid/support/v4/view/e$b;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Landroid/support/v7/view/menu/l$a;->c:Landroid/support/v4/view/e$b;

    invoke-interface {v0, p1}, Landroid/support/v4/view/e$b;->a(Z)V

    .line 87
    :cond_0
    return-void
.end method

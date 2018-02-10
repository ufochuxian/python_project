.class public Landroid/support/v7/view/menu/MenuItemWrapperICS;
.super Landroid/support/v7/view/menu/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    a = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation build Landroid/support/annotation/ae;
    a = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;,
        Landroid/support/v7/view/menu/MenuItemWrapperICS$a;,
        Landroid/support/v7/view/menu/MenuItemWrapperICS$b;,
        Landroid/support/v7/view/menu/MenuItemWrapperICS$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/view/menu/c",
        "<",
        "Landroid/support/v4/f/a/b;",
        ">;",
        "Landroid/view/MenuItem;"
    }
.end annotation


# static fields
.field static final c:Ljava/lang/String; = "MenuItemWrapper"


# instance fields
.field private d:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/f/a/b;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Landroid/support/v4/f/a/b;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/support/v7/view/menu/c;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 55
    return-void
.end method


# virtual methods
.method a(Landroid/view/ActionProvider;)Landroid/support/v7/view/menu/MenuItemWrapperICS$a;
    .locals 2
    .param p1, "provider"    # Landroid/view/ActionProvider;

    .prologue
    .line 314
    new-instance v0, Landroid/support/v7/view/menu/MenuItemWrapperICS$a;

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Landroid/support/v7/view/menu/MenuItemWrapperICS$a;-><init>(Landroid/support/v7/view/menu/MenuItemWrapperICS;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method

.method public a(Z)V
    .locals 6
    .param p1, "checkable"    # Z

    .prologue
    .line 303
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->d:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 304
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/f/a/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setExclusiveCheckable"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 305
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->d:Ljava/lang/reflect/Method;

    .line 307
    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->d:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MenuItemWrapper"

    const-string v2, "Error while calling setExclusiveCheckable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0}, Landroid/support/v4/f/a/b;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0}, Landroid/support/v4/f/a/b;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .prologue
    .line 272
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/f/a/b;

    invoke-interface {v1}, Landroid/support/v4/f/a/b;->a()Landroid/support/v4/view/e;

    move-result-object v0

    .line 273
    .local v0, "provider":Landroid/support/v4/view/e;
    instance-of v1, v0, Landroid/support/v7/view/menu/MenuItemWrapperICS$a;

    if-eqz v1, :cond_0

    .line 274
    check-cast v0, Landroid/support/v7/view/menu/MenuItemWrapperICS$a;

    .end local v0    # "provider":Landroid/support/v4/view/e;
    iget-object v1, v0, Landroid/support/v7/view/menu/MenuItemWrapperICS$a;->a:Landroid/view/ActionProvider;

    .line 276
    :goto_0
    return-object v1

    .restart local v0    # "provider":Landroid/support/v4/view/e;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActionView()Landroid/view/View;
    .locals 2

    .prologue
    .line 256
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/f/a/b;

    invoke-interface {v1}, Landroid/support/v4/f/a/b;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 257
    .local v0, "actionView":Landroid/view/View;
    instance-of v1, v0, Landroid/support/v7/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    if-eqz v1, :cond_0

    .line 258
    check-cast v0, Landroid/support/v7/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    .end local v0    # "actionView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->c()Landroid/view/View;

    move-result-object v0

    .line 260
    :cond_0
    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0}, Landroid/support/v4/f/a/b;->getAlphabeticShortcut()C

    move-result v0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0}, Landroid/support/v4/f/a/b;->getGroupId()I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0}, Landroid/support/v4/f/a/b;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0}, Landroid/support/v4/f/a/b;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0}, Landroid/support/v4/f/a/b;->getItemId()I

    move-result v0

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0}, Landroid/support/v4/f/a/b;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0}, Landroid/support/v4/f/a/b;->getNumericShortcut()C

    move-result v0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0}, Landroid/support/v4/f/a/b;->getOrder()I

    move-result v0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0}, Landroid/support/v4/f/a/b;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuItemWrapperICS;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0}, Landroid/support/v4/f/a/b;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0}, Landroid/support/v4/f/a/b;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0}, Landroid/support/v4/f/a/b;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0}, Landroid/support/v4/f/a/b;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0}, Landroid/support/v4/f/a/b;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0}, Landroid/support/v4/f/a/b;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0}, Landroid/support/v4/f/a/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0}, Landroid/support/v4/f/a/b;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "provider"    # Landroid/view/ActionProvider;

    .prologue
    .line 265
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    if-eqz p1, :cond_0

    .line 266
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemWrapperICS;->a(Landroid/view/ActionProvider;)Landroid/support/v7/view/menu/MenuItemWrapperICS$a;

    move-result-object v1

    .line 265
    :goto_0
    invoke-interface {v0, v1}, Landroid/support/v4/f/a/b;->a(Landroid/support/v4/view/e;)Landroid/support/v4/f/a/b;

    .line 267
    return-object p0

    .line 266
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 244
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/f/a/b;

    invoke-interface {v1, p1}, Landroid/support/v4/f/a/b;->setActionView(I)Landroid/view/MenuItem;

    .line 246
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/f/a/b;

    invoke-interface {v1}, Landroid/support/v4/f/a/b;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 247
    .local v0, "actionView":Landroid/view/View;
    instance-of v1, v0, Landroid/view/CollapsibleActionView;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/f/a/b;

    new-instance v2, Landroid/support/v7/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    invoke-direct {v2, v0}, Landroid/support/v7/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;-><init>(Landroid/view/View;)V

    invoke-interface {v1, v2}, Landroid/support/v4/f/a/b;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 251
    :cond_0
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 234
    instance-of v1, p1, Landroid/view/CollapsibleActionView;

    if-eqz v1, :cond_0

    .line 235
    new-instance v0, Landroid/support/v7/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    invoke-direct {v0, p1}, Landroid/support/v7/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;-><init>(Landroid/view/View;)V

    .end local p1    # "view":Landroid/view/View;
    .local v0, "view":Landroid/view/View;
    move-object p1, v0

    .line 237
    .end local v0    # "view":Landroid/view/View;
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/f/a/b;

    invoke-interface {v1, p1}, Landroid/support/v4/f/a/b;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 238
    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1
    .param p1, "alphaChar"    # C

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/f/a/b;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 148
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "checkable"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/f/a/b;->setCheckable(Z)Landroid/view/MenuItem;

    .line 159
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 169
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/f/a/b;->setChecked(Z)Landroid/view/MenuItem;

    .line 170
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 190
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/f/a/b;->setEnabled(Z)Landroid/view/MenuItem;

    .line 191
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "iconRes"    # I

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/f/a/b;->setIcon(I)Landroid/view/MenuItem;

    .line 109
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/f/a/b;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 103
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/f/a/b;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 120
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/f/a/b;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 137
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .prologue
    .line 296
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    if-eqz p1, :cond_0

    new-instance v1, Landroid/support/v7/view/menu/MenuItemWrapperICS$b;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/view/menu/MenuItemWrapperICS$b;-><init>(Landroid/support/v7/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnActionExpandListener;)V

    :goto_0
    invoke-interface {v0, v1}, Landroid/support/v4/f/a/b;->a(Landroid/support/v4/view/u$e;)Landroid/support/v4/f/a/b;

    .line 298
    return-object p0

    .line 296
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    if-eqz p1, :cond_0

    new-instance v1, Landroid/support/v7/view/menu/MenuItemWrapperICS$c;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/view/menu/MenuItemWrapperICS$c;-><init>(Landroid/support/v7/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    :goto_0
    invoke-interface {v0, v1}, Landroid/support/v4/f/a/b;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 213
    return-object p0

    .line 211
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .prologue
    .line 130
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/f/a/b;->setShortcut(CC)Landroid/view/MenuItem;

    .line 131
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 1
    .param p1, "actionEnum"    # I

    .prologue
    .line 223
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/f/a/b;->setShowAsAction(I)V

    .line 224
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "actionEnum"    # I

    .prologue
    .line 228
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/f/a/b;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 229
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/f/a/b;->setTitle(I)Landroid/view/MenuItem;

    .line 81
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/f/a/b;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 75
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/f/a/b;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 92
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 180
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/f/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/f/a/b;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

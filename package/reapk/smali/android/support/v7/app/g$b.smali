.class Landroid/support/v7/app/g$b;
.super Landroid/support/v7/view/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/g;


# direct methods
.method constructor <init>(Landroid/support/v7/app/g;Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/g;
    .param p2, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 312
    iput-object p1, p0, Landroid/support/v7/app/g$b;->a:Landroid/support/v7/app/g;

    .line 313
    invoke-direct {p0, p2}, Landroid/support/v7/view/i;-><init>(Landroid/view/Window$Callback;)V

    .line 314
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 318
    iget-object v0, p0, Landroid/support/v7/app/g$b;->a:Landroid/support/v7/app/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/g;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-super {p0, p1}, Landroid/support/v7/view/i;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroid/support/v7/view/i;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/g$b;->a:Landroid/support/v7/app/g;

    .line 325
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/app/g;->a(ILandroid/view/KeyEvent;)Z

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

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 330
    if-nez p1, :cond_0

    instance-of v0, p2, Landroid/support/v7/view/menu/h;

    if-nez v0, :cond_0

    .line 333
    const/4 v0, 0x0

    .line 335
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/i;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 373
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/i;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 374
    iget-object v0, p0, Landroid/support/v7/app/g$b;->a:Landroid/support/v7/app/g;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/g;->b(ILandroid/view/Menu;)Z

    .line 375
    const/4 v0, 0x1

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 380
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/i;->onPanelClosed(ILandroid/view/Menu;)V

    .line 381
    iget-object v0, p0, Landroid/support/v7/app/g$b;->a:Landroid/support/v7/app/g;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/g;->a(ILandroid/view/Menu;)V

    .line 382
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 346
    instance-of v2, p3, Landroid/support/v7/view/menu/h;

    if-eqz v2, :cond_1

    move-object v2, p3

    check-cast v2, Landroid/support/v7/view/menu/h;

    move-object v1, v2

    .line 348
    .local v1, "mb":Landroid/support/v7/view/menu/h;
    :goto_0
    if-nez p1, :cond_2

    if-nez v1, :cond_2

    move v0, v3

    .line 368
    :cond_0
    :goto_1
    return v0

    .line 346
    .end local v1    # "mb":Landroid/support/v7/view/menu/h;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 358
    .restart local v1    # "mb":Landroid/support/v7/view/menu/h;
    :cond_2
    if-eqz v1, :cond_3

    .line 359
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/h;->e(Z)V

    .line 362
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/i;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 364
    .local v0, "handled":Z
    if-eqz v1, :cond_0

    .line 365
    invoke-virtual {v1, v3}, Landroid/support/v7/view/menu/h;->e(Z)V

    goto :goto_1
.end method

.class final Landroid/support/v7/app/v$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/v;


# direct methods
.method constructor <init>(Landroid/support/v7/app/v;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Landroid/support/v7/app/v$c;->a:Landroid/support/v7/app/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/menu/h;Z)V
    .locals 2
    .param p1, "menu"    # Landroid/support/v7/view/menu/h;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 634
    iget-object v0, p0, Landroid/support/v7/app/v$c;->a:Landroid/support/v7/app/v;

    iget-object v0, v0, Landroid/support/v7/app/v;->k:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Landroid/support/v7/app/v$c;->a:Landroid/support/v7/app/v;

    iget-object v0, v0, Landroid/support/v7/app/v;->k:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 637
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;)Z
    .locals 2
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/h;

    .prologue
    .line 641
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/v$c;->a:Landroid/support/v7/app/v;

    iget-object v0, v0, Landroid/support/v7/app/v;->k:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Landroid/support/v7/app/v$c;->a:Landroid/support/v7/app/v;

    iget-object v0, v0, Landroid/support/v7/app/v;->k:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 644
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

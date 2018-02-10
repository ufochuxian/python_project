.class Landroid/support/v7/app/v$d;
.super Landroid/support/v7/view/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/v;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/v;Landroid/view/Window$Callback;)V
    .locals 0
    .param p2, "wrapped"    # Landroid/view/Window$Callback;

    .prologue
    .line 561
    iput-object p1, p0, Landroid/support/v7/app/v$d;->a:Landroid/support/v7/app/v;

    .line 562
    invoke-direct {p0, p2}, Landroid/support/v7/view/i;-><init>(Landroid/view/Window$Callback;)V

    .line 563
    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 2
    .param p1, "featureId"    # I

    .prologue
    .line 577
    packed-switch p1, :pswitch_data_0

    .line 585
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/view/i;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1

    .line 579
    :pswitch_0
    iget-object v1, p0, Landroid/support/v7/app/v$d;->a:Landroid/support/v7/app/v;

    iget-object v1, v1, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v1}, Landroid/support/v7/widget/p;->A()Landroid/view/Menu;

    move-result-object v0

    .line 580
    .local v0, "menu":Landroid/view/Menu;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/support/v7/app/v$d;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/v$d;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Landroid/support/v7/app/v$d;->a:Landroid/support/v7/app/v;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/v;->a(Landroid/view/Menu;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 577
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 567
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/i;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 568
    .local v0, "result":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/v$d;->a:Landroid/support/v7/app/v;

    iget-boolean v1, v1, Landroid/support/v7/app/v;->j:Z

    if-nez v1, :cond_0

    .line 569
    iget-object v1, p0, Landroid/support/v7/app/v$d;->a:Landroid/support/v7/app/v;

    iget-object v1, v1, Landroid/support/v7/app/v;->i:Landroid/support/v7/widget/p;

    invoke-interface {v1}, Landroid/support/v7/widget/p;->p()V

    .line 570
    iget-object v1, p0, Landroid/support/v7/app/v$d;->a:Landroid/support/v7/app/v;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/app/v;->j:Z

    .line 572
    :cond_0
    return v0
.end method

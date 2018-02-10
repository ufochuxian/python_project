.class public Lcom/jiliguala/niuwa/module/transition/IndependentDialogActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private fragment:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v1, 0x7f0b001f

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/transition/IndependentDialogActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/transition/IndependentDialogActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 26
    .local v0, "fm":Landroid/support/v4/app/ag;
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/transition/IndependentDialogActivity;->fragment:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;

    .line 27
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/transition/IndependentDialogActivity;->fragment:Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/BabySyncDialogFragment;->show(Landroid/support/v4/app/ag;)V

    .line 28
    return-void
.end method

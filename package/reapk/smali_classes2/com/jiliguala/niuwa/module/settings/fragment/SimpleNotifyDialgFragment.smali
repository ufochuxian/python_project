.class public Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;
.super Landroid/support/v4/app/ac;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;->TAG:Ljava/lang/String;

    .line 25
    const-class v0, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;->isShowing:Z

    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 30
    sget-object v1, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;

    .line 31
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;
    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;-><init>()V

    .line 34
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 89
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;->dismiss()V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x7f090156
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x0

    const v1, 0x7f1000b4

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;->setStyle(II)V

    .line 60
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 75
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b01b1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 76
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 78
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 80
    const v2, 0x7f090156

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onDismiss(Landroid/content/DialogInterface;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;->isShowing:Z

    .line 41
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 65
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    div-int/lit8 v1, v2, 0x9

    .line 66
    .local v1, "width":I
    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v0

    .line 67
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 68
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 45
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 46
    .local v0, "ft":Landroid/support/v4/app/an;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;->isShowing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    sget-object v1, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 48
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 50
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;->isShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v1

    goto :goto_0
.end method

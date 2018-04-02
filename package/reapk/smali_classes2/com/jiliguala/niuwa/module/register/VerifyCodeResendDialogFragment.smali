.class public Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment$HandleVerifyCodeResend;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field public static KEY_PHONE:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mCancelBtn:Landroid/view/View;

.field mPhone:Ljava/lang/String;

.field mResendBtn:Landroid/view/View;

.field mResendInterface:Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment$HandleVerifyCodeResend;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->TAG:Ljava/lang/String;

    .line 25
    const-class v0, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 27
    const-string v0, "KEY_PHONE"

    sput-object v0, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->KEY_PHONE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;
    .locals 3
    .param p0, "fm"    # Landroid/support/v4/app/ag;
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 36
    sget-object v2, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;

    .line 37
    .local v1, "fragment":Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;
    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;

    .end local v1    # "fragment":Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;
    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;-><init>()V

    .line 39
    .restart local v1    # "fragment":Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v2, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->KEY_PHONE:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onAttach(Landroid/app/Activity;)V

    .line 49
    check-cast p1, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment$HandleVerifyCodeResend;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->mResendInterface:Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment$HandleVerifyCodeResend;

    .line 50
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/4 v0, 0x1

    const v1, 0x7f1000b4

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->setStyle(II)V

    .line 56
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->KEY_PHONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->mPhone:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 81
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 83
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x7f1000b3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 84
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 90
    const v1, 0x7f0b0137

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090457

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->mResendBtn:Landroid/view/View;

    .line 92
    const v1, 0x7f0900fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->mCancelBtn:Landroid/view/View;

    .line 93
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->mResendBtn:Landroid/view/View;

    new-instance v2, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment$1;-><init>(Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->mCancelBtn:Landroid/view/View;

    new-instance v2, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment$2;-><init>(Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-object v0
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 61
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 62
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v2

    .line 63
    .local v2, "width":I
    const/4 v1, -0x2

    .line 64
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 65
    .local v0, "dialog":Landroid/app/Dialog;
    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 69
    .local v3, "window":Landroid/view/Window;
    if-eqz v3, :cond_0

    .line 72
    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 73
    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 74
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

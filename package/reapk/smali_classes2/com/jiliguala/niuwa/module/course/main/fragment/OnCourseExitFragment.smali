.class public Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
.super Landroid/support/v4/app/ac;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAlertText:Landroid/widget/TextView;

.field private mCallback:Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;

.field protected mCancel:Landroid/widget/Button;

.field protected mConfirm:Landroid/widget/Button;

.field private mRoot:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->TAG:Ljava/lang/String;

    .line 29
    const-class v0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    return-void
.end method

.method private cancelSubCourse()V
    .locals 3

    .prologue
    .line 108
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/d;

    const/16 v2, 0x1014

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/d;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 37
    sget-object v1, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;

    .line 38
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;-><init>()V

    .line 41
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    :cond_0
    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->mAlertText:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f090156

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->mConfirm:Landroid/widget/Button;

    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f0900fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->mCancel:Landroid/widget/Button;

    .line 105
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 148
    instance-of v0, p1, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 149
    check-cast v0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->mCallback:Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;

    .line 151
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onAttach(Landroid/app/Activity;)V

    .line 152
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 120
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->reportConfirmAmplitude()V

    .line 121
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->cancelSubCourse()V

    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->mCallback:Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->mCallback:Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;->confirmExit()V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 128
    :sswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->reportCancelAmplitude()V

    .line 129
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->mCallback:Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->mCallback:Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;->cancel()V

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 118
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900fa -> :sswitch_1
        0x7f090156 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->reportPhoneExitAmplitude()V

    .line 60
    const/4 v0, 0x0

    const v1, 0x7f1000b4

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->setStyle(II)V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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
    .line 86
    const v0, 0x7f0b009b

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->mRoot:Landroid/view/View;

    .line 88
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->initView()V

    .line 90
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->init()V

    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f0900fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f090156

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Landroid/support/v4/app/ac;->onDetach()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->mCallback:Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;

    .line 158
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 69
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 71
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getRequestedOrientation()I

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->i()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v1, v2, 0x5

    .line 76
    .local v1, "width":I
    :goto_0
    const/4 v0, -0x2

    .line 78
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 79
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 80
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 81
    return-void

    .line 74
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v1, v2, 0x5

    .restart local v1    # "width":I
    goto :goto_0
.end method

.method protected reportCancelAmplitude()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method protected reportConfirmAmplitude()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method protected reportPhoneExitAmplitude()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public setCallback(Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->mCallback:Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;

    .line 162
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 47
    .local v0, "ft":Landroid/support/v4/app/an;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    sget-object v1, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 49
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v1

    goto :goto_0
.end method

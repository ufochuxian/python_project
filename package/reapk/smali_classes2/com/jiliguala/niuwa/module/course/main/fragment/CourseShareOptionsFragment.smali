.class public Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;
.super Landroid/support/v4/app/ac;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment$OptionChoiceInterface;
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private isShowing:Z

.field mCourseReportShareBtn:Landroid/widget/TextView;

.field mCourseShareBtn:Landroid/widget/TextView;

.field private mIsShowShareCourse:Z

.field mOptionChoiceInterface:Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment$OptionChoiceInterface;

.field private mShareText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->TAG:Ljava/lang/String;

    .line 32
    const-class v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->isShowing:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->mIsShowShareCourse:Z

    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 48
    sget-object v1, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 49
    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;

    .line 50
    .local v0, "courseShareOptionsFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;
    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;

    .end local v0    # "courseShareOptionsFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;-><init>()V

    .line 53
    .restart local v0    # "courseShareOptionsFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;
    :cond_0
    return-object v0
.end method

.method private handleArguments()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "COURSE_SHARE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->mIsShowShareCourse:Z

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public isUnitShareReport()Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->mShareText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->mShareText:Ljava/lang/String;

    const-string v1, "\u5206\u4eab\u5355\u5143\u62a5\u544a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 145
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->dismissAllowingStateLoss()V

    .line 148
    :cond_1
    return-void

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->mOptionChoiceInterface:Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment$OptionChoiceInterface;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->mOptionChoiceInterface:Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment$OptionChoiceInterface;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment$OptionChoiceInterface;->onCourseShareChosen()V

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->mOptionChoiceInterface:Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment$OptionChoiceInterface;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->mOptionChoiceInterface:Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment$OptionChoiceInterface;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->isUnitShareReport()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment$OptionChoiceInterface;->onCourseReportShareChosen(Z)V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x7f0904d4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->handleArguments()V

    .line 62
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 73
    const v1, 0x7f1000b4

    invoke-virtual {p0, v2, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->setStyle(II)V

    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 75
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 76
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 77
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x7f1000b3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 78
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 116
    const v1, 0x7f0b010d

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0904d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->mCourseShareBtn:Landroid/widget/TextView;

    .line 118
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->mCourseShareBtn:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->mIsShowShareCourse:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    const v1, 0x7f0904d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->mCourseReportShareBtn:Landroid/widget/TextView;

    .line 120
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->mShareText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->mCourseReportShareBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->mShareText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->mCourseShareBtn:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->mCourseReportShareBtn:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v1, 0x7f0904d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-object v0

    .line 118
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/support/v4/app/ac;->onDismiss(Landroid/content/DialogInterface;)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->isShowing:Z

    .line 111
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 83
    invoke-super {p0}, Landroid/support/v4/app/ac;->onStart()V

    .line 84
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v1

    .line 85
    .local v1, "width":I
    const/4 v0, -0x2

    .line 86
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 87
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 88
    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 89
    return-void
.end method

.method public setOptionChoiceInterface(Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment$OptionChoiceInterface;)Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;
    .locals 0
    .param p1, "callback"    # Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment$OptionChoiceInterface;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->mOptionChoiceInterface:Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment$OptionChoiceInterface;

    .line 152
    return-object p0
.end method

.method public setShareText(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareText"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->mShareText:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public show(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 97
    .local v0, "ft":Landroid/support/v4/app/an;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->isShowing:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    sget-object v1, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 99
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 101
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->isShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

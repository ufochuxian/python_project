.class public Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/qualitycourse/InteractView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity",
        "<",
        "Lcom/jiliguala/niuwa/module/qualitycourse/InteractPresenter;",
        "Lcom/jiliguala/niuwa/module/qualitycourse/InteractView;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/module/qualitycourse/InteractView;"
    }
.end annotation


# instance fields
.field private mBackIcon:Landroid/widget/ImageView;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mCourseCat:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

.field private mTopBar:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;-><init>()V

    return-void
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "course_cat"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->mCourseCat:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    .line 87
    return-void
.end method

.method private replaceFragment(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;)V
    .locals 4
    .param p1, "fragment"    # Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    .prologue
    const v3, 0x7f01001e

    const v2, 0x7f01001d

    .line 57
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 58
    .local v0, "ft":Landroid/support/v4/app/an;
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 62
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    const v1, 0x7f090158

    sget-object v2, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 64
    sget-object v1, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 68
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 69
    return-void

    .line 66
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_0
.end method

.method private setArguments(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;)V
    .locals 4
    .param p1, "fragment"    # Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    .prologue
    .line 72
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "course_cat"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->mCourseCat:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 74
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 78
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 83
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p1, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public RefreshTopBarTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "ttl"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->mTopBar:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->mTopBar:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_0
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->createPresenter()Lcom/jiliguala/niuwa/module/qualitycourse/InteractPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/qualitycourse/InteractPresenter;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->getUi()Lcom/jiliguala/niuwa/module/qualitycourse/InteractView;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/qualitycourse/InteractView;
    .locals 0

    .prologue
    .line 33
    return-object p0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onBackPressed()V

    .line 101
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->finish()V

    .line 102
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 93
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->finish()V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x7f090096
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v1, 0x7f0b0031

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->setContentView(I)V

    .line 41
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->handleIntent()V

    .line 43
    const v1, 0x7f090158

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 44
    const v1, 0x7f090595

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->mTopBar:Landroid/widget/TextView;

    .line 48
    const v1, 0x7f090096

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->mBackIcon:Landroid/widget/ImageView;

    .line 49
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    move-result-object v0

    .line 52
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->setArguments(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;)V

    .line 53
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;->replaceFragment(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;)V

    .line 54
    return-void
.end method

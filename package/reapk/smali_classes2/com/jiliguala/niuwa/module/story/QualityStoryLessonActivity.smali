.class public Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/story/QualityStoryActivityView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity",
        "<",
        "Lcom/jiliguala/niuwa/module/story/QualityStoryActivityPresenter;",
        "Lcom/jiliguala/niuwa/module/story/QualityStoryActivityView;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/module/story/QualityStoryActivityView;"
    }
.end annotation


# instance fields
.field private mCourseCat:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

.field private mTopBar:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;-><init>()V

    return-void
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "course_cat"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->mCourseCat:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    .line 64
    return-void
.end method

.method private replaceFragment(Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;)V
    .locals 4
    .param p1, "fragment"    # Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;

    .prologue
    const v3, 0x7f010020

    const v2, 0x7f01001f

    .line 66
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 67
    .local v0, "ft":Landroid/support/v4/app/an;
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 71
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const v1, 0x7f090158

    sget-object v2, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 73
    sget-object v1, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 77
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 78
    return-void

    .line 75
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_0
.end method

.method private reportAmplitude()V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->mCourseCat:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->mCourseCat:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->ttl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    const-string v1, "Category"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->mCourseCat:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->cat:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Lesson Category View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    return-void
.end method

.method private setArguments(Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;)V
    .locals 4
    .param p1, "fragment"    # Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;

    .prologue
    .line 88
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "course_cat"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->mCourseCat:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 90
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 92
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 94
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 99
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {p1, v1}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->createPresenter()Lcom/jiliguala/niuwa/module/story/QualityStoryActivityPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/story/QualityStoryActivityPresenter;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/jiliguala/niuwa/module/story/QualityStoryActivityPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryActivityPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->getUi()Lcom/jiliguala/niuwa/module/story/QualityStoryActivityView;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/story/QualityStoryActivityView;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onBackPressed()V

    .line 113
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->finish()V

    .line 114
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 105
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->finish()V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x7f090096
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->handleIntent()V

    .line 44
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->reportAmplitude()V

    .line 45
    const v2, 0x7f0b0031

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->setContentView(I)V

    .line 47
    const v2, 0x7f09059f

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->mTopBar:Landroid/widget/TextView;

    .line 48
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->mCourseCat:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->mCourseCat:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->ttl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->mTopBar:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->mCourseCat:Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->ttl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_0
    const v2, 0x7f090096

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 52
    .local v0, "backIcon":Landroid/widget/ImageView;
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;

    move-result-object v1

    .line 56
    .local v1, "fragment":Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->setArguments(Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;)V

    .line 58
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->replaceFragment(Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;)V

    .line 59
    return-void
.end method

.method public refreshTopBarTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "ttl"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->mTopBar:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;->mTopBar:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_0
    return-void
.end method

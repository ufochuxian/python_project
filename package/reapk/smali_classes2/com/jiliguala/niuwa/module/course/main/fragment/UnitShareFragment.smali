.class public Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;
.super Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;
.source "SourceFile"


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private mDirectShareUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;-><init>()V

    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 22
    sget-object v1, Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;

    .line 23
    .local v0, "unitShareFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;
    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;

    .end local v0    # "unitShareFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;-><init>()V

    .line 26
    .restart local v0    # "unitShareFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected getShareText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f0f01ba

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;->mDirectShareUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected onClickShareWeiBo()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 31
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;->mSocialGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;->mSingleSocialPengyouquan:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;->mSingleSocialWeiBo:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;->mSocialGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;->mSingleSocialPengyouquan:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;->mSingleSocialWeiBo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :cond_0
    return-void
.end method

.method public reportLessonReportShareDialog()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public setDirectShareUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "directShareUrl"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;->mDirectShareUrl:Ljava/lang/String;

    .line 58
    return-void
.end method

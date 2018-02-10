.class public Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;
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
    .line 18
    const-class v0, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;-><init>()V

    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 21
    sget-object v1, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;

    .line 22
    .local v0, "weiKeShareFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;
    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;

    .end local v0    # "weiKeShareFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;-><init>()V

    .line 25
    .restart local v0    # "weiKeShareFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected getShareText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "\u5206\u4eab\u6210\u529f\u5373\u53ef\u514d\u8d39\u83b7\u5f97\u672c\u8282\u5fae\u8bfe\u5185\u5bb9"

    return-object v0
.end method

.method protected getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;->mDirectShareUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected onClickShareWeiBo()V
    .locals 0

    .prologue
    .line 63
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

    .line 30
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;->mSocialGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;->mSingleSocialPengyouquan:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;->mSingleSocialWeiBo:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
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

    .line 35
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;->mSocialGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;->mSingleSocialPengyouquan:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;->mSingleSocialWeiBo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    :cond_0
    return-void
.end method

.method public reportLessonReportShareDialog()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public setDirectShareUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "directShareUrl"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;->mDirectShareUrl:Ljava/lang/String;

    .line 57
    return-void
.end method

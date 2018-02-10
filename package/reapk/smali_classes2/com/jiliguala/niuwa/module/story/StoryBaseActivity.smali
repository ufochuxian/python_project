.class public abstract Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/story/fragments/ReadBaseFragment$StoryOpener;


# static fields
.field private static final READ_BOOK_REQUEST_CODE:I = 0x2288

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected isFromPractice:Z

.field protected mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

.field private paused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->paused:Z

    return-void
.end method


# virtual methods
.method public getCourseid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getCourseId()Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMyApplication()Lcom/jiliguala/niuwa/MyApplication;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/MyApplication;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getResourceId()Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtaskid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->mTaskTicket:Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->getTaskId()Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFromPractice()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->isFromPractice:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->paused:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->paused:Z

    .line 103
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics;->INSTANCE:Lcom/jiliguala/niuwa/module/story/data/Analytics;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->flush()V

    .line 108
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->paused:Z

    .line 92
    return-void
.end method

.method public openStory(Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;Ljava/lang/String;)V
    .locals 2
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;
    .param p2, "location"    # Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;
    .param p3, "land"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 112
    invoke-interface {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;->openStory(Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public openStory(Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;Ljava/lang/String;)V
    .locals 6
    .param p1, "storyId"    # Ljava/lang/String;
        .annotation build Lorg/b/a/d;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "location"    # Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;
    .param p4, "land"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 117
    new-instance v0, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/story/StoryBaseActivity$1;-><init>(Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$StorySelectLocation;Ljava/lang/String;)V

    .line 131
    .local v0, "storyOpener":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 133
    return-void
.end method

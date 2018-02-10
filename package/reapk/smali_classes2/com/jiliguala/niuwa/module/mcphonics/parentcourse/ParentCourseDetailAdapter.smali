.class public Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$a;
    }
.end annotation


# instance fields
.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mDataList:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    .param p2, "x2"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->goPronounce(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;)Lcom/jiliguala/niuwa/common/util/xutils/c;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->reportSubLessonView(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;)V

    return-void
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    .param p2, "x2"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->onItemClick(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;I)V

    return-void
.end method

.method private goPronounce(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;I)V
    .locals 7
    .param p1, "subsBean"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x1

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mContext:Landroid/content/Context;

    const-class v5, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 148
    const-string v4, "subtask_id"

    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->_id:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v4, "course_id"

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->_id:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v4, "rid"

    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->_id:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v3, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-direct {v3}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;-><init>()V

    .line 152
    .local v3, "ticket":Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;
    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->setResourceId(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    .line 153
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->setCourseId(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    move-result-object v4

    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->setTaskId(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->setTaskPostion(I)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    move-result-object v4

    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->setTaskType(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    .line 154
    const-string v4, "PARAM_COURSE_TICKET"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    new-instance v4, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    invoke-direct {v4}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;-><init>()V

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->setLessons(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->setPosition(I)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    move-result-object v4

    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->_id:Ljava/lang/String;

    .line 157
    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->setRedId(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->setType(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->build()Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    move-result-object v2

    .line 158
    .local v2, "taskTicket":Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    if-eqz v4, :cond_0

    .line 159
    const-string v4, "mc_pc_sub_task_ticket"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 161
    :cond_0
    const-string v4, "cancel_cd"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    const-string v4, "show_score"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 164
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 165
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 166
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const v5, 0x7f01001d

    const v6, 0x7f010013

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 168
    :cond_1
    return-void
.end method

.method private onItemClick(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;I)V
    .locals 11
    .param p1, "subsBean"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    .param p2, "position"    # I

    .prologue
    const v10, 0x7f01001d

    const v9, 0x7f010013

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 67
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isPronounce()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 68
    const-string v5, "PREFS_KEY_HAS_OPEN_RECORD_PERMISSION"

    invoke-static {v5, v8}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v1

    .line 69
    .local v1, "hasOpenPermission":Z
    if-eqz v1, :cond_1

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->goPronounce(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;I)V

    .line 142
    .end local v1    # "hasOpenPermission":Z
    :cond_0
    :goto_0
    return-void

    .line 72
    .restart local v1    # "hasOpenPermission":Z
    :cond_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mContext:Landroid/content/Context;

    instance-of v5, v5, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    if-eqz v5, :cond_2

    .line 73
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    invoke-virtual {v5, v7}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->showProgress(Z)V

    .line 75
    :cond_2
    new-instance v0, Lcom/jiliguala/niuwa/common/util/v;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/v;-><init>()V

    .line 76
    .local v0, "checker":Lcom/jiliguala/niuwa/common/util/v;
    new-instance v5, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$1;

    invoke-direct {v5, p0, p1, p2}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$1;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;I)V

    invoke-virtual {v0, v5}, Lcom/jiliguala/niuwa/common/util/v;->a(Lcom/jiliguala/niuwa/common/util/v$a;)V

    goto :goto_0

    .line 99
    .end local v0    # "checker":Lcom/jiliguala/niuwa/common/util/v;
    .end local v1    # "hasOpenPermission":Z
    :cond_3
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 100
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mContext:Landroid/content/Context;

    const-class v6, Lcom/jiliguala/niuwa/module/video/VideoLandscapeActivity;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 102
    new-instance v5, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    invoke-direct {v5}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;-><init>()V

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->setLessons(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->setPosition(I)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    move-result-object v5

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->_id:Ljava/lang/String;

    .line 103
    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->setRedId(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->setType(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->build()Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    move-result-object v4

    .line 104
    .local v4, "taskTicket":Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    if-eqz v5, :cond_4

    .line 105
    const-string v5, "mc_pc_sub_task_ticket"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 107
    :cond_4
    const-string v5, "rid"

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->_id:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v5, "from_practise"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    const-string v5, "extra"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mContext:Landroid/content/Context;

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_0

    .line 112
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5, v10, v9}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 115
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "taskTicket":Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;
    :cond_5
    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->tgt:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->tgt:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&lid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->_id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&subtaskid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->_id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&bid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 119
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->status:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "tag":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mContext:Landroid/content/Context;

    const-class v6, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentSubCourseActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v5, "key_url"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v5, "KEY_SHOW_SUSPENSION_"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    const-string v5, "HIDE SUSPENSION SHARE"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    const-string v5, "typ"

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v5, "id"

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->_id:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    new-instance v5, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    invoke-direct {v5}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;-><init>()V

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->setLessons(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->setPosition(I)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    move-result-object v5

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->resource:Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean$ResourceBean;->_id:Ljava/lang/String;

    .line 129
    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->setRedId(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->setType(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->build()Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    move-result-object v4

    .line 130
    .restart local v4    # "taskTicket":Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    if-eqz v5, :cond_6

    .line 131
    const-string v5, "mc_pc_sub_task_ticket"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 133
    :cond_6
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mContext:Landroid/content/Context;

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_0

    .line 136
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5, v10, v9}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0
.end method

.method private reportSubLessonView(Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;)V
    .locals 3
    .param p1, "sub"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    .prologue
    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 172
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isMcWatch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const-string v1, "Type"

    const-string v2, "MC-video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :goto_0
    const-string v1, "Lesson Type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sub Lesson View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 180
    return-void

    .line 176
    :cond_0
    const-string v1, "Type"

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 190
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 195
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 201
    if-nez p2, :cond_1

    .line 202
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0b00f1

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 203
    new-instance v1, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$a;

    invoke-direct {v1, p2}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$a;-><init>(Landroid/view/View;)V

    .line 204
    .local v1, "holder":Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$a;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 209
    :goto_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    .line 210
    .local v3, "subsBean":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    const v2, 0x7f08035e

    .line 211
    .local v2, "resourceId":I
    const-string v4, ""

    .line 212
    .local v4, "title":Ljava/lang/String;
    const-string v5, "songtouch"

    iget-object v6, v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 213
    const v2, 0x7f0802e2

    .line 214
    const-string v4, "\u513f\u6b4c\u629a\u89e6"

    .line 231
    :cond_0
    :goto_1
    iget-object v5, v1, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    iget-object v5, v1, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isCompleted()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 235
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0802db

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 237
    .local v0, "drawableLeft":Landroid/graphics/drawable/Drawable;
    iget-object v5, v1, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object v5, v1, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$a;->d:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    .end local v0    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    :goto_2
    new-instance v5, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$2;

    invoke-direct {v5, p0, v3, p1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$2;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;I)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    return-object p2

    .line 206
    .end local v1    # "holder":Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$a;
    .end local v2    # "resourceId":I
    .end local v3    # "subsBean":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$a;

    .restart local v1    # "holder":Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$a;
    goto :goto_0

    .line 215
    .restart local v2    # "resourceId":I
    .restart local v3    # "subsBean":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    .restart local v4    # "title":Ljava/lang/String;
    :cond_2
    const-string v5, "song"

    iget-object v6, v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 216
    const v2, 0x7f0802e1

    .line 217
    const-string v4, "\u5b66\u5531\u513f\u6b4c"

    goto :goto_1

    .line 218
    :cond_3
    const-string v5, "word"

    iget-object v6, v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 219
    const v2, 0x7f0802e3

    .line 220
    const-string v4, "\u641e\u5b9a\u5355\u8bcd"

    goto :goto_1

    .line 221
    :cond_4
    const-string v5, "pronounce"

    iget-object v6, v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 222
    const v2, 0x7f0802e0

    .line 223
    const-string v4, "\u6f02\u4eae\u53d1\u97f3"

    goto :goto_1

    .line 224
    :cond_5
    const-string v5, "interaction"

    iget-object v6, v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 225
    const v2, 0x7f0802df

    .line 226
    const-string v4, "\u4eb2\u5b50\u6e38\u620f"

    goto :goto_1

    .line 227
    :cond_6
    const-string v5, "extension"

    iget-object v6, v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 228
    const v2, 0x7f0802de

    .line 229
    const-string v4, "\u62d3\u5c55\u6d3b\u52a8"

    goto/16 :goto_1

    .line 241
    :cond_7
    iget-object v5, v1, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 243
    iget-object v5, v1, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter$a;->d:Landroid/widget/TextView;

    const-string v6, "\u672a\u5b8c\u6210"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public update(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V
    .locals 2
    .param p1, "lessons"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mLesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .line 59
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->mDataList:Ljava/util/List;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->notifyDataSetChanged()V

    .line 64
    return-void
.end method

.class public Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity",
        "<",
        "Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;",
        "Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailUi;",
        ">;",
        "Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailUi;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;

.field backIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090096
    .end annotation
.end field

.field btnReport:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0900d1
    .end annotation
.end field

.field courseDesc:Landroid/widget/TextView;

.field courseName:Landroid/widget/TextView;

.field finishCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090206
    .end annotation
.end field

.field listen:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0902dc
    .end annotation
.end field

.field loadingProgress:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0902ed
    .end annotation
.end field

.field private mHeadView:Landroid/view/View;

.field private mId:Ljava/lang/String;

.field private mLessons:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

.field private mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

.field recyclerView:Landroid/widget/ListView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09043e
    .end annotation
.end field

.field titleIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    return-object v0
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->refreshData()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->reportSubLesonComplete(Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    return-void
.end method

.method private goToNewLessonSharePageActivity(Z)V
    .locals 3
    .param p1, "enablePostPurchaseEvent"    # Z

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/LandScapeNewMcPcLessonSharePageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "id"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v1, "title"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mLessons:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->ttl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v1, "thumb"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mLessons:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->thmb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v1, "score"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mLessons:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->score:F

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 200
    const-string v1, "flag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    const/16 v1, 0xa1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 202
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 114
    new-instance v0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->adapter:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;

    .line 115
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0165

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mHeadView:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mHeadView:Landroid/view/View;

    const v1, 0x7f09058e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->titleIcon:Landroid/widget/ImageView;

    .line 117
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mHeadView:Landroid/view/View;

    const v1, 0x7f090177

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->courseName:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mHeadView:Landroid/view/View;

    const v1, 0x7f090173

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->courseDesc:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->recyclerView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mHeadView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 120
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->recyclerView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->adapter:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    return-void
.end method

.method private refreshData()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;->onRefresh(Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void
.end method

.method private reportLessonComplete(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V
    .locals 3
    .param p1, "lessons"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .prologue
    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 216
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Lesson Complete"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->c(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Lesson Complete"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 219
    return-void
.end method

.method private reportSubLesonComplete(Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V
    .locals 11
    .param p1, "taskTicket"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .prologue
    .line 258
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v1, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "ID"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getResId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v8, "Position"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getPosition()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getSub()Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    move-result-object v7

    .line 263
    .local v7, "sub":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    if-eqz v7, :cond_0

    .line 264
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->isMcWatch()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 265
    const-string v8, "Type"

    const-string v9, "MC-video"

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getSectionScoreMap()Ljava/util/Map;

    move-result-object v6

    .line 273
    .local v6, "sectionScoreMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;>;"
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 274
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v2, "realScoreList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 277
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 278
    .local v5, "sectionID":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;

    .line 279
    .local v4, "sectionCompleteTemplete":Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;
    iget-object v9, v4, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->sectionID:Ljava/lang/String;

    iget v10, v4, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->result:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v4, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->sectionID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->result:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v4, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->sectionID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->realScore:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 267
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;>;"
    .end local v2    # "realScoreList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "sectionCompleteTemplete":Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;
    .end local v5    # "sectionID":Ljava/lang/String;
    .end local v6    # "sectionScoreMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;>;"
    :cond_1
    const-string v8, "Type"

    iget-object v9, v7, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 283
    .restart local v2    # "realScoreList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "sectionScoreMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;>;"
    :cond_2
    const-string v8, "Lesson Type"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v8, "Parents Score"

    invoke-interface {v1, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v8, "Real Section Score"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .end local v2    # "realScoreList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v8

    const-string v9, "Sub Lesson Complete"

    invoke-virtual {v8, v9, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 290
    return-void
.end method

.method private requestServer()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;->requestServer(Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public addCourseFinishWatcher()V
    .locals 4

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/f;

    .line 224
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity$1;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity$2;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity$2;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;)V

    .line 225
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 254
    return-void
.end method

.method back()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f090096
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->finish()V

    .line 147
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->createPresenter()Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->getUi()Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailUi;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailUi;
    .locals 0

    .prologue
    .line 85
    return-object p0
.end method

.method goListen()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f0902dc
        }
    .end annotation

    .prologue
    .line 166
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->listen:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    .local v1, "tag":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-static {p0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mLessons:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    if-eqz v2, :cond_0

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "LessonID"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mLessons:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->_id:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "audio click"

    invoke-virtual {v2, v3, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method goReport()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f0900d1
        }
    .end annotation

    .prologue
    .line 152
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mLessons:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    if-eqz v2, :cond_0

    .line 153
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "curBabyId":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jiliguala/niuwa/module/mcphonics/report/ReportH5Activity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "key_url"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mLessons:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->_id:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/jiliguala/niuwa/logic/m/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v2, "SHARE_THUMB"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mLessons:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->thmb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v2, "SHARE_TTL"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mLessons:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->ttl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v2, "SHARE_DESC"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v2, "SHARE_RID"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mLessons:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    .end local v0    # "curBabyId":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 294
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 295
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 296
    const/16 v0, 0xa1

    if-ne p1, v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->finish()V

    .line 300
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f0b003d

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->setContentView(I)V

    .line 92
    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 93
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->initView()V

    .line 94
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mId:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->addCourseFinishWatcher()V

    .line 96
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->requestServer()V

    .line 97
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->reportLessonViewAmplitude()V

    .line 98
    return-void
.end method

.method public onRefreshSuccess(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V
    .locals 1
    .param p1, "lessons"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mLessons:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->reportLessonComplete(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V

    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->goToNewLessonSharePageActivity(Z)V

    .line 211
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->showData(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V

    .line 212
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onResume()V

    .line 142
    return-void
.end method

.method public reportLessonViewAmplitude()V
    .locals 3

    .prologue
    .line 102
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Lesson View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public showData(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V
    .locals 5
    .param p1, "lessons"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 180
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->mLessons:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .line 181
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->courseDesc:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->desc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->courseName:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->ttl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->listen:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->audio:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->listen:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->audio:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 185
    invoke-static {p0}, Lcom/bumptech/glide/l;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/o;

    move-result-object v0

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->thmb:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->titleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/g;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 186
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->finishCount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->doneusers:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4eba\u5b8c\u6210"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->subs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->adapter:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailAdapter;->update(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->btnReport:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 191
    return-void

    :cond_1
    move v0, v2

    .line 183
    goto :goto_0

    :cond_2
    move v1, v2

    .line 190
    goto :goto_1
.end method

.method public showProgress(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 136
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->loadingProgress:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setVisibility(I)V

    .line 137
    return-void

    .line 136
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

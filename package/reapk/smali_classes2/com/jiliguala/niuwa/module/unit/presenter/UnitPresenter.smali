.class public Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mUnitView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;)V
    .locals 1
    .param p1, "unitView"    # Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->mUnitView:Ljava/lang/ref/WeakReference;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->mUnitView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->processToast(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;ZZ)V

    return-void
.end method

.method private processToast(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;ZZ)V
    .locals 3
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
    .param p2, "showToast"    # Z
    .param p3, "isFromClick"    # Z

    .prologue
    .line 146
    if-eqz p2, :cond_0

    .line 147
    if-eqz p3, :cond_2

    .line 148
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->hasCourse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->mUnitView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;->getCurrentIndicatorIndex()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 150
    .local v0, "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->reportWeixinUnlockSuccess(Ljava/lang/String;)V

    .line 152
    const-string v1, "\u89e3\u9501\u6210\u529f"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 170
    .end local v0    # "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    :cond_0
    :goto_0
    return-void

    .line 153
    .restart local v0    # "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    :cond_1
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const-string v1, "\u89e3\u9501\u5931\u8d25,\u8bf7\u6309\u7167\u6559\u7a0b\u89e3\u9501"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    .end local v0    # "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 158
    :cond_2
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->hasCourse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->mUnitView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;->getCurrentIndicatorIndex()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 160
    .restart local v0    # "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->reportWeixinUnlockSuccess(Ljava/lang/String;)V

    .line 162
    const-string v1, "\u89e3\u9501\u6210\u529f"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private reportWeixinUnlockSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 174
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Wei Xin Unlock Success"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 176
    return-void
.end method


# virtual methods
.method public refreshUnitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 3
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "unitId"    # Ljava/lang/String;
    .param p3, "courseId"    # Ljava/lang/String;
    .param p4, "openCourseReport"    # Z
    .param p5, "showToast"    # Z
    .param p6, "isFromClick"    # Z

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->mUnitView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->mUnitView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->mUnitView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 102
    invoke-interface {v1, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/network/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 103
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 104
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 105
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$2;

    invoke-direct {v2, p0, p5, p6, p4}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;ZZZ)V

    .line 106
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method public reportLessonCompleteAmplitude(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 5
    .param p1, "unitData"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    .line 214
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    if-nez v2, :cond_0

    .line 235
    :goto_0
    return-void

    .line 216
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 217
    .local v1, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Unit ID"

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->_id:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v3, "ID"

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courseindex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const/4 v0, 0x0

    .line 222
    .local v0, "courseState":Ljava/lang/String;
    :try_start_0
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courseindex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v0, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->status:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_1
    const-string v2, "locked"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    const-string v2, "State"

    const-string v3, "locked"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_1
    :goto_2
    const-string v3, "Category"

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courseindex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->cat:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Lesson Complete"

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/a/b;->c(Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Lesson Complete"

    invoke-virtual {v2, v3, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 227
    :cond_2
    const-string v2, "available"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "unavailable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 228
    :cond_3
    const-string v2, "State"

    const-string v3, "current"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 229
    :cond_4
    const-string v2, "completed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    const-string v2, "State"

    const-string v3, "completed"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 223
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public reportLessonViewAmplitude(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;I)V
    .locals 4
    .param p1, "unitData"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
    .param p2, "index"    # I

    .prologue
    .line 180
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    if-eqz v2, :cond_1

    .line 182
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v1, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Unit ID"

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->_id:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :try_start_0
    const-string v3, "ID"

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    :goto_0
    const/4 v0, 0x0

    .line 191
    .local v0, "courseState":Ljava/lang/String;
    :try_start_1
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v0, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->status:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    :goto_1
    const-string v2, "locked"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    const-string v2, "State"

    const-string v3, "locked"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_0
    :goto_2
    const-string v2, "Age"

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v3, "Category"

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->cat:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Lesson View"

    invoke-virtual {v2, v3, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 205
    .end local v0    # "courseState":Ljava/lang/String;
    .end local v1    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void

    .line 196
    .restart local v0    # "courseState":Ljava/lang/String;
    .restart local v1    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const-string v2, "available"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "unavailable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 197
    :cond_3
    const-string v2, "State"

    const-string v3, "current"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 198
    :cond_4
    const-string v2, "completed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    const-string v2, "State"

    const-string v3, "completed"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 192
    :catch_0
    move-exception v2

    goto :goto_1

    .line 186
    .end local v0    # "courseState":Ljava/lang/String;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public reportUnitShareDialogAmplitude(Ljava/lang/String;)V
    .locals 3
    .param p1, "unitId"    # Ljava/lang/String;

    .prologue
    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Unit ID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Unit Unlock Share Dialog"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 211
    return-void
.end method

.method public requestRecommendCourse()V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->mUnitView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 241
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->A(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 242
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 243
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 244
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$3;-><init>(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;)V

    .line 245
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 239
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 265
    return-void
.end method

.method public requestUnitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "unitId"    # Ljava/lang/String;
    .param p3, "courseId"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->mUnitView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->mUnitView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->mUnitView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 45
    invoke-interface {v1, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/network/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 46
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 47
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 48
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;)V

    .line 49
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.class Lcom/jiliguala/niuwa/module/settings/ScanResult$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/ScanResult;->requestUnitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jiliguala/niuwa/module/settings/ScanResult;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/ScanResult;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/ScanResult;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/ScanResult$2;->c:Lcom/jiliguala/niuwa/module/settings/ScanResult;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/settings/ScanResult$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/settings/ScanResult$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 9
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    .line 151
    if-eqz p1, :cond_2

    .line 153
    move-object v3, p1

    .line 154
    .local v3, "unitData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
    :try_start_0
    iget-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 155
    .local v0, "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/ScanResult$2;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 156
    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->subs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    .line 157
    .local v2, "subData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/settings/ScanResult$2;->b:Ljava/lang/String;

    iget-object v7, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->_id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 158
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/settings/ScanResult$2;->c:Lcom/jiliguala/niuwa/module/settings/ScanResult;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/settings/ScanResult;->access$000(Lcom/jiliguala/niuwa/module/settings/ScanResult;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;II)Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    move-result-object v1

    .line 159
    .local v1, "subCourseFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/settings/ScanResult$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v6, v2, v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->setSub(Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;)V

    .line 160
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/settings/ScanResult$2;->c:Lcom/jiliguala/niuwa/module/settings/ScanResult;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/settings/ScanResult;->access$000(Lcom/jiliguala/niuwa/module/settings/ScanResult;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->handleSubCourseStart(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v0    # "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    .end local v1    # "subCourseFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;
    .end local v2    # "subData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;
    :catch_0
    move-exception v4

    .line 172
    .end local v3    # "unitData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
    :cond_2
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 145
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 137
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/settings/ScanResult$2;->a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    return-void
.end method

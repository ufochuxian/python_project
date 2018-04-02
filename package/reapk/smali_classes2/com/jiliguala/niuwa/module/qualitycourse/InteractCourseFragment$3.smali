.class Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/spinner/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->setViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public a(I)V
    .locals 3
    .param p1, "selected"    # I

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->access$300(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->access$300(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/Age;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/Age;->channel:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->access$002(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$3;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->access$000(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->requestInteractCourse(IZLjava/lang/String;)V

    .line 203
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

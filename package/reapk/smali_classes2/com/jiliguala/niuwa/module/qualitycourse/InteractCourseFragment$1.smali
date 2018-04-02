.class Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->autoRefresh()V
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
    .line 145
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->access$000(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->refreshNew(Ljava/lang/String;)V

    .line 150
    return-void
.end method

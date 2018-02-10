.class Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/customview/b;


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
    .line 211
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$4;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorPageBackBtnClick()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public onRefreshButtonClick()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment$4;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseFragment;->autoRefresh()V

    .line 215
    return-void
.end method

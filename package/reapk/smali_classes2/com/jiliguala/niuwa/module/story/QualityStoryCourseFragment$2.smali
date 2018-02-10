.class Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/customview/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->setViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment$2;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorPageBackBtnClick()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onRefreshButtonClick()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment$2;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->autoRefresh()V

    .line 125
    return-void
.end method

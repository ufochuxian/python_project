.class Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->autoRefresh()V
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
    .line 111
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->refreshNew()V

    .line 115
    return-void
.end method

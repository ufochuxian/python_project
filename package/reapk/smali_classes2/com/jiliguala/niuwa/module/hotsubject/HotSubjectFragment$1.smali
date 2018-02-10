.class Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->autoRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment$1;->a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment$1;->a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->access$000(Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setRefreshing(Z)V

    .line 120
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment$1;->a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->refreshNew()V

    .line 121
    return-void
.end method

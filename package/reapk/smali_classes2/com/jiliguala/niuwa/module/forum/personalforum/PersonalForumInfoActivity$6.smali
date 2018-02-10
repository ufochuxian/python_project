.class Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->loadMoreData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;->access$600(Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 374
    return-void
.end method

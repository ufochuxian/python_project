.class Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadTaskAdded(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I

    .prologue
    .line 112
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->access$000(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->access$000(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->access$000(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/d;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->access$000(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/d;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->access$000(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/d;->b(Landroid/support/v4/app/ag;)V

    .line 120
    :cond_1
    return-void
.end method

.method public onDownloadTaskComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "full_path"    # Ljava/lang/String;
    .param p4, "download_type"    # I

    .prologue
    .line 124
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1$1;

    invoke-direct {v1, p0, p3}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1$1;-><init>(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    :cond_0
    return-void
.end method

.method public onDownloadTaskError(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I
    .param p4, "errorCode"    # I

    .prologue
    .line 152
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->access$000(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->access$000(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/d;->dismissAllowingStateLoss()V

    .line 155
    const-string v0, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void
.end method

.method public onDownloadTaskProgress(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I
    .param p4, "progress"    # J

    .prologue
    .line 142
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->access$000(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->access$000(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v0

    long-to-int v1, p4

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/d;->a(I)V

    .line 148
    :cond_0
    return-void
.end method

.method public onDownloadTaskStop(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I

    .prologue
    .line 164
    return-void
.end method

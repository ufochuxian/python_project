.class Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;->onDownloadTaskComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1$1;->b:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1$1;->b:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->access$000(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1$1;->b:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->access$000(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/d;->dismissAllowingStateLoss()V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1$1;->b:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$1$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    return-void
.end method

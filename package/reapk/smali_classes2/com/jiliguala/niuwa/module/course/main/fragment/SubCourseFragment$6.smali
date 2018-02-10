.class Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->showUpdateDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    .prologue
    .line 900
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$6;->b:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 903
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$6;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$6;->b:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$6;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->access$500(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;Ljava/lang/String;)V

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$6;->b:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->access$400(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 907
    return-void
.end method

.class Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->addEventObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Lcom/jiliguala/niuwa/logic/b/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    .prologue
    .line 986
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$8;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/a;)V
    .locals 3
    .param p1, "loginEvent"    # Lcom/jiliguala/niuwa/logic/b/a/a;

    .prologue
    .line 990
    iget v1, p1, Lcom/jiliguala/niuwa/logic/b/a/a;->a:I

    sparse-switch v1, :sswitch_data_0

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 992
    :sswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$8;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->onLoginSucceed()V

    goto :goto_0

    .line 995
    :sswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$8;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->onChildGained()V

    .line 997
    :sswitch_2
    const-string v1, "\u7ed1\u5b9a\u6210\u529f"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 998
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/login/a;->a(Z)V

    .line 999
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$8;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->access$800(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$8;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->access$800(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;->disMissWeChatBindPop()V

    .line 1001
    const/4 v0, 0x0

    .line 1002
    .local v0, "isInteract":Z
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$8;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$8;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->hasInteractCoursePay()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$8;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-boolean v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->wechatget:Z

    if-eqz v1, :cond_1

    .line 1003
    const/4 v0, 0x1

    .line 1005
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$8;->a:Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;->access$800(Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;)Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;->showWetChatUnBindDescPop(ZZ)V

    goto :goto_0

    .line 990
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1007 -> :sswitch_1
        0x1015 -> :sswitch_2
    .end sparse-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 986
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment$8;->a(Lcom/jiliguala/niuwa/logic/b/a/a;)V

    return-void
.end method

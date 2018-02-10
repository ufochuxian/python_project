.class public Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentSubCourseActivity;
.super Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;
.source "SourceFile"


# instance fields
.field private id:Ljava/lang/String;

.field private mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

.field private typ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public brideGoBack()V
    .locals 4

    .prologue
    .line 40
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->brideGoBack()V

    .line 41
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/f;

    const/16 v2, 0x1023

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentSubCourseActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-direct {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/b/a/f;-><init>(ILcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentSubCourseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 32
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentSubCourseActivity;->id:Ljava/lang/String;

    .line 33
    const-string v1, "typ"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentSubCourseActivity;->typ:Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentSubCourseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mc_pc_sub_task_ticket"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentSubCourseActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .line 36
    :cond_0
    return-void
.end method

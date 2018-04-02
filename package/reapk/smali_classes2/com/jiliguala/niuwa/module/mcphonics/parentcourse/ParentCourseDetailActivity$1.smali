.class Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->addCourseFinishWatcher()V
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
        "Lcom/jiliguala/niuwa/logic/b/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/f;)V
    .locals 2
    .param p1, "mcPcEvent"    # Lcom/jiliguala/niuwa/logic/b/a/f;

    .prologue
    .line 228
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/f;->b:I

    packed-switch v0, :pswitch_data_0

    .line 246
    :goto_0
    :pswitch_0
    return-void

    .line 232
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/b/a/f;->c:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->access$002(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .line 233
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->access$100(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;)V

    .line 234
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->access$000(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->access$200(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    goto :goto_0

    .line 239
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/b/a/f;->c:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->access$002(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .line 240
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->access$100(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;)V

    .line 241
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->access$000(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;->access$200(Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1023
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 225
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/f;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity$1;->a(Lcom/jiliguala/niuwa/logic/b/a/f;)V

    return-void
.end method

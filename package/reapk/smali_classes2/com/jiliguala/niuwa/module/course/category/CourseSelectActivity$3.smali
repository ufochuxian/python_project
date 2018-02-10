.class Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/spinner/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$3;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public a(I)V
    .locals 4
    .param p1, "selected"    # I

    .prologue
    .line 273
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$3;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$3;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$1200(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseAge;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseAge;->channel:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$902(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$3;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$3;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$900(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$3;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$1500(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$1700(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Ljava/lang/String;ILjava/lang/String;)V

    .line 275
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

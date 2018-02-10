.class Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->loadMoreSub()Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$1;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;)V
    .locals 3
    .param p1, "courseChannelModelTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$1;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$200(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;->courses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$1;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$200(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 96
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$1;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$200(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;->courses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 97
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$1;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$300(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$1;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$200(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->updateData(Ljava/util/ArrayList;Z)V

    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$1;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;->page:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$402(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;I)I

    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$1;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$102(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Z)Z

    .line 103
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$1;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$002(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Z)Z

    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$1;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$500(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;)V

    .line 105
    return-void

    .line 100
    :cond_1
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$DataModel;->courses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$1;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$102(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Z)Z

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$1;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$002(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Z)Z

    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$1;->a:Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;->access$102(Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity;Z)Z

    .line 90
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/course/category/CourseSelectActivity$1;->a(Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;)V

    return-void
.end method

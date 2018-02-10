.class Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 231
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$a;->a:Ljava/lang/ref/WeakReference;

    .line 232
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 240
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 241
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 244
    :pswitch_0
    :try_start_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 245
    .local v5, "position":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->access$200(Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    .line 246
    .local v1, "course":Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;->_id:Ljava/lang/String;

    .line 247
    .local v3, "id":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 248
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v4, Landroid/content/Intent;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->access$300(Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;)Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "KEY_COURSE_ID"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v6, "course"

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 251
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 252
    const/high16 v6, 0x10000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 253
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->access$300(Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 254
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->access$300(Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;)Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    const v7, 0x7f01001d

    const v8, 0x7f010013

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "course":Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "position":I
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

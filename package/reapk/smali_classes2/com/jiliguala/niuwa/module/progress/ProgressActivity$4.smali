.class Lcom/jiliguala/niuwa/module/progress/ProgressActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$4;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$4;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$600(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DetailModel;

    .line 297
    .local v0, "detail":Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DetailModel;
    if-eqz v0, :cond_1

    .line 298
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DetailModel;->typ:Ljava/lang/String;

    const-string v3, "done"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DetailModel;->typ:Ljava/lang/String;

    const-string v3, "alldone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$4;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$800(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Lcom/jiliguala/niuwa/common/util/xutils/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    :cond_1
    :goto_0
    return-void

    .line 302
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$4;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    const-class v3, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "KEY_COURSE_ID"

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DetailModel;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$4;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

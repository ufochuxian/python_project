.class Lcom/jiliguala/niuwa/module/progress/ProgressActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->addGridView()V
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
    .line 210
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$3;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x4

    .line 215
    const v4, 0x7f090553

    invoke-virtual {p2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 216
    .local v2, "tag":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$3;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$400(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 217
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 219
    .local v3, "tagInt":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 220
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$3;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$400(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;

    move-result-object v4

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DataPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DataPart;->month:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;

    .line 221
    .local v1, "daily":Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;
    iget v5, v1, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;->day:I

    if-ne v3, v5, :cond_0

    .line 222
    const v4, 0x7f0904b7

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 223
    .local v0, "bg":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$3;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$500(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->clearFocus(Landroid/view/View;)V

    .line 225
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$3;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$500(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->setFocus(Landroid/view/View;)V

    .line 226
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$3;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$600(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;

    move-result-object v4

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;->detail:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;->updateData(Ljava/util/ArrayList;)V

    .line 228
    iget-object v4, v1, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;->detail:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 229
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$3;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-virtual {v4, v3}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->updateText(I)V

    .line 241
    .end local v0    # "bg":Landroid/view/View;
    .end local v1    # "daily":Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;
    .end local v3    # "tagInt":I
    :cond_1
    :goto_0
    return-void

    .line 231
    .restart local v0    # "bg":Landroid/view/View;
    .restart local v1    # "daily":Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;
    .restart local v3    # "tagInt":I
    :cond_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$3;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$700(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 237
    .end local v0    # "bg":Landroid/view/View;
    .end local v1    # "daily":Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;
    :cond_3
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$3;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$600(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;->clear()V

    .line 238
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$3;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$700(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

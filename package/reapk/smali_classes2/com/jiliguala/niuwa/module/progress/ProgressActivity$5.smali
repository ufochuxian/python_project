.class Lcom/jiliguala/niuwa/module/progress/ProgressActivity$5;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->doServerRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$5;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;)V
    .locals 11
    .param p1, "monthlyProgressTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;

    .prologue
    .line 365
    if-eqz p1, :cond_1

    .line 366
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$5;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$900(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)J

    move-result-wide v0

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DataPart;

    iget-wide v2, v2, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DataPart;->start:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$5;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$1000(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)J

    move-result-wide v0

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DataPart;

    iget-wide v2, v2, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DataPart;->end:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$5;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$402(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;)Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;

    .line 370
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$5;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$500(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$5;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$400(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DataPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DataPart;->month:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$5;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$400(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;

    move-result-object v2

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DataPart;

    iget-wide v2, v2, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DataPart;->start:J

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$5;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$400(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;

    move-result-object v4

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DataPart;

    iget-wide v4, v4, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DataPart;->end:J

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$5;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$400(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;

    move-result-object v6

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DataPart;

    iget v6, v6, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DataPart;->audios_target:I

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$5;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$400(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;

    move-result-object v7

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DataPart;

    iget v7, v7, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DataPart;->videos_target:I

    invoke-virtual/range {v0 .. v7}, Lcom/jiliguala/niuwa/module/progress/adapter/CalendarAdapter;->updateData(Ljava/util/ArrayList;JJII)V

    .line 372
    const/4 v10, -0x1

    .line 374
    .local v10, "tagInt":I
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$5;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$1100(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 378
    :goto_0
    const/4 v0, -0x1

    if-eq v10, v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$5;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$400(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;

    move-result-object v0

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DataPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DataPart;->month:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;

    .line 380
    .local v8, "daily":Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;
    iget v1, v8, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;->day:I

    if-ne v10, v1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$5;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$600(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;

    move-result-object v0

    iget-object v1, v8, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;->detail:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;->updateData(Ljava/util/ArrayList;)V

    .line 390
    .end local v8    # "daily":Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;
    .end local v10    # "tagInt":I
    :cond_1
    :goto_1
    return-void

    .line 375
    .restart local v10    # "tagInt":I
    :catch_0
    move-exception v9

    .line 376
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 386
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$5;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$600(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/progress/adapter/DetailListAdapter;->clear()V

    goto :goto_1
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 361
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 352
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$5;->a(Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;)V

    return-void
.end method

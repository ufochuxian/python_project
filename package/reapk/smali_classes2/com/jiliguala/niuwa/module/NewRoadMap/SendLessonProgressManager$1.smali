.class Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->sendProgress(Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;

.field final synthetic b:Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;->b:Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;->a:Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V
    .locals 1
    .param p1, "template"    # Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;->b:Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->access$000(Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;)Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;->b:Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->access$000(Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;)Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;->onSendProgressSuccess(Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V

    .line 57
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;->b:Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;

    iget v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->mReportCounter:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;->b:Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;->a:Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->sendProgress(Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;->b:Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->access$000(Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;)Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;->b:Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->access$000(Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;)Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;->onSendProgressFail()V

    goto :goto_0
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;->a(Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V

    return-void
.end method

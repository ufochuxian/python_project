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
        "Ljava/lang/Void;",
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
    .line 44
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;->b:Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;->a:Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;->b:Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->access$000(Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;)Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;->b:Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->access$000(Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;)Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;->onSendProgressSuccess()V

    .line 56
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;->b:Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;

    iget v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->mReportCounter:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;->b:Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;->a:Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->sendProgress(Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;->b:Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->access$000(Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;)Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;->b:Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->access$000(Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;)Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;->onSendProgressFail()V

    goto :goto_0
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;->a(Ljava/lang/Void;)V

    return-void
.end method

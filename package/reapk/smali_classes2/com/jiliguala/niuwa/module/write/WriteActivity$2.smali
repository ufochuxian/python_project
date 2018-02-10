.class Lcom/jiliguala/niuwa/module/write/WriteActivity$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/write/WriteActivity;->reportSubCourseFinish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$ScreenShot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/write/WriteActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/write/WriteActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/write/WriteActivity;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2;->b:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 4
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2;->b:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->access$502(Lcom/jiliguala/niuwa/module/write/WriteActivity;Z)Z

    .line 347
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2;->b:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->access$600(Lcom/jiliguala/niuwa/module/write/WriteActivity;)Lcom/jiliguala/niuwa/module/write/WriteActivity$a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1;-><init>(Lcom/jiliguala/niuwa/module/write/WriteActivity$2;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/write/WriteActivity$a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 370
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2;->b:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2;->b:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->access$400(Lcom/jiliguala/niuwa/module/write/WriteActivity;)V

    .line 337
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2;->b:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->access$502(Lcom/jiliguala/niuwa/module/write/WriteActivity;Z)Z

    .line 339
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2;->b:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->finish()V

    .line 341
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 326
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/write/WriteActivity$2;->a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    return-void
.end method

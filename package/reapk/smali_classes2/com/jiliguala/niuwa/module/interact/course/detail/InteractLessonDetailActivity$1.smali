.class Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->onReceivedPayResult(Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity$1;->a:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity$1;->a:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->dismissConfirmPayResultDialog()V

    .line 211
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity$1;->a:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->onBackPressed()V

    .line 212
    return-void
.end method

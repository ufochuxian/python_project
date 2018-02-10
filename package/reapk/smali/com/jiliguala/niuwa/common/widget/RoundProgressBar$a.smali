.class Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$a;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 456
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar$a;->a:Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;->e(Lcom/jiliguala/niuwa/common/widget/RoundProgressBar;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 457
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 458
    return-void
.end method

.class Lcom/jiliguala/niuwa/services/TimerService$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/services/TimerService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/services/TimerService;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/services/TimerService;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/services/TimerService;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 37
    iput-object p1, p0, Lcom/jiliguala/niuwa/services/TimerService$1;->a:Lcom/jiliguala/niuwa/services/TimerService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/TimerService$1;->a:Lcom/jiliguala/niuwa/services/TimerService;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/jiliguala/niuwa/services/TimerService;->b(Lcom/jiliguala/niuwa/services/TimerService;J)V

    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/TimerService$1;->a:Lcom/jiliguala/niuwa/services/TimerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/services/TimerService;->a(Lcom/jiliguala/niuwa/services/TimerService;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 48
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/TimerService$1;->a:Lcom/jiliguala/niuwa/services/TimerService;

    invoke-static {v0, p1, p2}, Lcom/jiliguala/niuwa/services/TimerService;->a(Lcom/jiliguala/niuwa/services/TimerService;J)J

    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/TimerService$1;->a:Lcom/jiliguala/niuwa/services/TimerService;

    iget-object v1, p0, Lcom/jiliguala/niuwa/services/TimerService$1;->a:Lcom/jiliguala/niuwa/services/TimerService;

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/TimerService;->a(Lcom/jiliguala/niuwa/services/TimerService;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/jiliguala/niuwa/services/TimerService;->b(Lcom/jiliguala/niuwa/services/TimerService;J)V

    .line 42
    return-void
.end method

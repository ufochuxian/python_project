.class Lcom/jiliguala/niuwa/services/TrafficCounterService$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/services/TrafficCounterService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/services/TrafficCounterService;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/services/TrafficCounterService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/services/TrafficCounterService;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService$1;->a:Lcom/jiliguala/niuwa/services/TrafficCounterService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/TrafficCounterService$1;->a:Lcom/jiliguala/niuwa/services/TrafficCounterService;

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/TrafficCounterService;->a(Lcom/jiliguala/niuwa/services/TrafficCounterService;)V

    .line 66
    return-void
.end method

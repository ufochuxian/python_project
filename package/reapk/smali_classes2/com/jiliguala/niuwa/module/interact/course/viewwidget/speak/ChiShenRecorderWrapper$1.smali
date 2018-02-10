.class Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chivox/android/AIRecorder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([BI)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 95
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->access$200(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;)J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Lcom/chivox/AIEngine;->aiengine_feed(J[BI)I

    .line 96
    const-wide/16 v0, 0x0

    .line 97
    .local v0, "average":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 98
    aget-byte v3, p1, v2

    aget-byte v4, p1, v2

    mul-int/2addr v3, v4

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_0
    if-lez p2, :cond_1

    .line 101
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-long v6, p2

    div-long v6, v0, v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    .line 106
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;

    if-eqz v3, :cond_2

    .line 107
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;

    invoke-interface {v3, p1, p2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;->onData([BI)V

    .line 109
    :cond_2
    return-void
.end method

.method public onError()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;->onError()V

    .line 92
    :cond_0
    return-void
.end method

.method public onStarted()V
    .locals 7

    .prologue
    .line 64
    const/16 v0, 0x40

    new-array v3, v0, [B

    .line 66
    .local v3, "id":[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"coreProvideType\": \"cloud\",\"soundIntensityEnable\": 1, \"coreProvideType\": \"cloud\",\"app\": {\"userId\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->access$000(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}, \"audio\": {\"audioType\": \"wav\", \"channel\": 1, \"sampleBytes\": 2, \"sampleRate\": 16000}, \"request\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->access$100(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "param":Ljava/lang/String;
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->access$200(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;)J

    move-result-wide v0

    new-instance v4, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$AIEngineCallBack;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-direct {v4, v5}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$AIEngineCallBack;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;)V

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->access$300(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;)Landroid/content/Context;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/chivox/AIEngine;->aiengine_start(JLjava/lang/String;[BLcom/chivox/AIEngine$aiengine_callback;Ljava/lang/Object;)I

    move-result v6

    .line 73
    .local v6, "rv":I
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;->onStarted()V

    .line 76
    :cond_0
    return-void
.end method

.method public onStopped()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->access$200(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/chivox/AIEngine;->aiengine_stop(J)I

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->access$402(J)J

    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;->onStopped()V

    .line 85
    :cond_0
    return-void
.end method

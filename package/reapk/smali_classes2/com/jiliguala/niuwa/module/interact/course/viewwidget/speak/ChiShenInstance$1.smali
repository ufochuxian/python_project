.class Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x3

    .line 59
    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->access$000(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;)J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-nez v4, :cond_0

    .line 61
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 62
    .local v0, "buf":[B
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->access$100(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/chivox/AIEngine;->aiengine_get_device_id([BLjava/lang/Object;)I

    .line 63
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->access$202(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->access$100(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "aiengine.provision"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/chivox/AIEngineHelper;->extractResourceOnce(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "provisionPath":Ljava/lang/String;
    const-string v4, "{\"appKey\": \"%s\", \"secretKey\": \"%s\", \"provision\": \"%s\", \"cloud\": {\"server\": \"ws://cloud.chivox.com:8080\"}}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->access$300(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->access$400(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "cfg":Ljava/lang/String;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->access$100(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/chivox/AIEngine;->aiengine_new(Ljava/lang/String;Ljava/lang/Object;)J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->access$002(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;J)J

    .line 75
    .end local v0    # "buf":[B
    .end local v1    # "cfg":Ljava/lang/String;
    .end local v3    # "provisionPath":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->access$000(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;)J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;)I

    move-result v4

    if-ge v4, v8, :cond_1

    .line 76
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->init()V

    .line 77
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->access$508(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;)I

    .line 87
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->access$502(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 84
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

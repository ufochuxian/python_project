.class final Lcom/alibaba/sdk/android/feedback/impl/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/feedback/util/IWxCallback;


# instance fields
.field final synthetic a:Ljava/util/concurrent/Callable;

.field final synthetic b:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/impl/c;->a:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/impl/c;->b:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/impl/c;->b:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/impl/c;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mFeedbackCustomInfoMap:Ljava/util/Map;

    const-string v1, "conf"

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "getConfFailed"

    const-string v1, "network error"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/util/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FeedbackAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "conf onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". This might be error of the internet settings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method

.method public varargs onSuccess([Ljava/lang/Object;)V
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    aget-object v0, p1, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/String;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->access$000(Lorg/json/JSONObject;)V

    sget-object v1, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mFeedbackCustomInfoMap:Ljava/util/Map;

    const-string v2, "conf"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->access$100(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/impl/c;->a:Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/impl/c;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    :cond_0
    const-string v1, "getConfSuccess"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/feedback/util/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FeedbackAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "success retrieved the conf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mFeedbackCustomInfoMap:Ljava/util/Map;

    const-string v2, "conf"

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FeedbackAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse json data exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "getConfFailed"

    const-string v1, "parse data error"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/util/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

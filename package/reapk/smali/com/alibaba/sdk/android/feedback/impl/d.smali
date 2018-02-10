.class final Lcom/alibaba/sdk/android/feedback/impl/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/alibaba/sdk/android/feedback/util/IWxCallback;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/alibaba/sdk/android/feedback/util/IWxCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/impl/d;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/impl/d;->b:Lcom/alibaba/sdk/android/feedback/util/IWxCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/alibaba/sdk/android/feedback/util/a/b;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/impl/d;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/impl/d;->b:Lcom/alibaba/sdk/android/feedback/util/IWxCallback;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->feedbackUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/getConfiguration.do"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/feedback/util/a/b;-><init>(Ljava/util/Map;Lcom/alibaba/sdk/android/feedback/util/IWxCallback;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/util/a/b;->a()[B

    return-void
.end method

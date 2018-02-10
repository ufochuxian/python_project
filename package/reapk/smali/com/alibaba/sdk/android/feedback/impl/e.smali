.class final Lcom/alibaba/sdk/android/feedback/impl/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mContext:Landroid/content/Context;

    const-class v2, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "URL"

    sget-object v2, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->webviewUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    sget-object v1, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return-object v0
.end method

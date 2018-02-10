.class final Lcom/alibaba/sdk/android/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/a/e;

.field final synthetic b:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/a/e;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/a/b;->a:Lcom/alibaba/sdk/android/a/e;

    iput-object p2, p0, Lcom/alibaba/sdk/android/a/b;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/alibaba/sdk/android/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/sdk/android/a/a;->b()Lcom/alibaba/sdk/android/a/h;

    move-result-object v0

    const-string v1, "Unable to execute remain task in queue, return."

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/a/h;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alibaba/sdk/android/a/a;->b()Lcom/alibaba/sdk/android/a/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/a/b;->a:Lcom/alibaba/sdk/android/a/e;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/a/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] from report queue."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/a/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/a/b;->a:Lcom/alibaba/sdk/android/a/e;

    iget-object v1, p0, Lcom/alibaba/sdk/android/a/b;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/a/a;->a(Lcom/alibaba/sdk/android/a/e;Ljava/util/Map;)V

    goto :goto_0
.end method

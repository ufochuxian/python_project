.class final Lcom/xiaomi/mipush/sdk/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/y;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/xmpush/thrift/r;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/r;-><init>()V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/r;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/r;

    const-string v1, "client_info_update"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/r;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/r;

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/r;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/r;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/r;->a(Ljava/util/Map;)Lcom/xiaomi/xmpush/thrift/r;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/r;->h()Ljava/util/Map;

    move-result-object v1

    const-string v2, "imei_md5"

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/push/service/y;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/g/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/n;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/xiaomi/mipush/sdk/n;->a(Lorg/apache/thrift/b;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/i;)V

    :cond_0
    return-void
.end method

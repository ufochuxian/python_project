.class final Lcom/xiaomi/push/service/ag;
.super Lcom/xiaomi/push/service/XMPushService$g;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic b:Lcom/xiaomi/xmpush/thrift/o;


# direct methods
.method constructor <init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/o;)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/push/service/ag;->a:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/ag;->b:Lcom/xiaomi/xmpush/thrift/o;

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService$g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/ag;->a:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/ag;->a:Lcom/xiaomi/push/service/XMPushService;

    iget-object v2, p0, Lcom/xiaomi/push/service/ag;->b:Lcom/xiaomi/xmpush/thrift/o;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/o;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/push/service/ag;->b:Lcom/xiaomi/xmpush/thrift/o;

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/o;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/xmpush/thrift/o;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/p; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/ag;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "send app absent message."

    return-object v0
.end method
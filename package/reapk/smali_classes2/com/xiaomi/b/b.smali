.class Lcom/xiaomi/b/b;
.super Lcom/xiaomi/push/service/XMPushService$g;


# instance fields
.field final synthetic a:Lcom/xiaomi/b/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/b/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/b/b;->a:Lcom/xiaomi/b/a;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/b;->a:Lcom/xiaomi/b/a;

    invoke-static {v0}, Lcom/xiaomi/b/a;->a(Lcom/xiaomi/b/a;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "Handling bind stats"

    return-object v0
.end method

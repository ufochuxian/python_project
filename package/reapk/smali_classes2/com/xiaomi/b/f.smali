.class Lcom/xiaomi/b/f;
.super Lcom/xiaomi/push/service/i$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/b/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/b/f;->a:Lcom/xiaomi/b/e;

    invoke-direct {p0}, Lcom/xiaomi/push/service/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/b/b$a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/xiaomi/push/b/b$a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/b/e;->a()Lcom/xiaomi/b/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/b/b$a;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/e;->a(I)V

    :cond_0
    return-void
.end method

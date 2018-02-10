.class Lcom/xiaomi/network/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/network/j$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/network/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/network/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/network/k;->a:Lcom/xiaomi/network/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/common/logger/thrift/mfs/b;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/network/k;->a:Lcom/xiaomi/network/f;

    invoke-virtual {v0}, Lcom/xiaomi/network/f;->j()Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()D
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/network/k;->a:Lcom/xiaomi/network/f;

    const-string v1, "f3.mi-stat.gslb.mi-idc.com"

    invoke-virtual {v0, v1}, Lcom/xiaomi/network/f;->b(Ljava/lang/String;)Lcom/xiaomi/network/b;

    move-result-object v2

    const-wide v0, 0x3fb999999999999aL    # 0.1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/network/b;->g()D

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

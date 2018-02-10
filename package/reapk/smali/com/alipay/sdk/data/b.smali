.class final Lcom/alipay/sdk/data/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/sdk/data/a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/data/a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alipay/sdk/data/b;->b:Lcom/alipay/sdk/data/a;

    iput-object p2, p0, Lcom/alipay/sdk/data/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 108
    :try_start_0
    new-instance v0, Lcom/alipay/sdk/packet/impl/b;

    invoke-direct {v0}, Lcom/alipay/sdk/packet/impl/b;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/alipay/sdk/data/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/packet/impl/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/packet/b;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/alipay/sdk/data/b;->b:Lcom/alipay/sdk/data/a;

    iget-object v0, v0, Lcom/alipay/sdk/packet/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/data/a;->a(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/alipay/sdk/data/b;->b:Lcom/alipay/sdk/data/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "timeout"

    invoke-virtual {v0}, Lcom/alipay/sdk/data/a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "tbreturl"

    iget-object v0, v0, Lcom/alipay/sdk/data/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/sdk/sys/b;->a:Landroid/content/Context;

    const-string v2, "alipay_cashier_dynamic_config"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/alipay/sdk/util/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

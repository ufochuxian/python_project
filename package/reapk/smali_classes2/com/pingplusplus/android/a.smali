.class Lcom/pingplusplus/android/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/pingplusplus/android/PaymentActivity;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/pingplusplus/android/a;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 233
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget-boolean v0, v0, Lcom/pingplusplus/android/PingppObject;->isOne:Z

    if-eqz v0, :cond_0

    .line 234
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget-object v0, v0, Lcom/pingplusplus/android/PingppObject;->dataCollection:Lcom/pingplusplus/android/PingppDataCollection;

    sget-object v1, Lcom/pingplusplus/android/PingppDataCollection$a;->b:Lcom/pingplusplus/android/PingppDataCollection$a;

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PingppDataCollection;->a(Lcom/pingplusplus/android/PingppDataCollection$a;)V

    .line 235
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget-object v0, v0, Lcom/pingplusplus/android/PingppObject;->dataCollection:Lcom/pingplusplus/android/PingppDataCollection;

    iget-object v1, p0, Lcom/pingplusplus/android/a;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-static {v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Lcom/pingplusplus/android/PaymentActivity;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PingppDataCollection;->a(Lorg/json/JSONObject;)V

    .line 242
    :goto_0
    return-void

    .line 237
    :cond_0
    new-instance v0, Lcom/pingplusplus/android/PingppDataCollection;

    iget-object v1, p0, Lcom/pingplusplus/android/a;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-direct {v0, v1}, Lcom/pingplusplus/android/PingppDataCollection;-><init>(Landroid/content/Context;)V

    .line 238
    iget-object v1, p0, Lcom/pingplusplus/android/a;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-static {v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Lcom/pingplusplus/android/PaymentActivity;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PingppDataCollection;->a(Lorg/json/JSONObject;)V

    .line 239
    sget-object v1, Lcom/pingplusplus/android/PingppDataCollection$a;->a:Lcom/pingplusplus/android/PingppDataCollection$a;

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PingppDataCollection;->a(Lcom/pingplusplus/android/PingppDataCollection$a;)V

    .line 240
    invoke-virtual {v0}, Lcom/pingplusplus/android/PingppDataCollection;->sendToServer()V

    goto :goto_0
.end method

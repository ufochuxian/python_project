.class public Lcom/pingplusplus/android/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/pingplusplus/android/j;


# direct methods
.method public constructor <init>(Lcom/pingplusplus/android/j;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/pingplusplus/android/j$b;->b:Lcom/pingplusplus/android/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p2, p0, Lcom/pingplusplus/android/j$b;->a:Landroid/content/Context;

    .line 207
    return-void
.end method


# virtual methods
.method public paymentResult(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/pingplusplus/android/j$b;->b:Lcom/pingplusplus/android/j;

    iget-object v0, v0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "fail"

    const-string v2, "unknown_error"

    invoke-virtual {v0, v1, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_0
    return-void

    .line 247
    :cond_0
    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/pingplusplus/android/j$b;->b:Lcom/pingplusplus/android/j;

    iget-object v0, v0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/pingplusplus/android/j$b;->b:Lcom/pingplusplus/android/j;

    iget-object v0, v0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "fail"

    const-string v2, "unknown_error"

    invoke-virtual {v0, v1, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 230
    if-nez p1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/pingplusplus/android/j$b;->b:Lcom/pingplusplus/android/j;

    iget-object v0, v0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "fail"

    const-string v2, "unknown_error"

    invoke-virtual {v0, v1, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_0
    return-void

    .line 234
    :cond_0
    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/pingplusplus/android/j$b;->b:Lcom/pingplusplus/android/j;

    iget-object v0, v0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/pingplusplus/android/j$b;->b:Lcom/pingplusplus/android/j;

    iget-object v0, v0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "fail"

    const-string v2, "unknown_error"

    invoke-virtual {v0, v1, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public testmodeResult(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/pingplusplus/android/j$b;->b:Lcom/pingplusplus/android/j;

    iget-object v0, v0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "fail"

    const-string v2, "unknown_error"

    invoke-virtual {v0, v1, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_0
    return-void

    .line 215
    :cond_0
    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/pingplusplus/android/j$b;->b:Lcom/pingplusplus/android/j;

    iget-object v0, v0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_1
    const-string v0, "cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/pingplusplus/android/j$b;->b:Lcom/pingplusplus/android/j;

    iget-object v0, v0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "cancel"

    const-string v2, "user_cancelled"

    invoke-virtual {v0, v1, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_2
    const-string v0, "fail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/pingplusplus/android/j$b;->b:Lcom/pingplusplus/android/j;

    iget-object v0, v0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "fail"

    const-string v2, "channel_returns_fail"

    invoke-virtual {v0, v1, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_3
    const-string v0, "error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    iget-object v0, p0, Lcom/pingplusplus/android/j$b;->b:Lcom/pingplusplus/android/j;

    iget-object v0, v0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "fail"

    const-string v2, "testmode_notify_failed"

    invoke-virtual {v0, v1, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_4
    iget-object v0, p0, Lcom/pingplusplus/android/j$b;->b:Lcom/pingplusplus/android/j;

    iget-object v0, v0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "fail"

    const-string v2, "unknown_error"

    invoke-virtual {v0, v1, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

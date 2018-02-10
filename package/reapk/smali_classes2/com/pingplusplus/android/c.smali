.class Lcom/pingplusplus/android/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/android/pay/PayCallBack;


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/pingplusplus/android/PaymentActivity;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/pingplusplus/android/c;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isHideLoadingDialog()Z
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x0

    return v0
.end method

.method public onPayResult(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/pingplusplus/android/c;->a:Lcom/pingplusplus/android/PaymentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Lcom/pingplusplus/android/PaymentActivity;I)I

    .line 490
    iget-object v0, p0, Lcom/pingplusplus/android/c;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-static {v0, p1, p2}, Lcom/pingplusplus/android/PaymentActivity;->a(Lcom/pingplusplus/android/PaymentActivity;ILjava/lang/String;)V

    .line 491
    return-void
.end method

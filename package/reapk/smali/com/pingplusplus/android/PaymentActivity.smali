.class public Lcom/pingplusplus/android/PaymentActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pingplusplus/android/PaymentActivity$a;
    }
.end annotation


# static fields
.field public static final EXTRA_CHARGE:Ljava/lang/String; = "com.pingplusplus.android.PaymentActivity.CHARGE"

.field private static final l:[Ljava/lang/String;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Lorg/json/JSONObject;

.field private g:Lcom/pingplusplus/android/m;

.field private h:Z

.field private i:Lcom/pingplusplus/android/f;

.field private j:Ljava/lang/String;

.field private k:Lcom/pingplusplus/android/j;

.field private m:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "alipay"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "wx"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "upacp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "upmp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bfb"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "yeepay_wap"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "jdpay_wap"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bfb_wap"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "qpay"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mmdpay_wap"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "fqlpay_wap"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "qgbc_wap"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cmb_wallet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pingplusplus/android/PaymentActivity;->l:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-object v2, p0, Lcom/pingplusplus/android/PaymentActivity;->c:Ljava/lang/String;

    .line 65
    iput v1, p0, Lcom/pingplusplus/android/PaymentActivity;->a:I

    .line 68
    iput v1, p0, Lcom/pingplusplus/android/PaymentActivity;->d:I

    .line 71
    iput v1, p0, Lcom/pingplusplus/android/PaymentActivity;->e:I

    .line 74
    const-string v0, "cancel"

    iput-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->b:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lcom/pingplusplus/android/PaymentActivity;->g:Lcom/pingplusplus/android/m;

    .line 80
    iput-boolean v1, p0, Lcom/pingplusplus/android/PaymentActivity;->h:Z

    .line 792
    new-instance v0, Lcom/pingplusplus/android/PaymentActivity$a;

    invoke-direct {v0, p0}, Lcom/pingplusplus/android/PaymentActivity$a;-><init>(Lcom/pingplusplus/android/PaymentActivity;)V

    iput-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->m:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/pingplusplus/android/PaymentActivity;I)I
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/pingplusplus/android/PaymentActivity;->d:I

    return p1
.end method

.method static synthetic a(Lcom/pingplusplus/android/PaymentActivity;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 727
    if-nez p2, :cond_0

    .line 728
    const-string v0, "cancel"

    const-string v1, "user_cancelled"

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :goto_0
    return-void

    .line 732
    :cond_0
    const/16 v0, -0xf

    if-ne p1, v0, :cond_1

    .line 733
    const-string v0, "fail"

    const-string v1, "network is error"

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 737
    :cond_1
    const-string v0, "statecode={"

    .line 738
    const-string v1, "statecode="

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 739
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 740
    const-string v1, "};order_no="

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 741
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 742
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 743
    const-string v0, "success"

    invoke-virtual {p0, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 744
    :cond_2
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 745
    const-string v0, "in_process"

    invoke-virtual {p0, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 746
    :cond_3
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 747
    :cond_4
    const-string v0, "cancel"

    const-string v1, "user_cancelled"

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 748
    :cond_5
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 749
    const-string v0, "fail"

    const-string v1, "bfb_not_supported_method"

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 750
    :cond_6
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 751
    const-string v0, "fail"

    const-string v1, "bfb_token_expired"

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 753
    :cond_7
    const-string v0, "fail"

    const-string v1, "unknown_error"

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/pingplusplus/android/PaymentActivity;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/pingplusplus/android/PaymentActivity;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    :try_start_0
    const-string v0, "upmp"

    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "upacp"

    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    invoke-direct {p0, p1}, Lcom/pingplusplus/android/PaymentActivity;->e(Lorg/json/JSONObject;)V

    .line 224
    :goto_0
    return-void

    .line 196
    :cond_1
    const-string v0, "wx"

    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    invoke-direct {p0, p1}, Lcom/pingplusplus/android/PaymentActivity;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iput-object v2, v0, Lcom/pingplusplus/android/PingppObject;->currentChannel:Ljava/lang/String;

    .line 222
    const-string v0, "fail"

    const-string v1, "invalid_credential"

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_2
    :try_start_1
    const-string v0, "alipay"

    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    invoke-direct {p0, p1}, Lcom/pingplusplus/android/PaymentActivity;->b(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 200
    :cond_3
    const-string v0, "bfb"

    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    invoke-direct {p0, p1}, Lcom/pingplusplus/android/PaymentActivity;->g(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 202
    :cond_4
    const-string v0, "bfb_wap"

    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 203
    invoke-direct {p0, p1}, Lcom/pingplusplus/android/PaymentActivity;->i(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 204
    :cond_5
    const-string v0, "yeepay_wap"

    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 205
    invoke-direct {p0, p1}, Lcom/pingplusplus/android/PaymentActivity;->h(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 206
    :cond_6
    const-string v0, "jdpay_wap"

    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 207
    invoke-direct {p0, p1}, Lcom/pingplusplus/android/PaymentActivity;->j(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 208
    :cond_7
    const-string v0, "qpay"

    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 209
    invoke-direct {p0, p1}, Lcom/pingplusplus/android/PaymentActivity;->d(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 210
    :cond_8
    const-string v0, "mmdpay_wap"

    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "fqlpay_wap"

    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 211
    :cond_9
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :cond_a
    const-string v0, "qgbc_wap"

    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 213
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :cond_b
    const-string v0, "cmb_wallet"

    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 215
    invoke-direct {p0, p1}, Lcom/pingplusplus/android/PaymentActivity;->k(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 217
    :cond_c
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/pingplusplus/android/PingppObject;->currentChannel:Ljava/lang/String;

    .line 218
    const-string v0, "fail"

    const-string v1, "invalid_credential"

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 531
    new-instance v0, Lcom/pingplusplus/android/a/e;

    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    invoke-direct {v0, p0, v1}, Lcom/pingplusplus/android/a/e;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->k:Lcom/pingplusplus/android/j;

    .line 532
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 183
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/pingplusplus/android/PaymentActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->m:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/pingplusplus/android/PaymentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 859
    :try_start_0
    invoke-virtual {p0}, Lcom/pingplusplus/android/PaymentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 860
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 864
    :goto_0
    return-object v0

    .line 861
    :catch_0
    move-exception v0

    .line 862
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 864
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pingplusplus/android/a;

    invoke-direct {v1, p0}, Lcom/pingplusplus/android/a;-><init>(Lcom/pingplusplus/android/PaymentActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 243
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 244
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 770
    new-instance v0, Lcom/pingplusplus/android/j;

    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    invoke-direct {v0, p0, v1}, Lcom/pingplusplus/android/j;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->k:Lcom/pingplusplus/android/j;

    .line 771
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 253
    const-string v0, "alipay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PaymentActivity start alipay credential : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    .line 256
    const-string v1, "orderInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v1, Lcom/pingplusplus/android/b;

    invoke-direct {v1, p0, v0}, Lcom/pingplusplus/android/b;-><init>(Lcom/pingplusplus/android/PaymentActivity;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v1}, Lcom/pingplusplus/android/b;->start()V

    .line 276
    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 285
    const-string v0, "wx"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaymentActivity start wx credential : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    .line 289
    const-string v0, "token_id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const-string v0, "PINGPP_SP"

    invoke-direct {p0, v0}, Lcom/pingplusplus/android/PaymentActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    :goto_0
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v1

    iput-object v0, v1, Lcom/pingplusplus/android/PingppObject;->wxAppId:Ljava/lang/String;

    .line 296
    :try_start_0
    invoke-direct {p0}, Lcom/pingplusplus/android/PaymentActivity;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    new-instance v1, Lcom/pingplusplus/android/n;

    invoke-direct {v1, p0, v0}, Lcom/pingplusplus/android/n;-><init>(Lcom/pingplusplus/android/PaymentActivity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->g:Lcom/pingplusplus/android/m;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_1
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v1

    iget-object v4, p0, Lcom/pingplusplus/android/PaymentActivity;->g:Lcom/pingplusplus/android/m;

    iput-object v4, v1, Lcom/pingplusplus/android/PingppObject;->pingppWxHandler:Lcom/pingplusplus/android/m;

    .line 309
    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->g:Lcom/pingplusplus/android/m;

    invoke-interface {v1}, Lcom/pingplusplus/android/m;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 310
    const-string v0, "invalid"

    const-string v1, "wx_app_not_installed"

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :goto_2
    return-void

    .line 292
    :cond_0
    const-string v0, "appId"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 299
    :cond_1
    :try_start_1
    new-instance v1, Lcom/pingplusplus/android/o;

    invoke-direct {v1, p0, v0}, Lcom/pingplusplus/android/o;-><init>(Lcom/pingplusplus/android/PaymentActivity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->g:Lcom/pingplusplus/android/m;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 301
    :catch_0
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 303
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget-object v0, v0, Lcom/pingplusplus/android/PingppObject;->currentChannel:Ljava/lang/String;

    .line 304
    const-string v1, "fail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel_sdk_not_included:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0d\u652f\u6301\u8be5\u6e20\u9053: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u3002\u7f3a\u5c11\u5fae\u4fe1\u7684 SDK\u3002"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->g:Lcom/pingplusplus/android/m;

    invoke-interface {v1}, Lcom/pingplusplus/android/m;->b()I

    move-result v1

    const v4, 0x22000001

    if-lt v1, v4, :cond_3

    move v1, v2

    .line 314
    :goto_3
    if-eqz v1, :cond_5

    .line 315
    iput v2, p0, Lcom/pingplusplus/android/PaymentActivity;->a:I

    .line 316
    const-string v1, "token_id"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 317
    const-string v1, "token_id"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    iget-object v2, p0, Lcom/pingplusplus/android/PaymentActivity;->g:Lcom/pingplusplus/android/m;

    invoke-interface {v2, v0, v1}, Lcom/pingplusplus/android/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 313
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 320
    :cond_4
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->g:Lcom/pingplusplus/android/m;

    invoke-interface {v0, v3}, Lcom/pingplusplus/android/m;->a(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 323
    :cond_5
    const-string v0, "fail"

    const-string v1, "wx_app_not_support"

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 869
    :try_start_0
    const-string v0, "com.tencent.mm.sdk.openapi.IWXAPI"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 870
    if-eqz v0, :cond_0

    .line 871
    const/4 v0, 0x1

    .line 874
    :goto_0
    return v0

    .line 873
    :catch_0
    move-exception v0

    .line 874
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 335
    :try_start_0
    const-string v0, "qpay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PaymentActivity start qpay credential : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    .line 338
    const-string v1, "app_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v2

    iput-object v1, v2, Lcom/pingplusplus/android/PingppObject;->qqAppId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 341
    :try_start_1
    new-instance v2, Lcom/pingplusplus/android/f;

    invoke-direct {v2, p0, v1}, Lcom/pingplusplus/android/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/pingplusplus/android/PaymentActivity;->i:Lcom/pingplusplus/android/f;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 348
    :try_start_2
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v1

    iget-object v2, p0, Lcom/pingplusplus/android/PaymentActivity;->i:Lcom/pingplusplus/android/f;

    iput-object v2, v1, Lcom/pingplusplus/android/PingppObject;->pingppQPayHandler:Lcom/pingplusplus/android/f;

    .line 350
    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->i:Lcom/pingplusplus/android/f;

    invoke-virtual {v1}, Lcom/pingplusplus/android/f;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    const-string v0, "invalid"

    const-string v1, "qq_app_not_installed"

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 344
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget-object v0, v0, Lcom/pingplusplus/android/PingppObject;->currentChannel:Ljava/lang/String;

    .line 345
    const-string v1, "fail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel_sdk_not_included:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0d\u652f\u6301\u8be5\u6e20\u9053: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u3002\u7f3a\u5c11QQ\u94b1\u5305\u7684 SDK\u3002"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 362
    :catch_1
    move-exception v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 355
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->i:Lcom/pingplusplus/android/f;

    invoke-virtual {v1}, Lcom/pingplusplus/android/f;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->i:Lcom/pingplusplus/android/f;

    invoke-virtual {v1, v0}, Lcom/pingplusplus/android/f;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 358
    :cond_1
    const-string v0, "fail"

    const-string v1, "qq_app_not_support"

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private e(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 375
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/assets/data.bin"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    .line 376
    const-string v0, "PING++"

    const-string v1, "\u7f3a\u5c11data.bin\u6587\u4ef6, \u5c06SDK\u4e2dassets\u4e0bdata.bin\u6587\u4ef6\u62f7\u8d1d\u5230\u9879\u76ee\u4e2d"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v0, "fail"

    invoke-virtual {p0, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    .line 403
    :goto_0
    return-void

    .line 381
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 382
    const-string v0, "Checking permissions..."

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    .line 384
    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Landroid/support/v4/content/d;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Landroid/support/v4/app/d;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    const-string v0, "\u4f7f\u7528\u94f6\u8054\u652f\u4ed8\uff0c\u8bf7\u63a5\u53d7\u4ee5\u4e0b\u6743\u9650"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 391
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/d;->a(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 398
    const-string v0, "fail"

    const-string v1, "client_error"

    const-string v2, "\u8bf7\u4f7f\u7528\u6700\u65b0\u7684 Android v4 Support Library\uff0cAndroid 6.0 \u4ee5\u4e0a\u9700\u8981\u7533\u8bf7\u6743\u9650"

    invoke-virtual {p0, v0, v1, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :cond_2
    invoke-direct {p0, p1}, Lcom/pingplusplus/android/PaymentActivity;->f(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private f(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 407
    const-string v0, "upacp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const-string v0, "upacp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PaymentActivity start upacp credential : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    .line 414
    :goto_0
    const-string v1, "tn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 419
    const-string v2, "mode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v2, v3, v1, v0}, Lcom/unionpay/UPPayAssistEx;->startPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_1
    return-void

    .line 411
    :cond_0
    const-string v0, "upmp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PaymentActivity start upmp credential : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 424
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget-object v0, v0, Lcom/pingplusplus/android/PingppObject;->currentChannel:Ljava/lang/String;

    .line 425
    const-string v1, "fail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel_sdk_not_included:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0d\u652f\u6301\u8be5\u6e20\u9053: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u3002\u7f3a\u5c11\u94f6\u8054\u7684 SDK\u3002"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private g(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 457
    const-string v0, "bfb"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PaymentActivity start bfb credential : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    .line 461
    :try_start_0
    invoke-static {}, Lcom/baidu/paysdk/api/BaiduPay;->getInstance()Lcom/baidu/paysdk/api/BaiduPay;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 469
    const-string v0, "cashier_type"

    const-string v3, "0"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 471
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 472
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 474
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 475
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    const-string v0, "="

    invoke-static {v0, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 464
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget-object v0, v0, Lcom/pingplusplus/android/PingppObject;->currentChannel:Ljava/lang/String;

    .line 465
    const-string v1, "fail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel_sdk_not_included:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0d\u652f\u6301\u8be5\u6e20\u9053: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u3002\u7f3a\u5c11\u767e\u5ea6\u94b1\u5305\u7684 SDK\u3002"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :goto_1
    return-void

    .line 480
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 481
    const-string v0, "fail"

    const-string v1, "invalid_credential"

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 484
    :cond_1
    const-string v0, "&"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 485
    const/4 v1, 0x1

    iput v1, p0, Lcom/pingplusplus/android/PaymentActivity;->d:I

    .line 486
    invoke-static {}, Lcom/baidu/paysdk/api/BaiduPay;->getInstance()Lcom/baidu/paysdk/api/BaiduPay;

    move-result-object v1

    new-instance v3, Lcom/pingplusplus/android/c;

    invoke-direct {v3, p0}, Lcom/pingplusplus/android/c;-><init>(Lcom/pingplusplus/android/PaymentActivity;)V

    invoke-virtual {v1, p0, v0, v3, v2}, Lcom/baidu/paysdk/api/BaiduPay;->doPay(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 759
    const-string v0, "2.1.8"

    return-object v0
.end method

.method private h(Lorg/json/JSONObject;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 508
    new-instance v0, Lcom/pingplusplus/android/a/j;

    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    invoke-direct {v0, p0, v1}, Lcom/pingplusplus/android/a/j;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;)V

    .line 509
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v1

    iget-boolean v1, v1, Lcom/pingplusplus/android/PingppObject;->ignoreTitleBar:Z

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/a/j;->a(Z)Lcom/pingplusplus/android/j;

    move-result-object v0

    iput-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->k:Lcom/pingplusplus/android/j;

    .line 510
    return-void
.end method

.method private i(Lorg/json/JSONObject;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 520
    new-instance v0, Lcom/pingplusplus/android/a/a;

    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    invoke-direct {v0, p0, v1}, Lcom/pingplusplus/android/a/a;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->k:Lcom/pingplusplus/android/j;

    .line 521
    return-void
.end method

.method private j(Lorg/json/JSONObject;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 542
    new-instance v0, Lcom/pingplusplus/android/a/h;

    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    invoke-direct {v0, p0, v1}, Lcom/pingplusplus/android/a/h;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->k:Lcom/pingplusplus/android/j;

    .line 543
    return-void
.end method

.method private k(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 552
    new-instance v0, Lcom/pingplusplus/android/a/c;

    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    invoke-direct {v0, p0, v1}, Lcom/pingplusplus/android/a/c;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->k:Lcom/pingplusplus/android/j;

    .line 553
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 699
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget v0, v0, Lcom/pingplusplus/android/PingppObject;->wxErrCode:I

    .line 700
    if-nez v0, :cond_0

    .line 701
    const-string v0, "success"

    invoke-virtual {p0, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    .line 707
    :goto_0
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    const/16 v1, -0xa

    iput v1, v0, Lcom/pingplusplus/android/PingppObject;->wxErrCode:I

    .line 708
    return-void

    .line 702
    :cond_0
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 703
    const-string v0, "cancel"

    const-string v1, "user_cancelled"

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 705
    :cond_1
    const-string v1, "fail"

    const-string v2, "channel_returns_fail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wx_err_code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 695
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 686
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setResultAndFinish result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isWXPayEntryActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pingplusplus/android/PaymentActivity;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    .line 665
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iput-object v2, v0, Lcom/pingplusplus/android/PingppObject;->currentChannel:Ljava/lang/String;

    .line 666
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iput-object v2, v0, Lcom/pingplusplus/android/PingppObject;->pingppWxHandler:Lcom/pingplusplus/android/m;

    .line 667
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iput-object v2, v0, Lcom/pingplusplus/android/PingppObject;->pingppQPayHandler:Lcom/pingplusplus/android/f;

    .line 668
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iput-object v2, v0, Lcom/pingplusplus/android/PingppObject;->qpayScheme:Ljava/lang/String;

    .line 669
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iput-object v2, v0, Lcom/pingplusplus/android/PingppObject;->wxAppId:Ljava/lang/String;

    .line 670
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iput-object v2, v0, Lcom/pingplusplus/android/PingppObject;->qqAppId:Ljava/lang/String;

    .line 671
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 672
    const-string v1, "pay_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    const-string v1, "error_msg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    const-string v1, "extra_msg"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/pingplusplus/android/PaymentActivity;->setResult(ILandroid/content/Intent;)V

    .line 676
    invoke-virtual {p0}, Lcom/pingplusplus/android/PaymentActivity;->finish()V

    .line 677
    return-void
.end method

.method public a(ZLjava/lang/String;I)V
    .locals 1

    .prologue
    .line 711
    const/4 v0, 0x0

    iput v0, p0, Lcom/pingplusplus/android/PaymentActivity;->e:I

    .line 712
    if-eqz p1, :cond_0

    .line 713
    const-string v0, "success"

    invoke-virtual {p0, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    .line 721
    :goto_0
    return-void

    .line 715
    :cond_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 716
    const-string v0, "cancel"

    invoke-virtual {p0, v0, p2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 718
    :cond_1
    const-string v0, "fail"

    invoke-virtual {p0, v0, p2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 559
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->k:Lcom/pingplusplus/android/j;

    if-eqz v0, :cond_3

    .line 560
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->k:Lcom/pingplusplus/android/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, v3, :cond_7

    .line 561
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->k:Lcom/pingplusplus/android/j;

    iget-object v0, v0, Lcom/pingplusplus/android/j;->k:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    if-eqz p3, :cond_2

    if-eq p2, v2, :cond_6

    :cond_2
    move-object v0, v1

    .line 564
    :goto_1
    iget-object v2, p0, Lcom/pingplusplus/android/PaymentActivity;->k:Lcom/pingplusplus/android/j;

    iget-object v2, v2, Lcom/pingplusplus/android/j;->k:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 565
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->k:Lcom/pingplusplus/android/j;

    iput-object v1, v0, Lcom/pingplusplus/android/j;->k:Landroid/webkit/ValueCallback;

    .line 580
    :cond_3
    :goto_2
    const/16 v0, 0x10

    if-ne p1, v0, :cond_4

    .line 581
    const-string v0, "success"

    invoke-virtual {p0, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    .line 584
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 585
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget-object v0, v0, Lcom/pingplusplus/android/PingppObject;->currentChannel:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 586
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget-object v0, v0, Lcom/pingplusplus/android/PingppObject;->currentChannel:Ljava/lang/String;

    const-string v1, "upmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 587
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget-object v0, v0, Lcom/pingplusplus/android/PingppObject;->currentChannel:Ljava/lang/String;

    const-string v1, "upacp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    :cond_5
    if-nez p3, :cond_b

    .line 591
    const-string v0, "fail"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 563
    :cond_6
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 567
    :cond_7
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->k:Lcom/pingplusplus/android/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 568
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->k:Lcom/pingplusplus/android/j;

    iget-object v0, v0, Lcom/pingplusplus/android/j;->l:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    .line 570
    if-eqz p3, :cond_8

    if-eq p2, v2, :cond_9

    :cond_8
    move-object v0, v1

    .line 571
    :goto_3
    if-eqz v0, :cond_a

    .line 572
    iget-object v2, p0, Lcom/pingplusplus/android/PaymentActivity;->k:Lcom/pingplusplus/android/j;

    iget-object v2, v2, Lcom/pingplusplus/android/j;->l:Landroid/webkit/ValueCallback;

    new-array v3, v3, [Landroid/net/Uri;

    aput-object v0, v3, v4

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 576
    :goto_4
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->k:Lcom/pingplusplus/android/j;

    iput-object v1, v0, Lcom/pingplusplus/android/j;->l:Landroid/webkit/ValueCallback;

    goto :goto_2

    .line 570
    :cond_9
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    .line 574
    :cond_a
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->k:Lcom/pingplusplus/android/j;

    iget-object v0, v0, Lcom/pingplusplus/android/j;->l:Landroid/webkit/ValueCallback;

    new-array v2, v4, [Landroid/net/Uri;

    invoke-interface {v0, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_4

    .line 600
    :cond_b
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pay_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 601
    if-nez v0, :cond_c

    .line 602
    const-string v0, "fail"

    invoke-virtual {p0, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 603
    :cond_c
    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 604
    const-string v0, "success"

    invoke-virtual {p0, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 605
    :cond_d
    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 606
    const-string v0, "fail"

    const-string v1, "channel_returns_fail"

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 607
    :cond_e
    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 608
    const-string v0, "cancel"

    const-string v1, "user_cancelled"

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 610
    :cond_f
    const-string v0, "fail"

    const-string v1, "unknown_error"

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 775
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->k:Lcom/pingplusplus/android/j;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->k:Lcom/pingplusplus/android/j;

    invoke-virtual {v0}, Lcom/pingplusplus/android/j;->c()V

    .line 784
    :goto_0
    return-void

    .line 779
    :cond_0
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/pingplusplus/android/PingppObject;->currentChannel:Ljava/lang/String;

    .line 780
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 781
    const-string v1, "pay_result"

    iget-object v2, p0, Lcom/pingplusplus/android/PaymentActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/pingplusplus/android/PaymentActivity;->setResult(ILandroid/content/Intent;)V

    .line 783
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const-string v0, "onCreate"

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    .line 95
    if-eqz p1, :cond_1

    .line 96
    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iput-object v1, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    .line 101
    invoke-virtual {p0}, Lcom/pingplusplus/android/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 102
    const-string v2, "com.pingplusplus.android.PaymentActivity.CHARGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_3

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PaymentActivity received charge: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    .line 108
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    .line 110
    const-string v0, "order"

    iget-object v2, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    const-string v3, "object"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    const-string v2, "livemode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 112
    iget-object v2, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    const-string v3, "charge"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    iget-object v3, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    const-string v4, "app"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    iget-object v4, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pingplusplus/android/PaymentActivity;->j:Ljava/lang/String;

    .line 115
    iget-object v4, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    const-string v5, "charge_essentials"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iput-object v4, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    .line 116
    iget-object v4, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    const-string v5, "livemode"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 117
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    const-string v4, "id"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    const-string v2, "app"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    const-string v2, "order_id"

    iget-object v3, p0, Lcom/pingplusplus/android/PaymentActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    :cond_2
    invoke-direct {p0}, Lcom/pingplusplus/android/PaymentActivity;->b()V

    .line 124
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    const-string v2, "credential"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    const-string v2, "channel"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->c:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    const-string v2, "livemode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    const-string v2, "livemode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v2, p0, Lcom/pingplusplus/android/PaymentActivity;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/pingplusplus/android/PaymentActivity;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    const-string v0, "fail"

    const-string v2, "invalid_charge_json_decode_fail"

    invoke-virtual {p0, v0, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    move-object v0, v1

    .line 140
    :goto_2
    if-eqz v0, :cond_7

    .line 141
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v2

    iget-object v3, p0, Lcom/pingplusplus/android/PaymentActivity;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/pingplusplus/android/PingppObject;->currentChannel:Ljava/lang/String;

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PaymentActivity received channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pingplusplus/android/PaymentActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    .line 144
    sget-object v2, Lcom/pingplusplus/android/PaymentActivity;->l:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/pingplusplus/android/PaymentActivity;->c:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 145
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iput-object v1, v0, Lcom/pingplusplus/android/PingppObject;->currentChannel:Ljava/lang/String;

    .line 146
    const-string v0, "fail"

    const-string v1, "invalid_charge_no_such_channel"

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    const-string v2, "credential"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_2

    .line 133
    :cond_5
    const-string v0, "fail"

    const-string v2, "invalid_charge_no_credential"

    invoke-virtual {p0, v0, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 149
    :cond_6
    invoke-direct {p0, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 151
    :cond_7
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget-object v0, v0, Lcom/pingplusplus/android/PingppObject;->wxAppId:Ljava/lang/String;

    .line 152
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v1

    iget-object v1, v1, Lcom/pingplusplus/android/PingppObject;->qqAppId:Ljava/lang/String;

    .line 153
    if-eqz v0, :cond_8

    .line 154
    const-string v0, "isWXPayEntryActivity"

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pingplusplus/android/PaymentActivity;->h:Z

    .line 156
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget-object v0, v0, Lcom/pingplusplus/android/PingppObject;->pingppWxHandler:Lcom/pingplusplus/android/m;

    iput-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->g:Lcom/pingplusplus/android/m;

    .line 157
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->g:Lcom/pingplusplus/android/m;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->g:Lcom/pingplusplus/android/m;

    invoke-interface {v0, p0}, Lcom/pingplusplus/android/m;->a(Lcom/pingplusplus/android/PaymentActivity;)V

    .line 159
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->g:Lcom/pingplusplus/android/m;

    invoke-virtual {p0}, Lcom/pingplusplus/android/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pingplusplus/android/m;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 161
    :cond_8
    if-eqz v1, :cond_9

    .line 162
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget-object v0, v0, Lcom/pingplusplus/android/PingppObject;->pingppQPayHandler:Lcom/pingplusplus/android/f;

    iput-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->i:Lcom/pingplusplus/android/f;

    .line 163
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->i:Lcom/pingplusplus/android/f;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->i:Lcom/pingplusplus/android/f;

    invoke-virtual {v0, p0}, Lcom/pingplusplus/android/f;->a(Lcom/pingplusplus/android/PaymentActivity;)V

    .line 165
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->i:Lcom/pingplusplus/android/f;

    invoke-virtual {p0}, Lcom/pingplusplus/android/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/f;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 168
    :cond_9
    invoke-virtual {p0}, Lcom/pingplusplus/android/PaymentActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 788
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy isWXPayEntryActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pingplusplus/android/PaymentActivity;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    .line 790
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 645
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent isWXPayEntryActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pingplusplus/android/PaymentActivity;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->g:Lcom/pingplusplus/android/m;

    if-eqz v0, :cond_1

    .line 648
    invoke-virtual {p0, p1}, Lcom/pingplusplus/android/PaymentActivity;->setIntent(Landroid/content/Intent;)V

    .line 649
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->g:Lcom/pingplusplus/android/m;

    invoke-virtual {p0}, Lcom/pingplusplus/android/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pingplusplus/android/m;->a(Landroid/content/Intent;)V

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->i:Lcom/pingplusplus/android/f;

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {p0, p1}, Lcom/pingplusplus/android/PaymentActivity;->setIntent(Landroid/content/Intent;)V

    .line 652
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->i:Lcom/pingplusplus/android/f;

    invoke-virtual {p0}, Lcom/pingplusplus/android/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/f;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 629
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 630
    iget v0, p0, Lcom/pingplusplus/android/PaymentActivity;->a:I

    if-ne v0, v1, :cond_1

    .line 631
    iput v2, p0, Lcom/pingplusplus/android/PaymentActivity;->a:I

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    iget v0, p0, Lcom/pingplusplus/android/PaymentActivity;->d:I

    if-ne v0, v1, :cond_2

    .line 633
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget-object v0, v0, Lcom/pingplusplus/android/PingppObject;->currentChannel:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 634
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget-object v0, v0, Lcom/pingplusplus/android/PingppObject;->currentChannel:Ljava/lang/String;

    const-string v1, "bfb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    iput v2, p0, Lcom/pingplusplus/android/PaymentActivity;->d:I

    goto :goto_0

    .line 636
    :cond_2
    iget v0, p0, Lcom/pingplusplus/android/PaymentActivity;->e:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget-object v0, v0, Lcom/pingplusplus/android/PingppObject;->currentChannel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 637
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget-object v0, v0, Lcom/pingplusplus/android/PingppObject;->currentChannel:Ljava/lang/String;

    const-string v1, "qpay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iput v2, p0, Lcom/pingplusplus/android/PaymentActivity;->e:I

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 431
    packed-switch p1, :pswitch_data_0

    .line 448
    :goto_0
    return-void

    .line 433
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 435
    invoke-static {p0}, Lcom/pingplusplus/android/h;->a(Landroid/content/Context;)Lcom/pingplusplus/android/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pingplusplus/android/h;->b(Landroid/content/Context;)V

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity;->f:Lorg/json/JSONObject;

    const-string v1, "credential"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pingplusplus/android/PaymentActivity;->f(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 440
    const-string v0, "fail"

    const-string v1, "invalid_charge_no_credential"

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_0
    const-string v0, "fail"

    const-string v1, "permission_denied"

    const-string v2, "\u94f6\u8054\u6e20\u9053\u6240\u9700\u6743\u9650\u88ab\u7528\u6237\u62d2\u7edd"

    invoke-virtual {p0, v0, v1, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 616
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume wxPayStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pingplusplus/android/PaymentActivity;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isWXPayEntryActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pingplusplus/android/PaymentActivity;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    .line 618
    iget v0, p0, Lcom/pingplusplus/android/PaymentActivity;->a:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/pingplusplus/android/PaymentActivity;->d:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/pingplusplus/android/PaymentActivity;->e:I

    if-ne v0, v2, :cond_2

    .line 619
    :cond_0
    const-string v0, "cancel"

    const-string v1, "user_cancelled"

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_1
    :goto_0
    return-void

    .line 620
    :cond_2
    iget v0, p0, Lcom/pingplusplus/android/PaymentActivity;->a:I

    if-nez v0, :cond_1

    .line 621
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget v0, v0, Lcom/pingplusplus/android/PingppObject;->wxErrCode:I

    const/16 v1, -0xa

    if-eq v0, v1, :cond_1

    .line 622
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget-object v0, v0, Lcom/pingplusplus/android/PingppObject;->currentChannel:Ljava/lang/String;

    const-string v1, "wx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    invoke-virtual {p0}, Lcom/pingplusplus/android/PaymentActivity;->a()V

    goto :goto_0
.end method

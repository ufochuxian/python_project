.class public Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;
    }
.end annotation


# static fields
.field public static final MSG_REQUEST_ORDER_RESULT:I = 0x1001

.field public static final ONE_MINUTE:I = 0xea60

.field public static final TAG:Ljava/lang/String;

.field public static final URL:Ljava/lang/String;

.field private static YOUR_URL:Ljava/lang/String;


# instance fields
.field private mChannel:Ljava/lang/String;

.field private mComment:Ljava/lang/String;

.field private final mCustomHandler:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;

.field private mItemId:Ljava/lang/String;

.field private mOid:Ljava/lang/String;

.field private mOrderNo:Ljava/lang/String;

.field private mPayAmount:Ljava/lang/String;

.field mPayDialogUI:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogUI;

.field private mPreTime:J

.field private mRequestChargeWay:Ljava/lang/String;

.field private mSubscriptions:Lrx/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->TAG:Ljava/lang/String;

    .line 47
    const-string v0, "http://218.244.151.190/demo/charge"

    sput-object v0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->YOUR_URL:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->YOUR_URL:Ljava/lang/String;

    sput-object v0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogUI;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "payDialogUI"    # Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogUI;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "mRequestChargeWay"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mPayDialogUI:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogUI;

    .line 66
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mItemId:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mRequestChargeWay:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;-><init>(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mCustomHandler:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogUI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "payDialogUI"    # Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogUI;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "oid"    # Ljava/lang/String;
    .param p4, "mRequestChargeWay"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mPayDialogUI:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogUI;

    .line 73
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mComment:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mOid:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mRequestChargeWay:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;-><init>(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mCustomHandler:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)Lrx/i/b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mSubscriptions:Lrx/i/b;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)J
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mPreTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;J)J
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;
    .param p1, "x1"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mPreTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->requestOrderPayResult()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mCustomHandler:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->requestPayResultTimeOut()V

    return-void
.end method

.method static synthetic access$502(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mOrderNo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mPayAmount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mChannel:Ljava/lang/String;

    return-object p1
.end method

.method private generateBody()Lokhttp3/ab;
    .locals 4

    .prologue
    .line 225
    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/OrderNoTemplete;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/logic/network/json/OrderNoTemplete;-><init>()V

    .line 226
    .local v2, "template":Lcom/jiliguala/niuwa/logic/network/json/OrderNoTemplete;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mOrderNo:Ljava/lang/String;

    iput-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/OrderNoTemplete;->oid:Ljava/lang/String;

    .line 227
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 229
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method private generateBodyForCharge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "oid"    # Ljava/lang/String;

    .prologue
    .line 337
    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/RequesChrageByPostTemplete;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/logic/network/json/RequesChrageByPostTemplete;-><init>()V

    .line 338
    .local v2, "template":Lcom/jiliguala/niuwa/logic/network/json/RequesChrageByPostTemplete;
    iput-object p2, v2, Lcom/jiliguala/niuwa/logic/network/json/RequesChrageByPostTemplete;->comment:Ljava/lang/String;

    .line 339
    iput-object p1, v2, Lcom/jiliguala/niuwa/logic/network/json/RequesChrageByPostTemplete;->channel:Ljava/lang/String;

    .line 340
    iput-object p3, v2, Lcom/jiliguala/niuwa/logic/network/json/RequesChrageByPostTemplete;->oid:Ljava/lang/String;

    .line 341
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 343
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method private requestOrderPayResult()V
    .locals 3

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mOrderNo:Ljava/lang/String;

    .line 132
    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->u(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 133
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 134
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 135
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)V

    .line 136
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 180
    return-void
.end method

.method private requestPayResultTimeOut()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mPayDialogUI:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogUI;->onReceivedPayResultTimeout()V

    .line 221
    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mChannel:Ljava/lang/String;

    const-string v1, "wx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const-string v0, "Wechat"

    .line 321
    :goto_0
    return-object v0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mChannel:Ljava/lang/String;

    const-string v1, "alipay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    const-string v0, "Alipay"

    goto :goto_0

    .line 321
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mOrderNo:Ljava/lang/String;

    return-object v0
.end method

.method public getPayAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mPayAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptions()Lrx/i/b;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mSubscriptions:Lrx/i/b;

    .line 349
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mSubscriptions:Lrx/i/b;

    return-object v0
.end method

.method public onWeixinPayClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mRequestChargeWay:Ljava/lang/String;

    const-string v1, "REQUEST_CHARGE_USE_GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lcom/jiliguala/niuwa/module/pingplusplus/PaymentRequest;

    const-string v1, "wx"

    invoke-direct {v0, v1, p1}, Lcom/jiliguala/niuwa/module/pingplusplus/PaymentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->requestPingPlusPlusChargeByGet(Lcom/jiliguala/niuwa/module/pingplusplus/PaymentRequest;)Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete;

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v0, "wx"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mComment:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mOid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->requestPingPlusPlusChargeByPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete;

    goto :goto_0
.end method

.method public onZhiFuBaoPayClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mRequestChargeWay:Ljava/lang/String;

    const-string v1, "REQUEST_CHARGE_USE_GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Lcom/jiliguala/niuwa/module/pingplusplus/PaymentRequest;

    const-string v1, "alipay"

    invoke-direct {v0, v1, p1}, Lcom/jiliguala/niuwa/module/pingplusplus/PaymentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->requestPingPlusPlusChargeByGet(Lcom/jiliguala/niuwa/module/pingplusplus/PaymentRequest;)Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete;

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string v0, "alipay"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mComment:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mOid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->requestPingPlusPlusChargeByPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete;

    goto :goto_0
.end method

.method public reportOrderNoStatusToServer()V
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->generateBody()Lokhttp3/ab;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->u(Lokhttp3/ab;)Lrx/e;

    move-result-object v1

    .line 104
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 105
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 106
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)V

    .line 107
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 127
    return-void
.end method

.method public requestOrderPayResultWithNoRetry()V
    .locals 3

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mOrderNo:Ljava/lang/String;

    .line 186
    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->u(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 187
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 188
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 189
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$3;-><init>(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)V

    .line 190
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 216
    return-void
.end method

.method public requestPingPlusPlusChargeByGet(Lcom/jiliguala/niuwa/module/pingplusplus/PaymentRequest;)Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete;
    .locals 5
    .param p1, "paymentRequest"    # Lcom/jiliguala/niuwa/module/pingplusplus/PaymentRequest;

    .prologue
    .line 243
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "curBabyId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 245
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    iget-object v3, p1, Lcom/jiliguala/niuwa/module/pingplusplus/PaymentRequest;->channel:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mItemId:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0}, Lcom/jiliguala/niuwa/logic/network/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 246
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 247
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 248
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$4;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$4;-><init>(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)V

    .line 249
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 244
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 274
    const/4 v1, 0x0

    return-object v1
.end method

.method public requestPingPlusPlusChargeByPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete;
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "oid"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->generateBodyForCharge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->t(Lokhttp3/ab;)Lrx/e;

    move-result-object v1

    .line 280
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 281
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 282
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$5;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$5;-><init>(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)V

    .line 283
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 278
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mComment:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mItemId:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public startPage(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 234
    if-nez p1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mPayDialogUI:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogUI;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/pingplusplus/android/Pingpp;->createPayment(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

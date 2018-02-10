.class public Lcom/jiliguala/niuwa/module/settings/ScanResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/support/v4/app/FragmentActivity;

.field private mSubscriptions:Lrx/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/jiliguala/niuwa/module/settings/ScanResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/ScanResult;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lrx/i/b;)V
    .locals 0
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "subscriptions"    # Lrx/i/b;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/ScanResult;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 43
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/settings/ScanResult;->mSubscriptions:Lrx/i/b;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/settings/ScanResult;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/ScanResult;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/ScanResult;->mActivity:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method private goToSubLesson(Ljava/lang/String;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "params":[Ljava/lang/String;
    invoke-static {v5}, Lcom/jiliguala/niuwa/logic/h/a;->a([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 105
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "curBabyId":Ljava/lang/String;
    const-string v7, "bid"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    .local v1, "bid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 108
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/jiliguala/niuwa/logic/login/a;->c(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    move-result-object v0

    .line 109
    .local v0, "babyInfoData":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    if-nez v0, :cond_0

    .line 110
    const-string v7, "\u5f53\u524d\u5b9d\u8d1d\u4e0eTV\u7aef\u5b9d\u8d1d\u4e0d\u4e00\u81f4!"

    invoke-static {v7}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 122
    .end local v0    # "babyInfoData":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    :goto_0
    return-void

    .line 113
    .restart local v0    # "babyInfoData":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u8bf7\u5c06"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->nick:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u8bbe\u4e3a\u5f53\u524d\u5b9d\u8d1d\u540e,\u91cd\u65b0\u626b\u63cf!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    .end local v0    # "babyInfoData":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    :cond_1
    const-string v7, "courseid"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    .local v2, "courseid":Ljava/lang/String;
    const-string v7, "sublessonId"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 121
    .local v6, "sublessonId":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {p0, v3, v7, v2, v6}, Lcom/jiliguala/niuwa/module/settings/ScanResult;->requestUnitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reportResultToServer(Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "paramCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/ScanResult;->mSubscriptions:Lrx/i/b;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    .line 80
    invoke-interface {v2, v0}, Lcom/jiliguala/niuwa/logic/network/d;->q(Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 81
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 82
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 83
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/ScanResult$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/ScanResult$1;-><init>(Lcom/jiliguala/niuwa/module/settings/ScanResult;)V

    .line 84
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 100
    return-void
.end method

.method private reportScanSuccess()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Type"

    const-string v2, "TV"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "Result"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Scan Success"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 74
    return-void
.end method


# virtual methods
.method public onResult(Landroid/content/Intent;)V
    .locals 5
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 47
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "result"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "result":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 54
    .restart local v0    # "extras":Landroid/os/Bundle;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_1
    const-string v3, "jlgl://sublesson"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 55
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/settings/ScanResult;->goToSubLesson(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    const-string v3, "http://jiliguala.com/download.html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 57
    const-string v3, "\u4f60\u5df2\u5b89\u88c5\u53fd\u91cc\u5471\u5566\u624b\u673a\u7248\uff01"

    invoke-static {v3}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_3
    const-string v3, "j.html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 59
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/ScanResult;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const-class v4, Lcom/jiliguala/niuwa/module/zxing/ScanInternalWebActivituy;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "key_url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/ScanResult;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 63
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/settings/ScanResult;->reportResultToServer(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/ScanResult;->reportScanSuccess()V

    goto :goto_0
.end method

.method public requestUnitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "unitId"    # Ljava/lang/String;
    .param p3, "courseId"    # Ljava/lang/String;
    .param p4, "sublessonId"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/ScanResult;->mSubscriptions:Lrx/i/b;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 133
    invoke-interface {v1, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/network/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 134
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 135
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 136
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/settings/ScanResult$2;

    invoke-direct {v2, p0, p3, p4}, Lcom/jiliguala/niuwa/module/settings/ScanResult$2;-><init>(Lcom/jiliguala/niuwa/module/settings/ScanResult;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

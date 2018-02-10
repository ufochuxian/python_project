.class public Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedActivityPresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedActivityView;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedActivityPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedActivityPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    return-void
.end method


# virtual methods
.method public generateRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;
    .locals 3
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "lid"    # Ljava/lang/String;
    .param p3, "libn"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/ScanStoryBookTemplete;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/ScanStoryBookTemplete;-><init>()V

    .line 55
    .local v1, "data":Lcom/jiliguala/niuwa/logic/network/json/ScanStoryBookTemplete;
    iput-object p1, v1, Lcom/jiliguala/niuwa/logic/network/json/ScanStoryBookTemplete;->bid:Ljava/lang/String;

    .line 56
    iput-object p2, v1, Lcom/jiliguala/niuwa/logic/network/json/ScanStoryBookTemplete;->lid:Ljava/lang/String;

    .line 57
    iput-object p3, v1, Lcom/jiliguala/niuwa/logic/network/json/ScanStoryBookTemplete;->isbn:Ljava/lang/String;

    .line 58
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 61
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method public reportStoryScanSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "lid"    # Ljava/lang/String;
    .param p3, "isbn"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedActivityPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedActivityPresenter;->generateRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->x(Lokhttp3/ab;)Lrx/e;

    move-result-object v1

    .line 28
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 29
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 30
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedActivityPresenter$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedActivityPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/story/QualityStoryUnlockedActivityPresenter;)V

    .line 31
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 51
    return-void
.end method

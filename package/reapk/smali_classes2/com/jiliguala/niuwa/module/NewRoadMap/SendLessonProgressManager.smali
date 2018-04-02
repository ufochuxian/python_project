.class public Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCallBack:Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;

.field public mReportCounter:I

.field private mSubscriptions:Lrx/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->mSubscriptions:Lrx/i/b;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;)Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->mCallBack:Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;

    return-object v0
.end method

.method private generateRequestBody(Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;)Lokhttp3/ab;
    .locals 2
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;

    .prologue
    .line 76
    invoke-static {p1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 79
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method


# virtual methods
.method public getSubscriptions()Lrx/i/b;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->mSubscriptions:Lrx/i/b;

    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->mSubscriptions:Lrx/i/b;

    return-object v0
.end method

.method public sendProgress(Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;)V
    .locals 3
    .param p1, "gameProgressTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;

    .prologue
    .line 38
    iget v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->mReportCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->mReportCounter:I

    .line 39
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 41
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->generateRequestBody(Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;)Lokhttp3/ab;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->B(Lokhttp3/ab;)Lrx/e;

    move-result-object v1

    .line 42
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 43
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 44
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;

    invoke-direct {v2, p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$1;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;)V

    .line 45
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 72
    return-void
.end method

.method public setCallBack(Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->mCallBack:Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;

    .line 91
    return-void
.end method

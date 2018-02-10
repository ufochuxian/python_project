.class public Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentView;",
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
    const-class v0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    return-void
.end method

.method private generateRequestBody(Ljava/lang/String;)Lokhttp3/ab;
    .locals 3
    .param p1, "itemID"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/PostStoryTemplete;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/PostStoryTemplete;-><init>()V

    .line 90
    .local v1, "data":Lcom/jiliguala/niuwa/logic/network/json/PostStoryTemplete;
    iput-object p1, v1, Lcom/jiliguala/niuwa/logic/network/json/PostStoryTemplete;->itemid:Ljava/lang/String;

    .line 91
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 94
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method


# virtual methods
.method public requestStoryLessonByGet(Ljava/lang/String;)V
    .locals 3
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 60
    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/logic/network/d;->w(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 61
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 62
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 63
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;)V

    .line 64
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 86
    return-void
.end method

.method public requestStoryLessonByPut(Ljava/lang/String;)V
    .locals 3
    .param p1, "itemID"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 28
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;->generateRequestBody(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->v(Lokhttp3/ab;)Lrx/e;

    move-result-object v1

    .line 29
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 30
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 31
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/story/QualityStoryFragmentPresenter;)V

    .line 32
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 54
    return-void
.end method

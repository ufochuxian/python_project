.class public Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleView;",
        ">;"
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mSubscriptions:Lrx/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    .line 22
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;->mSubscriptions:Lrx/i/b;

    .line 25
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;->mSubscriptions:Lrx/i/b;

    .line 26
    return-void
.end method


# virtual methods
.method public requestBundleData(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/logic/network/d;->z(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 31
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 32
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 33
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;)V

    .line 34
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 61
    return-void
.end method

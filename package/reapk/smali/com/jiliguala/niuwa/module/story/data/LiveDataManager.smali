.class public Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;
    }
.end annotation


# instance fields
.field private mApplication:Lcom/jiliguala/niuwa/MyApplication;

.field private final mOperations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/MyApplication;)V
    .locals 1
    .param p1, "application"    # Lcom/jiliguala/niuwa/MyApplication;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;->mOperations:Ljava/util/Set;

    .line 44
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    .line 45
    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;->mOperations:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public getStatistics()Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;-><init>(Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$1;)V

    return-object v0
.end method

.method public initLiveData(Ljava/lang/Class;Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;)Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;
    .locals 4
    .param p2, "params"    # Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;
        .annotation build Lorg/b/a/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;",
            ">;",
            "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;",
            ")",
            "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;>;"
    if-nez p2, :cond_0

    .line 59
    sget-object p2, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->NO_PARAMETERS:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;->mOperations:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;

    .line 63
    .local v1, "op":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p1, :cond_1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->getParams()Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    :goto_0
    return-object v1

    .line 71
    .end local v1    # "op":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;

    .line 72
    .restart local v1    # "op":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v1, v2, p2}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->setUp(Lcom/jiliguala/niuwa/MyApplication;Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;)V

    .line 73
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;->mOperations:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 75
    .end local v1    # "op":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 77
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public registerForLiveData(Ljava/lang/Class;Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;)V
    .locals 1
    .param p2, "params"    # Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;
        .annotation build Lorg/b/a/e;
        .end annotation
    .end param
    .param p3    # Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;
        .annotation build Lorg/b/a/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;",
            ">;",
            "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;",
            "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;>;"
    .local p3, "listener":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;, "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener<**>;"
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;->initLiveData(Ljava/lang/Class;Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;)Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;

    move-result-object v0

    .line 85
    .local v0, "op":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;
    invoke-virtual {v0, p3}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->addListener(Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;)V

    .line 86
    return-void
.end method

.method public unregisterForLiveData(Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;)V
    .locals 3
    .param p1    # Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;
        .annotation build Lorg/b/a/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "listener":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;, "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener<**>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;->mOperations:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;

    .line 90
    .local v0, "op":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->removeListener(Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;)V

    goto :goto_0

    .line 92
    .end local v0    # "op":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;
    :cond_0
    return-void
.end method

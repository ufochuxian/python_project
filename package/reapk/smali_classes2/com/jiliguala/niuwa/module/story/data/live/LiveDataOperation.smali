.class public abstract Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApplication:Lcom/jiliguala/niuwa/MyApplication;

.field private mError:Ljava/lang/Exception;

.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation",
            "<TT;>;TT;>;>;"
        }
    .end annotation
.end field

.field private mParams:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mStarted:Lorg/joda/time/DateTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;, "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mListeners:Ljava/util/Set;

    .line 29
    return-void
.end method

.method private start()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;, "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation<TT;>;"
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mParams:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " called start() before setUp()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mStarted:Lorg/joda/time/DateTime;

    .line 64
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mResult:Ljava/lang/Object;

    .line 65
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mError:Ljava/lang/Exception;

    .line 66
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->begin()V

    .line 69
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation",
            "<TT;>;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;, "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation<TT;>;"
    .local p1, "listener":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;, "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener<Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation<TT;>;TT;>;"
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$1;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->getState()Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 127
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Tried to add listener before operation started. Have you called setUp()?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mResult:Ljava/lang/Object;

    invoke-interface {p1, p0, v0}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;->onLiveDataReady(Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :pswitch_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mError:Ljava/lang/Exception;

    invoke-interface {p1, p0, v0}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;->onLiveDataFailed(Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;Ljava/lang/Exception;)V

    goto :goto_0

    .line 142
    :pswitch_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->start()V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected abstract begin()V
.end method

.method protected getApplication()Lcom/jiliguala/niuwa/MyApplication;
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;, "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    return-object v0
.end method

.method public getParams()Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;
    .locals 1

    .prologue
    .line 154
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;, "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mParams:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;, "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getState()Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;
    .locals 3

    .prologue
    .line 32
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;, "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mParams:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mResult:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mError:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 33
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;->NOT_STARTED:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    .line 49
    :goto_0
    return-object v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mParams:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mResult:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mError:Ljava/lang/Exception;

    if-nez v0, :cond_1

    .line 37
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;->LOADING:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mParams:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mResult:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mError:Ljava/lang/Exception;

    if-eqz v0, :cond_3

    .line 41
    :cond_2
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;->EXPIRED:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    goto :goto_0

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mParams:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mResult:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mError:Ljava/lang/Exception;

    if-nez v0, :cond_4

    .line 45
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;->SUCCESS:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    goto :goto_0

    .line 48
    :cond_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mParams:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mResult:Ljava/lang/Object;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mError:Ljava/lang/Exception;

    if-eqz v0, :cond_5

    .line 49
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;->FAILED:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    goto :goto_0

    .line 53
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is in an inconsistent state. mParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mParams:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mResult:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mError:Ljava/lang/Exception;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->isExpired()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isExpired()Z
    .locals 5

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;, "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mResult:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 87
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mStarted:Lorg/joda/time/DateTime;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mStarted:Lorg/joda/time/DateTime;

    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3}, Lorg/joda/time/DateTime;-><init>()V

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTime;->minusHours(I)Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->isBefore(Lorg/joda/time/l;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 87
    goto :goto_0

    .line 89
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mError:Ljava/lang/Exception;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected final onError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 114
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;, "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation<TT;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mError:Ljava/lang/Exception;

    .line 115
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;

    .line 116
    .local v0, "listener":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;, "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener<Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation<TT;>;TT;>;"
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mError:Ljava/lang/Exception;

    invoke-interface {v0, p0, v2}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;->onLiveDataFailed(Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;Ljava/lang/Exception;)V

    goto :goto_0

    .line 118
    .end local v0    # "listener":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;, "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener<Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation<TT;>;TT;>;"
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 119
    return-void
.end method

.method protected final onResult(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;, "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mResult:Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;

    .line 102
    .local v0, "listener":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;, "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener<Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation<TT;>;TT;>;"
    invoke-interface {v0, p0, p1}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;->onLiveDataReady(Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    .end local v0    # "listener":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;, "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener<Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation<TT;>;TT;>;"
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 105
    return-void
.end method

.method public final removeListener(Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation",
            "<TT;>;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;, "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation<TT;>;"
    .local p1, "listener":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;, "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener<Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation<TT;>;TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public setUp(Lcom/jiliguala/niuwa/MyApplication;Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;)V
    .locals 3
    .param p1, "application"    # Lcom/jiliguala/niuwa/MyApplication;
    .param p2, "params"    # Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    .prologue
    .line 162
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;, "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation<TT;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->getState()Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;->NOT_STARTED:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    if-eq v0, v1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setUp called when in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->getState()Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    .line 166
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->mParams:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    .line 167
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->start()V

    .line 168
    return-void
.end method

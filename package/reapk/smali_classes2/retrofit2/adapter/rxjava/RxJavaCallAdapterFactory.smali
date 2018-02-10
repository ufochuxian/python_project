.class public final Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;
.super Lretrofit2/CallAdapter$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResultCallAdapter;,
        Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$SimpleCallAdapter;,
        Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResponseCallAdapter;,
        Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;,
        Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe;
    }
.end annotation


# instance fields
.field private final scheduler:Lrx/h;


# direct methods
.method private constructor <init>(Lrx/h;)V
    .locals 0
    .param p1, "scheduler"    # Lrx/h;

    .prologue
    .line 78
    invoke-direct {p0}, Lretrofit2/CallAdapter$Factory;-><init>()V

    .line 79
    iput-object p1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->scheduler:Lrx/h;

    .line 80
    return-void
.end method

.method public static create()Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;-><init>(Lrx/h;)V

    return-object v0
.end method

.method public static createWithScheduler(Lrx/h;)Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;
    .locals 2
    .param p0, "scheduler"    # Lrx/h;

    .prologue
    .line 72
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheduler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    new-instance v0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    invoke-direct {v0, p0}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;-><init>(Lrx/h;)V

    return-object v0
.end method

.method private getCallAdapter(Ljava/lang/reflect/Type;Lrx/h;)Lretrofit2/CallAdapter;
    .locals 5
    .param p1, "returnType"    # Ljava/lang/reflect/Type;
    .param p2, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lrx/h;",
            ")",
            "Lretrofit2/CallAdapter",
            "<",
            "Lrx/e",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 115
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "returnType":Ljava/lang/reflect/Type;
    invoke-static {v4, p1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 116
    .local v0, "observableType":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 117
    .local v1, "rawObservableType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lretrofit2/Response;

    if-ne v1, v3, :cond_1

    .line 118
    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v3, :cond_0

    .line 119
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Response must be parameterized as Response<Foo> or Response<? extends Foo>"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 122
    :cond_0
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "observableType":Ljava/lang/reflect/Type;
    invoke-static {v4, v0}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 123
    .local v2, "responseType":Ljava/lang/reflect/Type;
    new-instance v3, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResponseCallAdapter;

    invoke-direct {v3, v2, p2}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResponseCallAdapter;-><init>(Ljava/lang/reflect/Type;Lrx/h;)V

    .line 135
    .end local v2    # "responseType":Ljava/lang/reflect/Type;
    :goto_0
    return-object v3

    .line 126
    .restart local v0    # "observableType":Ljava/lang/reflect/Type;
    :cond_1
    const-class v3, Lretrofit2/adapter/rxjava/Result;

    if-ne v1, v3, :cond_3

    .line 127
    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v3, :cond_2

    .line 128
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Result must be parameterized as Result<Foo> or Result<? extends Foo>"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    :cond_2
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "observableType":Ljava/lang/reflect/Type;
    invoke-static {v4, v0}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 132
    .restart local v2    # "responseType":Ljava/lang/reflect/Type;
    new-instance v3, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResultCallAdapter;

    invoke-direct {v3, v2, p2}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$ResultCallAdapter;-><init>(Ljava/lang/reflect/Type;Lrx/h;)V

    goto :goto_0

    .line 135
    .end local v2    # "responseType":Ljava/lang/reflect/Type;
    .restart local v0    # "observableType":Ljava/lang/reflect/Type;
    :cond_3
    new-instance v3, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$SimpleCallAdapter;

    invoke-direct {v3, v0, p2}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$SimpleCallAdapter;-><init>(Ljava/lang/reflect/Type;Lrx/h;)V

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
    .locals 9
    .param p1, "returnType"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/CallAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 85
    .local v5, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "canonicalName":Ljava/lang/String;
    const-string v6, "rx.Single"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 87
    .local v3, "isSingle":Z
    const-string v6, "rx.Completable"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 88
    .local v2, "isCompletable":Z
    const-class v6, Lrx/e;

    if-eq v5, v6, :cond_1

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    .line 89
    const/4 v0, 0x0

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    if-nez v2, :cond_3

    instance-of v6, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v6, :cond_3

    .line 92
    if-eqz v3, :cond_2

    const-string v4, "Single"

    .line 93
    .local v4, "name":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " return type must be parameterized"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<Foo> or "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<? extends Foo>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 92
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    const-string v4, "Observable"

    goto :goto_1

    .line 97
    :cond_3
    if-eqz v2, :cond_4

    .line 102
    iget-object v6, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->scheduler:Lrx/h;

    invoke-static {v6}, Lretrofit2/adapter/rxjava/CompletableHelper;->createCallAdapter(Lrx/h;)Lretrofit2/CallAdapter;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_4
    iget-object v6, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->scheduler:Lrx/h;

    invoke-direct {p0, p1, v6}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->getCallAdapter(Ljava/lang/reflect/Type;Lrx/h;)Lretrofit2/CallAdapter;

    move-result-object v0

    .line 106
    .local v0, "callAdapter":Lretrofit2/CallAdapter;, "Lretrofit2/CallAdapter<Lrx/e<*>;>;"
    if-eqz v3, :cond_0

    .line 109
    invoke-static {v0}, Lretrofit2/adapter/rxjava/SingleHelper;->makeSingle(Lretrofit2/CallAdapter;)Lretrofit2/CallAdapter;

    move-result-object v0

    goto :goto_0
.end method

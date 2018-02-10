.class Lcom/jiliguala/niuwa/logic/network/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter",
        "<",
        "Lrx/e",
        "<*>;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"


# instance fields
.field private final b:Lretrofit2/Retrofit;

.field private final c:Lretrofit2/CallAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/CallAdapter",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lretrofit2/Retrofit;Lretrofit2/CallAdapter;)V
    .locals 0
    .param p1, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Retrofit;",
            "Lretrofit2/CallAdapter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "wrapped":Lretrofit2/CallAdapter;, "Lretrofit2/CallAdapter<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/h$a;->b:Lretrofit2/Retrofit;

    .line 59
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/h$a;->c:Lretrofit2/CallAdapter;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/network/h$a;Ljava/lang/Throwable;)Lcom/jiliguala/niuwa/logic/network/RetrofitException;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/network/h$a;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/network/h$a;->a(Ljava/lang/Throwable;)Lcom/jiliguala/niuwa/logic/network/RetrofitException;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Throwable;)Lcom/jiliguala/niuwa/logic/network/RetrofitException;
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 138
    instance-of v2, p1, Lretrofit2/adapter/rxjava/HttpException;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 139
    check-cast v0, Lretrofit2/adapter/rxjava/HttpException;

    .line 140
    .local v0, "httpException":Lretrofit2/adapter/rxjava/HttpException;
    invoke-virtual {v0}, Lretrofit2/adapter/rxjava/HttpException;->response()Lretrofit2/Response;

    move-result-object v1

    .line 141
    .local v1, "response":Lretrofit2/Response;
    invoke-virtual {v1}, Lretrofit2/Response;->raw()Lokhttp3/ac;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ac;->a()Lokhttp3/aa;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/u;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/network/h$a;->b:Lretrofit2/Retrofit;

    invoke-static {v2, v1, v3}, Lcom/jiliguala/niuwa/logic/network/RetrofitException;->httpError(Ljava/lang/String;Lretrofit2/Response;Lretrofit2/Retrofit;)Lcom/jiliguala/niuwa/logic/network/RetrofitException;

    move-result-object v2

    .line 149
    .end local v0    # "httpException":Lretrofit2/adapter/rxjava/HttpException;
    .end local v1    # "response":Lretrofit2/Response;
    .end local p1    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-object v2

    .line 144
    .restart local p1    # "throwable":Ljava/lang/Throwable;
    :cond_0
    instance-of v2, p1, Ljava/io/IOException;

    if-eqz v2, :cond_1

    .line 145
    check-cast p1, Ljava/io/IOException;

    .end local p1    # "throwable":Ljava/lang/Throwable;
    invoke-static {p1}, Lcom/jiliguala/niuwa/logic/network/RetrofitException;->networkError(Ljava/io/IOException;)Lcom/jiliguala/niuwa/logic/network/RetrofitException;

    move-result-object v2

    goto :goto_0

    .line 149
    .restart local p1    # "throwable":Ljava/lang/Throwable;
    :cond_1
    invoke-static {p1}, Lcom/jiliguala/niuwa/logic/network/RetrofitException;->unexpectedError(Ljava/lang/Throwable;)Lcom/jiliguala/niuwa/logic/network/RetrofitException;

    move-result-object v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/network/h$a;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/network/h$a;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/network/h$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "msgStr"    # Ljava/lang/String;

    .prologue
    .line 153
    const-string v0, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Connection Error Dialog"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 156
    :cond_0
    invoke-static {p1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 157
    invoke-static {p1}, Lcom/jiliguala/niuwa/logic/network/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/network/h;->a(J)J

    .line 159
    return-void
.end method


# virtual methods
.method public a(Lretrofit2/Call;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call",
            "<TR;>;)",
            "Lrx/e",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TR;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/h$a;->c:Lretrofit2/CallAdapter;

    invoke-interface {v0, p1}, Lretrofit2/CallAdapter;->adapt(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/e;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/h$a$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/logic/network/h$a$1;-><init>(Lcom/jiliguala/niuwa/logic/network/h$a;)V

    invoke-virtual {v0, v1}, Lrx/e;->s(Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/network/h$a;->a(Lretrofit2/Call;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/h$a;->c:Lretrofit2/CallAdapter;

    invoke-interface {v0}, Lretrofit2/CallAdapter;->responseType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

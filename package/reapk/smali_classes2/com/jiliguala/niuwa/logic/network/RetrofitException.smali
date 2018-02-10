.class public Lcom/jiliguala/niuwa/logic/network/RetrofitException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x32720225499d1e0eL


# instance fields
.field private final kind:Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

.field private final response:Lretrofit2/Response;

.field private final retrofit:Lretrofit2/Retrofit;

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lretrofit2/Response;Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;Ljava/lang/Throwable;Lretrofit2/Retrofit;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "response"    # Lretrofit2/Response;
    .param p4, "kind"    # Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;
    .param p5, "exception"    # Ljava/lang/Throwable;
    .param p6, "retrofit"    # Lretrofit2/Retrofit;

    .prologue
    .line 23
    invoke-direct {p0, p1, p5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/RetrofitException;->url:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/network/RetrofitException;->response:Lretrofit2/Response;

    .line 26
    iput-object p4, p0, Lcom/jiliguala/niuwa/logic/network/RetrofitException;->kind:Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

    .line 27
    iput-object p6, p0, Lcom/jiliguala/niuwa/logic/network/RetrofitException;->retrofit:Lretrofit2/Retrofit;

    .line 28
    return-void
.end method

.method public static httpError(Ljava/lang/String;Lretrofit2/Response;Lretrofit2/Retrofit;)Lcom/jiliguala/niuwa/logic/network/RetrofitException;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "response"    # Lretrofit2/Response;
    .param p2, "retrofit"    # Lretrofit2/Retrofit;

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "message":Ljava/lang/String;
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/RetrofitException;

    sget-object v4, Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;->HTTP:Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/logic/network/RetrofitException;-><init>(Ljava/lang/String;Ljava/lang/String;Lretrofit2/Response;Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;Ljava/lang/Throwable;Lretrofit2/Retrofit;)V

    return-object v0
.end method

.method public static networkError(Ljava/io/IOException;)Lcom/jiliguala/niuwa/logic/network/RetrofitException;
    .locals 7
    .param p0, "exception"    # Ljava/io/IOException;

    .prologue
    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/RetrofitException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;->NETWORK:Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

    move-object v3, v2

    move-object v5, p0

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/logic/network/RetrofitException;-><init>(Ljava/lang/String;Ljava/lang/String;Lretrofit2/Response;Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;Ljava/lang/Throwable;Lretrofit2/Retrofit;)V

    return-object v0
.end method

.method public static unexpectedError(Ljava/lang/Throwable;)Lcom/jiliguala/niuwa/logic/network/RetrofitException;
    .locals 7
    .param p0, "exception"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/RetrofitException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;->UNEXPECTED:Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

    move-object v3, v2

    move-object v5, p0

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/logic/network/RetrofitException;-><init>(Ljava/lang/String;Ljava/lang/String;Lretrofit2/Response;Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;Ljava/lang/Throwable;Lretrofit2/Retrofit;)V

    return-object v0
.end method


# virtual methods
.method public getErrorBodyAs(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/RetrofitException;->response:Lretrofit2/Response;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/RetrofitException;->response:Lretrofit2/Response;

    invoke-virtual {v1}, Lretrofit2/Response;->errorBody()Lokhttp3/ad;

    move-result-object v1

    if-nez v1, :cond_1

    .line 79
    :cond_0
    const/4 v1, 0x0

    .line 82
    :goto_0
    return-object v1

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/RetrofitException;->retrofit:Lretrofit2/Retrofit;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    invoke-virtual {v1, p1, v2}, Lretrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0

    .line 82
    .local v0, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<Lokhttp3/ad;TT;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/RetrofitException;->response:Lretrofit2/Response;

    invoke-virtual {v1}, Lretrofit2/Response;->errorBody()Lokhttp3/ad;

    move-result-object v1

    invoke-interface {v0, v1}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getKind()Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/RetrofitException;->kind:Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

    return-object v0
.end method

.method public getResponse()Lretrofit2/Response;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/RetrofitException;->response:Lretrofit2/Response;

    return-object v0
.end method

.method public getRetrofit()Lretrofit2/Retrofit;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/RetrofitException;->retrofit:Lretrofit2/Retrofit;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/RetrofitException;->url:Ljava/lang/String;

    return-object v0
.end method

.class public final Lretrofit2/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final body:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final errorBody:Lokhttp3/ad;

.field private final rawResponse:Lokhttp3/ac;


# direct methods
.method private constructor <init>(Lokhttp3/ac;Ljava/lang/Object;Lokhttp3/ad;)V
    .locals 0
    .param p1, "rawResponse"    # Lokhttp3/ac;
    .param p3, "errorBody"    # Lokhttp3/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ac;",
            "TT;",
            "Lokhttp3/ad;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    .local p2, "body":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/ac;

    .line 91
    iput-object p2, p0, Lretrofit2/Response;->body:Ljava/lang/Object;

    .line 92
    iput-object p3, p0, Lretrofit2/Response;->errorBody:Lokhttp3/ad;

    .line 93
    return-void
.end method

.method public static error(ILokhttp3/ad;)Lretrofit2/Response;
    .locals 3
    .param p0, "code"    # I
    .param p1, "body"    # Lokhttp3/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lokhttp3/ad;",
            ")",
            "Lretrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    const/16 v0, 0x190

    if-ge p0, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 400: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    new-instance v0, Lokhttp3/ac$a;

    invoke-direct {v0}, Lokhttp3/ac$a;-><init>()V

    .line 69
    invoke-virtual {v0, p0}, Lokhttp3/ac$a;->a(I)Lokhttp3/ac$a;

    move-result-object v0

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 70
    invoke-virtual {v0, v1}, Lokhttp3/ac$a;->a(Lokhttp3/Protocol;)Lokhttp3/ac$a;

    move-result-object v0

    new-instance v1, Lokhttp3/aa$a;

    invoke-direct {v1}, Lokhttp3/aa$a;-><init>()V

    const-string v2, "http://localhost/"

    .line 71
    invoke-virtual {v1, v2}, Lokhttp3/aa$a;->a(Ljava/lang/String;)Lokhttp3/aa$a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/aa$a;->d()Lokhttp3/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/ac$a;->a(Lokhttp3/aa;)Lokhttp3/ac$a;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lokhttp3/ac$a;->a()Lokhttp3/ac;

    move-result-object v0

    .line 68
    invoke-static {p1, v0}, Lretrofit2/Response;->error(Lokhttp3/ad;Lokhttp3/ac;)Lretrofit2/Response;

    move-result-object v0

    return-object v0
.end method

.method public static error(Lokhttp3/ad;Lokhttp3/ac;)Lretrofit2/Response;
    .locals 2
    .param p0, "body"    # Lokhttp3/ad;
    .param p1, "rawResponse"    # Lokhttp3/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/ad;",
            "Lokhttp3/ac;",
            ")",
            "Lretrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 77
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "body == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rawResponse == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    invoke-virtual {p1}, Lokhttp3/ac;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rawResponse should not be successful response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_2
    new-instance v0, Lretrofit2/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lretrofit2/Response;-><init>(Lokhttp3/ac;Ljava/lang/Object;Lokhttp3/ad;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;)Lretrofit2/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lretrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "body":Ljava/lang/Object;, "TT;"
    new-instance v0, Lokhttp3/ac$a;

    invoke-direct {v0}, Lokhttp3/ac$a;-><init>()V

    const/16 v1, 0xc8

    .line 28
    invoke-virtual {v0, v1}, Lokhttp3/ac$a;->a(I)Lokhttp3/ac$a;

    move-result-object v0

    const-string v1, "OK"

    .line 29
    invoke-virtual {v0, v1}, Lokhttp3/ac$a;->a(Ljava/lang/String;)Lokhttp3/ac$a;

    move-result-object v0

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 30
    invoke-virtual {v0, v1}, Lokhttp3/ac$a;->a(Lokhttp3/Protocol;)Lokhttp3/ac$a;

    move-result-object v0

    new-instance v1, Lokhttp3/aa$a;

    invoke-direct {v1}, Lokhttp3/aa$a;-><init>()V

    const-string v2, "http://localhost/"

    .line 31
    invoke-virtual {v1, v2}, Lokhttp3/aa$a;->a(Ljava/lang/String;)Lokhttp3/aa$a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/aa$a;->d()Lokhttp3/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/ac$a;->a(Lokhttp3/aa;)Lokhttp3/ac$a;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lokhttp3/ac$a;->a()Lokhttp3/ac;

    move-result-object v0

    .line 27
    invoke-static {p0, v0}, Lretrofit2/Response;->success(Ljava/lang/Object;Lokhttp3/ac;)Lretrofit2/Response;

    move-result-object v0

    return-object v0
.end method

.method public static success(Ljava/lang/Object;Lokhttp3/ac;)Lretrofit2/Response;
    .locals 2
    .param p1, "rawResponse"    # Lokhttp3/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lokhttp3/ac;",
            ")",
            "Lretrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "body":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rawResponse == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-virtual {p1}, Lokhttp3/ac;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rawResponse must be successful response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    new-instance v0, Lretrofit2/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lretrofit2/Response;-><init>(Lokhttp3/ac;Ljava/lang/Object;Lokhttp3/ad;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;Lokhttp3/t;)Lretrofit2/Response;
    .locals 3
    .param p1, "headers"    # Lokhttp3/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lokhttp3/t;",
            ")",
            "Lretrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "body":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "headers == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    new-instance v0, Lokhttp3/ac$a;

    invoke-direct {v0}, Lokhttp3/ac$a;-><init>()V

    const/16 v1, 0xc8

    .line 42
    invoke-virtual {v0, v1}, Lokhttp3/ac$a;->a(I)Lokhttp3/ac$a;

    move-result-object v0

    const-string v1, "OK"

    .line 43
    invoke-virtual {v0, v1}, Lokhttp3/ac$a;->a(Ljava/lang/String;)Lokhttp3/ac$a;

    move-result-object v0

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 44
    invoke-virtual {v0, v1}, Lokhttp3/ac$a;->a(Lokhttp3/Protocol;)Lokhttp3/ac$a;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Lokhttp3/ac$a;->a(Lokhttp3/t;)Lokhttp3/ac$a;

    move-result-object v0

    new-instance v1, Lokhttp3/aa$a;

    invoke-direct {v1}, Lokhttp3/aa$a;-><init>()V

    const-string v2, "http://localhost/"

    .line 46
    invoke-virtual {v1, v2}, Lokhttp3/aa$a;->a(Ljava/lang/String;)Lokhttp3/aa$a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/aa$a;->d()Lokhttp3/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/ac$a;->a(Lokhttp3/aa;)Lokhttp3/ac$a;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lokhttp3/ac$a;->a()Lokhttp3/ac;

    move-result-object v0

    .line 41
    invoke-static {p0, v0}, Lretrofit2/Response;->success(Ljava/lang/Object;Lokhttp3/ac;)Lretrofit2/Response;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public body()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    iget-object v0, p0, Lretrofit2/Response;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public code()I
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    iget-object v0, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/ac;

    invoke-virtual {v0}, Lokhttp3/ac;->c()I

    move-result v0

    return v0
.end method

.method public errorBody()Lokhttp3/ad;
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    iget-object v0, p0, Lretrofit2/Response;->errorBody:Lokhttp3/ad;

    return-object v0
.end method

.method public headers()Lokhttp3/t;
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    iget-object v0, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/ac;

    invoke-virtual {v0}, Lokhttp3/ac;->g()Lokhttp3/t;

    move-result-object v0

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    iget-object v0, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/ac;

    invoke-virtual {v0}, Lokhttp3/ac;->d()Z

    move-result v0

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    iget-object v0, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/ac;

    invoke-virtual {v0}, Lokhttp3/ac;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public raw()Lokhttp3/ac;
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    iget-object v0, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/ac;

    return-object v0
.end method

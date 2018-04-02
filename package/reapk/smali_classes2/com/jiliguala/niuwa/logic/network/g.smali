.class public Lcom/jiliguala/niuwa/logic/network/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/g$b;,
        Lcom/jiliguala/niuwa/logic/network/g$a;,
        Lcom/jiliguala/niuwa/logic/network/g$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "https://"

.field public static final b:Ljava/lang/String; = "jiliguala.com"

.field public static final c:Ljava/lang/String; = "dev.jiliguala.com"

.field public static final d:Ljava/lang/String;

.field private static final e:I = 0xa

.field private static final f:I = 0x14

.field private static final g:Ljava/lang/String;

.field private static final h:I = 0x500000

.field private static final i:I


# instance fields
.field private j:Lcom/google/gson/Gson;

.field private k:Lretrofit2/Retrofit$Builder;

.field private l:Lokhttp3/y$a;

.field private m:Lokhttp3/y$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "https://dev.jiliguala.com"

    :goto_0
    sput-object v0, Lcom/jiliguala/niuwa/logic/network/g;->d:Ljava/lang/String;

    .line 51
    const-class v0, Lcom/jiliguala/niuwa/logic/network/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/g;->g:Ljava/lang/String;

    return-void

    .line 48
    :cond_0
    const-string v0, "https://jiliguala.com"

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/g;->j:Lcom/google/gson/Gson;

    .line 55
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/g;->k:Lretrofit2/Retrofit$Builder;

    .line 56
    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/g;->m:Lokhttp3/y$a;

    .line 59
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/network/g;->c()V

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/logic/network/g$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/logic/network/g$1;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/network/g;-><init>()V

    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/network/g;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/jiliguala/niuwa/logic/network/g$c;->a:Lcom/jiliguala/niuwa/logic/network/g;

    return-object v0
.end method

.method private a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)TS;"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/g;->l:Lokhttp3/y$a;

    invoke-virtual {v2}, Lokhttp3/y$a;->c()Lokhttp3/y;

    move-result-object v0

    .line 139
    .local v0, "client":Lokhttp3/y;
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/g;->k:Lretrofit2/Retrofit$Builder;

    invoke-virtual {v2, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/y;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    .line 141
    .local v1, "retrofit":Lretrofit2/Retrofit;
    invoke-virtual {v1, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method static synthetic a(Lokhttp3/aa;)Lokhttp3/u$a;
    .locals 1
    .param p0, "x0"    # Lokhttp3/aa;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/network/g;->b(Lokhttp3/aa;)Lokhttp3/u$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lokhttp3/aa$a;)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/aa$a;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/network/g;->c(Lokhttp3/aa$a;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/aa$a;Lokhttp3/aa;)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/aa$a;
    .param p1, "x1"    # Lokhttp3/aa;

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/jiliguala/niuwa/logic/network/g;->b(Lokhttp3/aa$a;Lokhttp3/aa;)V

    return-void
.end method

.method private static b(Lokhttp3/aa;)Lokhttp3/u$a;
    .locals 4
    .param p0, "original"    # Lokhttp3/aa;

    .prologue
    .line 68
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/aa;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "get"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lokhttp3/u;->u()Lokhttp3/u$a;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/u;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/u$a;->a(Ljava/lang/String;)Lokhttp3/u$a;

    move-result-object v1

    .line 73
    invoke-virtual {p0}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/u;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/u$a;->f(Ljava/lang/String;)Lokhttp3/u$a;

    move-result-object v1

    const-string v2, "nonce"

    .line 74
    invoke-virtual {v1, v2}, Lokhttp3/u$a;->o(Ljava/lang/String;)Lokhttp3/u$a;

    move-result-object v1

    const-string v2, "nonce"

    .line 75
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/u$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/u$a;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lokhttp3/aa$a;)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/aa$a;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/network/g;->d(Lokhttp3/aa$a;)V

    return-void
.end method

.method private static b(Lokhttp3/aa$a;Lokhttp3/aa;)V
    .locals 2
    .param p0, "requestBuilder"    # Lokhttp3/aa$a;
    .param p1, "original"    # Lokhttp3/aa;

    .prologue
    .line 90
    invoke-virtual {p1}, Lokhttp3/aa;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/aa;->d()Lokhttp3/ab;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lokhttp3/aa$a;->a(Ljava/lang/String;Lokhttp3/ab;)Lokhttp3/aa$a;

    .line 91
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 106
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 107
    .local v0, "gsonBuilder":Lcom/google/gson/GsonBuilder;
    const-class v1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    new-instance v2, Lcom/jiliguala/niuwa/module/interact/course/deserialize/IWidgetDeserializer;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/module/interact/course/deserialize/IWidgetDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 108
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/network/g;->j:Lcom/google/gson/Gson;

    .line 109
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v2, Lcom/jiliguala/niuwa/logic/network/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/g;->j:Lcom/google/gson/Gson;

    .line 110
    invoke-static {v2}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 111
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/h;->a()Lretrofit2/CallAdapter$Factory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/network/g;->k:Lretrofit2/Retrofit$Builder;

    .line 112
    new-instance v1, Lokhttp3/y$a;

    invoke-direct {v1}, Lokhttp3/y$a;-><init>()V

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/y$a;->a(JLjava/util/concurrent/TimeUnit;)Lokhttp3/y$a;

    move-result-object v1

    const/4 v2, 0x0

    .line 113
    invoke-virtual {v1, v2}, Lokhttp3/y$a;->c(Z)Lokhttp3/y$a;

    move-result-object v1

    const-wide/16 v2, 0x14

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 114
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/y$a;->b(JLjava/util/concurrent/TimeUnit;)Lokhttp3/y$a;

    move-result-object v1

    new-instance v2, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v2}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 115
    invoke-virtual {v1, v2}, Lokhttp3/y$a;->a(Lokhttp3/v;)Lokhttp3/y$a;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/logic/network/g$a;

    invoke-direct {v2, v5}, Lcom/jiliguala/niuwa/logic/network/g$a;-><init>(Lcom/jiliguala/niuwa/logic/network/g$1;)V

    .line 116
    invoke-virtual {v1, v2}, Lokhttp3/y$a;->a(Lokhttp3/v;)Lokhttp3/y$a;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/logic/network/g$b;

    invoke-direct {v2, v5}, Lcom/jiliguala/niuwa/logic/network/g$b;-><init>(Lcom/jiliguala/niuwa/logic/network/g$1;)V

    invoke-virtual {v1, v2}, Lokhttp3/y$a;->a(Lokhttp3/v;)Lokhttp3/y$a;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/logic/network/b;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/logic/network/b;-><init>()V

    .line 118
    invoke-virtual {v1, v2}, Lokhttp3/y$a;->a(Lokhttp3/q;)Lokhttp3/y$a;

    move-result-object v1

    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/network/g;->e()Lokhttp3/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/y$a;->a(Lokhttp3/c;)Lokhttp3/y$a;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/network/g;->l:Lokhttp3/y$a;

    .line 120
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/network/g;->d()Lokhttp3/y$a;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/network/g;->m:Lokhttp3/y$a;

    .line 121
    return-void
.end method

.method private static c(Lokhttp3/aa$a;)V
    .locals 3
    .param p0, "requestBuilder"    # Lokhttp3/aa$a;

    .prologue
    .line 82
    const-string v0, "content-type"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Lokhttp3/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;

    move-result-object v0

    const-string v1, "version"

    const-string v2, "1"

    .line 83
    invoke-virtual {v0, v1, v2}, Lokhttp3/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;

    move-result-object v0

    const-string v1, "Connection"

    const-string v2, "close"

    .line 84
    invoke-virtual {v0, v1, v2}, Lokhttp3/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;

    move-result-object v0

    const-string v1, "User-Agent"

    .line 85
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;

    move-result-object v0

    const-string v1, "accept"

    const-string v2, "*/*"

    .line 86
    invoke-virtual {v0, v1, v2}, Lokhttp3/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;

    .line 87
    return-void
.end method

.method private d()Lokhttp3/y$a;
    .locals 4

    .prologue
    .line 124
    new-instance v0, Lokhttp3/y$a;

    invoke-direct {v0}, Lokhttp3/y$a;-><init>()V

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/y$a;->a(JLjava/util/concurrent/TimeUnit;)Lokhttp3/y$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 125
    invoke-virtual {v0, v1}, Lokhttp3/y$a;->c(Z)Lokhttp3/y$a;

    move-result-object v0

    const-wide/16 v2, 0x14

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 126
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/y$a;->b(JLjava/util/concurrent/TimeUnit;)Lokhttp3/y$a;

    move-result-object v0

    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 127
    invoke-virtual {v0, v1}, Lokhttp3/y$a;->a(Lokhttp3/v;)Lokhttp3/y$a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/b;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/b;-><init>()V

    .line 128
    invoke-virtual {v0, v1}, Lokhttp3/y$a;->a(Lokhttp3/q;)Lokhttp3/y$a;

    move-result-object v0

    .line 129
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/network/g;->e()Lokhttp3/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/y$a;->a(Lokhttp3/c;)Lokhttp3/y$a;

    move-result-object v0

    .line 124
    return-object v0
.end method

.method private static d(Lokhttp3/aa$a;)V
    .locals 7
    .param p0, "requestBuilder"    # Lokhttp3/aa$a;

    .prologue
    .line 94
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "uid":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->s()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "token":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "credentials":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Basic "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "basicAuth":Ljava/lang/String;
    const-string v4, "authorization"

    invoke-virtual {p0, v4, v0}, Lokhttp3/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;

    .line 103
    .end local v0    # "basicAuth":Ljava/lang/String;
    .end local v1    # "credentials":Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "uid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private e()Lokhttp3/c;
    .locals 4

    .prologue
    .line 133
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "response"

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 134
    .local v0, "httpCacheFile":Ljava/io/File;
    new-instance v1, Lokhttp3/c;

    const-wide/32 v2, 0x500000

    invoke-direct {v1, v0, v2, v3}, Lokhttp3/c;-><init>(Ljava/io/File;J)V

    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;
    .locals 5
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 168
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/RetrofitException;

    move-object v2, v0

    .line 169
    .local v2, "error":Lcom/jiliguala/niuwa/logic/network/RetrofitException;
    const-class v4, Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;

    invoke-virtual {v2, v4}, Lcom/jiliguala/niuwa/logic/network/RetrofitException;->getErrorBodyAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .local v3, "response":Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;
    if-eqz v3, :cond_0

    .line 176
    .end local v2    # "error":Lcom/jiliguala/niuwa/logic/network/RetrofitException;
    .end local v3    # "response":Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;
    :cond_0
    :goto_0
    return-object v3

    .line 174
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lokhttp3/f;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .param p4, "callback"    # Lokhttp3/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/jiliguala/niuwa/logic/network/g;->m:Lokhttp3/y$a;

    invoke-virtual {v7}, Lokhttp3/y$a;->c()Lokhttp3/y;

    move-result-object v1

    .line 146
    .local v1, "client":Lokhttp3/y;
    new-instance v7, Lokhttp3/aa$a;

    invoke-direct {v7}, Lokhttp3/aa$a;-><init>()V

    invoke-virtual {v7, p1}, Lokhttp3/aa$a;->a(Ljava/lang/String;)Lokhttp3/aa$a;

    move-result-object v0

    .line 147
    .local v0, "builder":Lokhttp3/aa$a;
    if-eqz p2, :cond_0

    .line 148
    const-string v7, "Cookie"

    invoke-virtual {v0, v7, p2}, Lokhttp3/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;

    .line 150
    :cond_0
    if-eqz p3, :cond_1

    .line 151
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 152
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 153
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 154
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 155
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v0, v4, v6}, Lokhttp3/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;

    goto :goto_0

    .line 158
    .end local v2    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lokhttp3/aa$a;->d()Lokhttp3/aa;

    move-result-object v5

    .line 159
    .local v5, "request":Lokhttp3/aa;
    invoke-virtual {v1, v5}, Lokhttp3/y;->a(Lokhttp3/aa;)Lokhttp3/e;

    move-result-object v7

    invoke-interface {v7, p4}, Lokhttp3/e;->a(Lokhttp3/f;)V

    .line 160
    return-void
.end method

.method public b()Lcom/jiliguala/niuwa/logic/network/d;
    .locals 1

    .prologue
    .line 163
    const-class v0, Lcom/jiliguala/niuwa/logic/network/d;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/network/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/d;

    return-object v0
.end method

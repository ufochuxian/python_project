.class public Lcom/jiliguala/niuwa/logic/network/h;
.super Lretrofit2/CallAdapter$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/h$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x1388

.field private static b:Ljava/lang/String;

.field private static c:J


# instance fields
.field private final d:Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lretrofit2/CallAdapter$Factory;-><init>()V

    .line 40
    invoke-static {}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->create()Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/h;->d:Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    .line 41
    return-void
.end method

.method static synthetic a(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 31
    sput-wide p0, Lcom/jiliguala/niuwa/logic/network/h;->c:J

    return-wide p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 31
    sput-object p0, Lcom/jiliguala/niuwa/logic/network/h;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static a()Lretrofit2/CallAdapter$Factory;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/h;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/h;-><init>()V

    return-object v0
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 31
    sget-wide v0, Lcom/jiliguala/niuwa/logic/network/h;->c:J

    return-wide v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/jiliguala/niuwa/logic/network/h;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
    .locals 2
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
    .line 49
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/h$a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/h;->d:Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    invoke-virtual {v1, p1, p2, p3}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Lcom/jiliguala/niuwa/logic/network/h$a;-><init>(Lretrofit2/Retrofit;Lretrofit2/CallAdapter;)V

    return-object v0
.end method

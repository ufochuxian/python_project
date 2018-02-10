.class public Lorg/xbill/DNS/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/net/spi/nameservice/NameServiceDescriptor;


# static fields
.field static a:Ljava/lang/Class;

.field private static b:Lsun/net/spi/nameservice/NameService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 21
    sget-object v1, Lorg/xbill/DNS/a/b;->a:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "sun.net.spi.nameservice.NameService"

    invoke-static {v1}, Lorg/xbill/DNS/a/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/a/b;->a:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 22
    .local v0, "loader":Ljava/lang/ClassLoader;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v1, Lorg/xbill/DNS/a/b;->a:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "sun.net.spi.nameservice.NameService"

    invoke-static {v1}, Lorg/xbill/DNS/a/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/a/b;->a:Ljava/lang/Class;

    :goto_1
    aput-object v1, v2, v3

    new-instance v1, Lorg/xbill/DNS/a/a;

    invoke-direct {v1}, Lorg/xbill/DNS/a/a;-><init>()V

    invoke-static {v0, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/net/spi/nameservice/NameService;

    sput-object v1, Lorg/xbill/DNS/a/b;->b:Lsun/net/spi/nameservice/NameService;

    .line 25
    return-void

    .line 21
    .end local v0    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    sget-object v1, Lorg/xbill/DNS/a/b;->a:Ljava/lang/Class;

    goto :goto_0

    .line 22
    .restart local v0    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    sget-object v1, Lorg/xbill/DNS/a/b;->a:Ljava/lang/Class;

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 21
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public a()Lsun/net/spi/nameservice/NameService;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/xbill/DNS/a/b;->b:Lsun/net/spi/nameservice/NameService;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "dns"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "dnsjava"

    return-object v0
.end method

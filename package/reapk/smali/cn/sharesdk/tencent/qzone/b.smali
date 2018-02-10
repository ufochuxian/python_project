.class public Lcn/sharesdk/tencent/qzone/b;
.super Lcn/sharesdk/framework/b;
.source "SourceFile"


# static fields
.field private static final b:[Ljava/lang/String;

.field private static c:Lcn/sharesdk/tencent/qzone/b;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcn/sharesdk/framework/a/a;

.field private i:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "get_user_info"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "get_simple_userinfo"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "get_user_profile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "get_app_friends"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "add_share"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "list_album"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "upload_pic"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "add_album"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "set_user_face"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "get_vip_info"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "get_vip_rich_info"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "get_intimate_friends_weibo"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "match_nick_tips_weibo"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "add_t"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "add_pic_t"

    aput-object v2, v0, v1

    sput-object v0, Lcn/sharesdk/tencent/qzone/b;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 72
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->h:Lcn/sharesdk/framework/a/a;

    .line 73
    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qzone/b;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcn/sharesdk/tencent/qzone/b;->c:Lcn/sharesdk/tencent/qzone/b;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcn/sharesdk/tencent/qzone/b;

    invoke-direct {v0, p0}, Lcn/sharesdk/tencent/qzone/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/tencent/qzone/b;->c:Lcn/sharesdk/tencent/qzone/b;

    .line 67
    :cond_0
    sget-object v0, Lcn/sharesdk/tencent/qzone/b;->c:Lcn/sharesdk/tencent/qzone/b;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qzone/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qzone/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/b;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qzone/b;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcn/sharesdk/tencent/qzone/b;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/tencent/qzone/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->i:[Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcn/sharesdk/tencent/qzone/b;->b:[Ljava/lang/String;

    .line 133
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    array-length v4, v0

    move v2, v1

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v0, v1

    .line 136
    if-lez v2, :cond_0

    .line 137
    const/16 v6, 0x2c

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v2, v2, 0x1

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 132
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->i:[Ljava/lang/String;

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 374
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 376
    :try_start_0
    const-string v0, "android.media.MediaMetadataRetriever"

    invoke-static {v0}, Lcom/mob/tools/c/k;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 378
    const-string v2, "setDataSource"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 379
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v0, "extractMetadata"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_0
    return-object v0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    const-string v0, ""

    goto :goto_0

    .line 386
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 456
    const-string v1, "https://graph.qq.com/photo/upload_pic"

    .line 457
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 458
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v3, "access_token"

    iget-object v4, p0, Lcn/sharesdk/tencent/qzone/b;->f:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v3, "oauth_consumer_key"

    iget-object v4, p0, Lcn/sharesdk/tencent/qzone/b;->d:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v3, "openid"

    iget-object v4, p0, Lcn/sharesdk/tencent/qzone/b;->e:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v3, "format"

    const-string v4, "json"

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 463
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xc8

    if-le v0, v3, :cond_0

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0xc7

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v3

    .line 465
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v4

    const-string v5, "ssdk_symbol_ellipsis"

    invoke-static {v4, v5}, Lcom/mob/tools/c/l;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 464
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 467
    :cond_0
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v3, "photodesc"

    invoke-direct {v0, v3, p2}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_1
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v3, "mobile"

    const-string v4, "1"

    invoke-direct {v0, v3, v4}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    new-instance v3, Lcom/mob/tools/a/k;

    const-string v0, "picture"

    invoke-direct {v3, v0, p1}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 471
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 472
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v5, "User-Agent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v7

    const-string v8, "http.agent"

    .line 473
    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ArzenAndroidSDK"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 472
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->h:Lcn/sharesdk/framework/a/a;

    const-string v5, "/photo/upload_pic"

    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 477
    new-instance v1, Lcom/mob/tools/c/g;

    invoke-direct {v1}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 479
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 506
    if-nez p2, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-object v6

    .line 510
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 511
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 512
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 513
    new-instance v4, Lcom/mob/tools/a/k;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v1, v0}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 516
    :cond_2
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v1, "access_token"

    iget-object v3, p0, Lcn/sharesdk/tencent/qzone/b;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v1, "oauth_consumer_key"

    iget-object v3, p0, Lcn/sharesdk/tencent/qzone/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v1, "openid"

    iget-object v3, p0, Lcn/sharesdk/tencent/qzone/b;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v1, "format"

    const-string v3, "json"

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 523
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v6

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 524
    new-instance v3, Lcom/mob/tools/a/k;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v3

    .line 525
    goto :goto_2

    :cond_3
    move-object v3, v0

    .line 528
    :goto_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 529
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v1, "User-Agent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v7

    const-string v8, "http.agent"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ArzenAndroidSDK"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    :try_start_0
    const-string v0, "GET"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 534
    new-instance v0, Lcom/mob/tools/a/n;

    invoke-direct {v0}, Lcom/mob/tools/a/n;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v4, v1}, Lcom/mob/tools/a/n;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 542
    :goto_4
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 543
    new-instance v1, Lcom/mob/tools/c/g;

    invoke-direct {v1}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    goto/16 :goto_0

    .line 535
    :cond_4
    :try_start_1
    const-string v0, "POST"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 536
    new-instance v0, Lcom/mob/tools/a/n;

    invoke-direct {v0}, Lcom/mob/tools/a/n;-><init>()V

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/n;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_4

    .line 538
    :catch_0
    move-exception v0

    .line 539
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    :cond_5
    move-object v0, v6

    goto :goto_4

    :cond_6
    move-object v3, v6

    goto :goto_3
.end method

.method public a()V
    .locals 2

    .prologue
    .line 158
    new-instance v0, Lcn/sharesdk/tencent/qzone/b$2;

    invoke-direct {v0, p0}, Lcn/sharesdk/tencent/qzone/b$2;-><init>(Lcn/sharesdk/tencent/qzone/b;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->a(Lcom/mob/tools/RxMob$a;)Lcom/mob/tools/RxMob$c;

    move-result-object v0

    .line 182
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$c;->a(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$c;

    .line 184
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->IMMEDIATE:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$c;->b(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$c;

    .line 185
    new-instance v1, Lcn/sharesdk/tencent/qzone/b$3;

    invoke-direct {v1, p0}, Lcn/sharesdk/tencent/qzone/b$3;-><init>(Lcn/sharesdk/tencent/qzone/b;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$c;->a(Lcom/mob/tools/RxMob$d;)V

    .line 205
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 267
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lcom/mob/tools/c/e;->H()Ljava/lang/String;

    move-result-object p6

    .line 272
    :cond_0
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {p6, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 276
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_1

    .line 277
    const/4 v0, 0x0

    const/16 v1, 0xc8

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    :goto_1
    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 280
    invoke-virtual/range {v0 .. v8}, Lcn/sharesdk/tencent/qzone/b;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 281
    return-void

    :cond_1
    move-object v2, p2

    goto :goto_1

    :cond_2
    move-object v6, p6

    goto :goto_0
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
    .locals 1

    .prologue
    .line 88
    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lcn/sharesdk/tencent/qzone/b;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 106
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Lcn/sharesdk/tencent/qzone/b$1;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/tencent/qzone/b$1;-><init>(Lcn/sharesdk/tencent/qzone/b;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    invoke-virtual {p0, v0}, Lcn/sharesdk/tencent/qzone/b;->a(Lcn/sharesdk/framework/authorize/SSOListener;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/b;->d:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/b;->i:[Ljava/lang/String;

    .line 85
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 549
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 550
    :goto_0
    if-eqz v0, :cond_1

    const-string v4, "/t/add_pic_t"

    .line 551
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://graph.qq.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 554
    new-instance v3, Lcom/mob/tools/a/k;

    const-string v5, "oauth_consumer_key"

    iget-object v6, p0, Lcn/sharesdk/tencent/qzone/b;->d:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    new-instance v3, Lcom/mob/tools/a/k;

    const-string v5, "access_token"

    iget-object v6, p0, Lcn/sharesdk/tencent/qzone/b;->f:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    new-instance v3, Lcom/mob/tools/a/k;

    const-string v5, "openid"

    iget-object v6, p0, Lcn/sharesdk/tencent/qzone/b;->e:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    new-instance v3, Lcom/mob/tools/a/k;

    const-string v5, "format"

    const-string v6, "json"

    invoke-direct {v3, v5, v6}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    new-instance v3, Lcom/mob/tools/a/k;

    const-string v5, "content"

    invoke-direct {v3, v5, p2}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    if-eqz v0, :cond_2

    .line 563
    new-instance v3, Lcom/mob/tools/a/k;

    const-string v0, "pic"

    invoke-direct {v3, v0, p1}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 564
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->h:Lcn/sharesdk/framework/a/a;

    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/b;->c()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 568
    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 569
    new-instance v0, Lcom/mob/tools/c/g;

    invoke-direct {v0}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v0, v2}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 570
    const-string v0, "ret"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 571
    if-eqz v0, :cond_3

    .line 572
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 550
    :cond_1
    const-string v4, "/t/add_t"

    goto/16 :goto_1

    .line 566
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->h:Lcn/sharesdk/framework/a/a;

    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/b;->c()I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 577
    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 286
    const-string v2, "1"

    .line 287
    const/4 v3, 0x6

    if-ne p1, v3, :cond_b

    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 288
    const-string v2, "4"

    .line 298
    :cond_0
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 299
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    const-string v4, "/data/"

    invoke-virtual {p5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 302
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v4

    const-string v5, "images"

    invoke-static {v4, v5}, Lcom/mob/tools/c/l;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 303
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 305
    invoke-static {p5, v3}, Lcom/mob/tools/c/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 306
    if-eqz v4, :cond_d

    move-object p5, v3

    .line 315
    :cond_1
    :goto_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x258

    if-le v3, v4, :cond_2

    .line 316
    const/4 v3, 0x0

    const/16 v4, 0x258

    invoke-virtual {p4, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 319
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    const-string v4, "3"

    if-eq v2, v4, :cond_3

    const-string v4, "4"

    if-ne v2, v4, :cond_e

    .line 321
    :cond_3
    const-string v4, "mqqapi://qzone/publish?src_type=app&version=1&file_type=news"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :goto_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 326
    const-string v4, "&image_url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {p5, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_4
    const/4 v4, 0x6

    if-ne p1, v4, :cond_5

    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "4"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 330
    invoke-static/range {p7 .. p7}, Lcom/mob/tools/c/l;->i(Ljava/lang/String;)J

    .line 331
    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 332
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcn/sharesdk/tencent/qzone/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 333
    const-string v6, "&videoPath="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "utf-8"

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v6, "&videoSize="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v7, 0x2

    invoke-static {v4, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 336
    const-string v4, "&videoDuration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "utf-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 340
    const-string v4, "&title="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_6
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 343
    const-string v4, "&description="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {p4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_7
    const-string v4, "&share_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/sharesdk/tencent/qzone/b;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 347
    const-string v4, "&url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {p3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_8
    const-string v4, "&app_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "utf-8"

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 353
    const-string v4, "&share_qq_ext_str="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_9
    const-string v4, "&req_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/b;->d()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "1"

    .line 359
    :goto_3
    const-string v4, "&cflag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 363
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 364
    if-eqz v2, :cond_a

    .line 365
    new-instance v2, Lcn/sharesdk/tencent/qzone/d;

    invoke-direct {v2}, Lcn/sharesdk/tencent/qzone/d;-><init>()V

    .line 366
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/tencent/qzone/d;->a(Ljava/lang/String;Z)V

    .line 367
    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Lcn/sharesdk/tencent/qzone/d;->a(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 368
    iget-object v3, p0, Lcn/sharesdk/tencent/qzone/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/sharesdk/tencent/qzone/d;->a(Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/tencent/qzone/d;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 371
    :cond_a
    :goto_4
    return-void

    .line 289
    :cond_b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 290
    const-string v2, "3"

    goto/16 :goto_0

    .line 291
    :cond_c
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    if-eqz p8, :cond_a

    .line 293
    const/4 v2, 0x0

    const/16 v3, 0x9

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "The param of title or titleUrl is null !"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p8

    invoke-interface {v0, v2, v3, v4}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_4

    .line 309
    :cond_d
    const/4 p5, 0x0

    goto/16 :goto_1

    .line 323
    :cond_e
    const-string v4, "mqqapi://share/to_qzone?src_type=app&version=1&file_type=news"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 358
    :cond_f
    const-string v2, "0"

    goto/16 :goto_3
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/b;->e:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public b()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 390
    .line 391
    const-string v0, "com.qzone"

    .line 393
    :try_start_0
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 398
    if-nez v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return v1

    .line 394
    :catch_0
    move-exception v0

    .line 395
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 402
    :cond_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 403
    array-length v0, v4

    new-array v5, v0, [I

    move v0, v1

    .line 404
    :goto_1
    array-length v3, v5

    if-ge v0, v3, :cond_2

    .line 406
    :try_start_1
    aget-object v3, v4, v0

    invoke-static {v3}, Lcom/mob/tools/c/l;->g(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 404
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 407
    :catch_1
    move-exception v3

    .line 408
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 409
    aput v1, v5, v0

    goto :goto_2

    .line 413
    :cond_2
    array-length v0, v5

    if-le v0, v2, :cond_0

    aget v0, v5, v1

    const/4 v3, 0x4

    if-ge v0, v3, :cond_3

    aget v0, v5, v2

    if-lt v0, v2, :cond_0

    :cond_3
    move v1, v2

    .line 416
    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/b;->f:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 220
    const-string v1, "https://graph.qq.com/user/get_simple_userinfo"

    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 222
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v3, "access_token"

    iget-object v5, p0, Lcn/sharesdk/tencent/qzone/b;->f:Ljava/lang/String;

    invoke-direct {v0, v3, v5}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v3, "oauth_consumer_key"

    iget-object v5, p0, Lcn/sharesdk/tencent/qzone/b;->d:Ljava/lang/String;

    invoke-direct {v0, v3, v5}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v3, "openid"

    iget-object v5, p0, Lcn/sharesdk/tencent/qzone/b;->e:Ljava/lang/String;

    invoke-direct {v0, v3, v5}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 226
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v5, "User-Agent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v7

    const-string v8, "http.agent"

    .line 227
    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ArzenAndroidSDK"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->h:Lcn/sharesdk/framework/a/a;

    const-string v5, "/user/get_simple_userinfo"

    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 231
    new-instance v1, Lcom/mob/tools/c/g;

    invoke-direct {v1}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 233
    :cond_0
    return-object v4
.end method

.method public d()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 420
    .line 422
    :try_start_0
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 423
    const-string v2, "com.tencent.mobileqq"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 424
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 452
    :goto_1
    return v0

    .line 425
    :catch_0
    move-exception v0

    .line 427
    :try_start_1
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 428
    const-string v3, "com.tencent.qqlite"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 429
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 430
    :catch_1
    move-exception v2

    .line 432
    :try_start_2
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 433
    const-string v3, "com.tencent.minihd.qq"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 434
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 435
    :catch_2
    move-exception v2

    .line 437
    :try_start_3
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 438
    const-string v3, "com.tencent.tim"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 439
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 440
    :catch_3
    move-exception v2

    .line 441
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 442
    const/4 v0, 0x0

    goto :goto_0

    .line 452
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public e(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 483
    const-string v1, "https://graph.qq.com/oauth2.0/me"

    .line 484
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 485
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v3, "access_token"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 487
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v5, "User-Agent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v7

    const-string v8, "http.agent"

    .line 488
    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ArzenAndroidSDK"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b;->h:Lcn/sharesdk/framework/a/a;

    const-string v5, "/oauth2.0/me"

    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/b;->c()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 491
    const-string v1, "callback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 492
    :goto_0
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 493
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 495
    :cond_0
    :goto_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 496
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 499
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 500
    new-instance v1, Lcom/mob/tools/c/g;

    invoke-direct {v1}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 502
    :cond_2
    return-object v4
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    const-string v0, "/oauth2.0/authorize"

    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/b;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    .line 110
    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/b;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    .line 113
    :try_start_0
    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/mob/tools/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://graph.qq.com/oauth2.0/m_authorize?response_type=token&client_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/tencent/qzone/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&redirect_uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&display=mobile&scope="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 116
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/b;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .locals 1
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 128
    new-instance v0, Lcn/sharesdk/tencent/qzone/a;

    invoke-direct {v0, p1}, Lcn/sharesdk/tencent/qzone/a;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "auth://tauth.qq.com/"

    return-object v0
.end method

.method public getSSOProcessor(Lcn/sharesdk/framework/authorize/c;)Lcn/sharesdk/framework/authorize/d;
    .locals 3
    .param p1, "ssoAct"    # Lcn/sharesdk/framework/authorize/c;

    .prologue
    .line 146
    new-instance v0, Lcn/sharesdk/tencent/qzone/c;

    invoke-direct {v0, p1}, Lcn/sharesdk/tencent/qzone/c;-><init>(Lcn/sharesdk/framework/authorize/c;)V

    .line 147
    const/16 v1, 0x1618

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qzone/c;->a(I)V

    .line 149
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/b;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/tencent/qzone/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-object v0
.end method

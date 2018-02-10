.class public Lcn/sharesdk/sina/weibo/f;
.super Lcn/sharesdk/framework/b;
.source "SourceFile"


# static fields
.field private static b:Lcn/sharesdk/sina/weibo/f;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:Lcn/sharesdk/framework/a/a;


# direct methods
.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "follow_app_official_microblog"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/f;->g:[Ljava/lang/String;

    .line 75
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/f;->h:Lcn/sharesdk/framework/a/a;

    .line 76
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method public static declared-synchronized a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/sina/weibo/f;
    .locals 2

    .prologue
    .line 67
    const-class v1, Lcn/sharesdk/sina/weibo/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/sharesdk/sina/weibo/f;->b:Lcn/sharesdk/sina/weibo/f;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcn/sharesdk/sina/weibo/f;

    invoke-direct {v0, p0}, Lcn/sharesdk/sina/weibo/f;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/sina/weibo/f;->b:Lcn/sharesdk/sina/weibo/f;

    .line 70
    :cond_0
    sget-object v0, Lcn/sharesdk/sina/weibo/f;->b:Lcn/sharesdk/sina/weibo/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 4

    .prologue
    .line 248
    new-instance v0, Lcn/sharesdk/sina/weibo/d;

    invoke-direct {v0}, Lcn/sharesdk/sina/weibo/d;-><init>()V

    .line 249
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->e:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/sina/weibo/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, p1}, Lcn/sharesdk/sina/weibo/d;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 251
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/sina/weibo/d;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 252
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/f;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/sina/weibo/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic h(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic i(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic j(Lcn/sharesdk/sina/weibo/f;)Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method


# virtual methods
.method public a(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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
    .line 487
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 488
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "source"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    const/4 v0, 0x1

    .line 491
    :try_start_0
    invoke-static {p3}, Lcom/mob/tools/c/l;->h(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_0
    if-eqz v0, :cond_0

    .line 496
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "uid"

    invoke-direct {v0, v2, p3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    :goto_1
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "page"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    const-string v0, "https://api.weibo.com/2/statuses/user_timeline.json"

    .line 504
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->h:Lcn/sharesdk/framework/a/a;

    const-string v3, "/2/statuses/user_timeline.json"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_1

    .line 506
    new-instance v1, Lcom/mob/tools/c/g;

    invoke-direct {v1}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 508
    :goto_2
    return-object v0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    const/4 v0, 0x0

    goto :goto_0

    .line 498
    :cond_0
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "screen_name"

    invoke-direct {v0, v2, p3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 508
    :cond_1
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
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

    .line 621
    if-nez p2, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-object v6

    .line 625
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 626
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 627
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

    .line 628
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

    .line 631
    :cond_2
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v1, "source"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 633
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v1, "access_token"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_3
    if-eqz p4, :cond_7

    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 638
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v6

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 639
    new-instance v3, Lcom/mob/tools/a/k;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v3

    .line 640
    goto :goto_2

    :cond_4
    move-object v3, v0

    .line 644
    :goto_3
    const/4 v5, 0x0

    .line 646
    :try_start_0
    const-string v0, "GET"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 647
    new-instance v0, Lcom/mob/tools/a/n;

    invoke-direct {v0}, Lcom/mob/tools/a/n;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v1, v5}, Lcom/mob/tools/a/n;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 654
    :goto_4
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 655
    new-instance v1, Lcom/mob/tools/c/g;

    invoke-direct {v1}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    goto/16 :goto_0

    .line 648
    :cond_5
    :try_start_1
    const-string v0, "POST"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 649
    new-instance v0, Lcom/mob/tools/a/n;

    invoke-direct {v0}, Lcom/mob/tools/a/n;-><init>()V

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/n;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_4

    .line 651
    :catch_0
    move-exception v0

    .line 652
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    :cond_6
    move-object v0, v6

    goto :goto_4

    :cond_7
    move-object v3, v6

    goto :goto_3
.end method

.method public a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 3

    .prologue
    .line 255
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    :try_start_0
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setImagePath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 270
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 275
    :cond_1
    new-instance v0, Lcn/sharesdk/sina/weibo/f$2;

    invoke-direct {v0, p0, p2, p1}, Lcn/sharesdk/sina/weibo/f$2;-><init>(Lcn/sharesdk/sina/weibo/f;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 297
    new-instance v1, Lcn/sharesdk/sina/weibo/a;

    invoke-direct {v1}, Lcn/sharesdk/sina/weibo/a;-><init>()V

    .line 298
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/sharesdk/sina/weibo/a;->a(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v1, p1}, Lcn/sharesdk/sina/weibo/a;->a(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 300
    invoke-virtual {v1, v0}, Lcn/sharesdk/sina/weibo/a;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 301
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/sina/weibo/a;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 302
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
    .locals 1

    .prologue
    .line 105
    if-eqz p2, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 130
    :goto_0
    return-void

    .line 109
    :cond_0
    new-instance v0, Lcn/sharesdk/sina/weibo/f$1;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/sina/weibo/f$1;-><init>(Lcn/sharesdk/sina/weibo/f;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    invoke-virtual {p0, v0}, Lcn/sharesdk/sina/weibo/f;->a(Lcn/sharesdk/framework/authorize/SSOListener;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/f;->e:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcn/sharesdk/sina/weibo/f;->d:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 89
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/f;->g:[Ljava/lang/String;

    .line 91
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    new-instance v2, Lcom/mob/tools/a/k;

    const-string v3, "client_id"

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v2, Lcom/mob/tools/a/k;

    const-string v3, "client_secret"

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/f;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v2, Lcom/mob/tools/a/k;

    const-string v3, "redirect_uri"

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/f;->e:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v2, Lcom/mob/tools/a/k;

    const-string v3, "grant_type"

    const-string v4, "refresh_token"

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v2, Lcom/mob/tools/a/k;

    const-string v3, "refresh_token"

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v4

    const-string v5, "refresh_token"

    invoke-virtual {v4, v5}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    const-string v2, "https://api.weibo.com/oauth2/access_token"

    .line 172
    :try_start_0
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->h:Lcn/sharesdk/framework/a/a;

    const-string v4, "/oauth2/access_token"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->c()I

    move-result v5

    invoke-virtual {v3, v2, v1, v4, v5}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    new-instance v2, Lcom/mob/tools/c/g;

    invoke-direct {v2}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v2, v1}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 184
    const-string v2, "uid"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 185
    const-string v3, "expires_in"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 186
    const-string v4, "access_token"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    .line 187
    const-string v4, "refresh_token"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 188
    const-string v5, "remind_in"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 190
    iget-object v5, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v5}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 192
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v3, "refresh_token"

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v3, "remind_in"

    invoke-virtual {v2, v3, v1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 195
    :catch_0
    move-exception v1

    .line 196
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v2, "client_id"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v2, "client_secret"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v2, "redirect_uri"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v2, "grant_type"

    const-string v3, "authorization_code"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v2, "code"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    const-string v1, "https://api.weibo.com/oauth2/access_token"

    .line 155
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->h:Lcn/sharesdk/framework/a/a;

    const-string v3, "/oauth2/access_token"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->c()I

    move-result v4

    invoke-virtual {v2, v1, v0, v3, v4}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 157
    const-string v1, "/oauth2/access_token"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->c()I

    move-result v2

    invoke-static {v1, v2}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    .line 158
    return-object v0
.end method

.method public b(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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
    .line 520
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 521
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "source"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 523
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "access_token"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_0
    const/4 v0, 0x1

    .line 527
    :try_start_0
    invoke-static {p3}, Lcom/mob/tools/c/l;->h(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_0
    if-eqz v0, :cond_1

    .line 532
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "uid"

    invoke-direct {v0, v2, p3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    :goto_1
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "cursor"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    const-string v0, "https://api.weibo.com/2/friendships/friends.json"

    .line 540
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->h:Lcn/sharesdk/framework/a/a;

    const-string v3, "/2/friendships/friends.json"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_2

    .line 542
    new-instance v1, Lcom/mob/tools/c/g;

    invoke-direct {v1}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 544
    :goto_2
    return-object v0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    const/4 v0, 0x0

    goto :goto_0

    .line 534
    :cond_1
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "screen_name"

    invoke-direct {v0, v2, p3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 544
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public b(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 4

    .prologue
    .line 305
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/f;->a:Lcn/sharesdk/framework/Platform;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 312
    :cond_0
    new-instance v0, Lcn/sharesdk/sina/weibo/f$3;

    invoke-direct {v0, p0, p2, p1}, Lcn/sharesdk/sina/weibo/f$3;-><init>(Lcn/sharesdk/sina/weibo/f;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 349
    new-instance v1, Lcn/sharesdk/sina/weibo/e;

    invoke-direct {v1}, Lcn/sharesdk/sina/weibo/e;-><init>()V

    .line 350
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/sina/weibo/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {v1, p1}, Lcn/sharesdk/sina/weibo/e;->a(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 352
    invoke-virtual {v1, v0}, Lcn/sharesdk/sina/weibo/e;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 353
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/sina/weibo/e;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 354
    return-void
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 234
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    const-string v2, "com.sina.weibo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 238
    if-nez v1, :cond_0

    .line 239
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    const-string v2, "com.sina.weibog3"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 244
    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public c(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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
    .line 557
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 558
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "source"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 560
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "access_token"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    :cond_0
    const/4 v0, 0x1

    .line 564
    :try_start_0
    invoke-static {p3}, Lcom/mob/tools/c/l;->h(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :goto_0
    if-eqz v0, :cond_1

    .line 569
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "uid"

    invoke-direct {v0, v2, p3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    :goto_1
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "page"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    const-string v0, "https://api.weibo.com/2/friendships/friends/bilateral.json"

    .line 577
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->h:Lcn/sharesdk/framework/a/a;

    const-string v3, "/2/friendships/friends/bilateral.json"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 578
    if-eqz v0, :cond_2

    .line 579
    new-instance v1, Lcom/mob/tools/c/g;

    invoke-direct {v1}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 581
    :goto_2
    return-object v0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    const/4 v0, 0x0

    goto :goto_0

    .line 571
    :cond_1
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "screen_name"

    invoke-direct {v0, v2, p3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 581
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public d(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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
    .line 593
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 594
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "source"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 596
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "access_token"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    :cond_0
    const/4 v0, 0x1

    .line 600
    :try_start_0
    invoke-static {p3}, Lcom/mob/tools/c/l;->h(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :goto_0
    if-eqz v0, :cond_1

    .line 605
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "uid"

    invoke-direct {v0, v2, p3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    :goto_1
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "cursor"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    const-string v0, "https://api.weibo.com/2/friendships/followers.json"

    .line 613
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->h:Lcn/sharesdk/framework/a/a;

    const-string v3, "/2/friendships/followers.json"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_2

    .line 615
    new-instance v1, Lcom/mob/tools/c/g;

    invoke-direct {v1}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 617
    :goto_2
    return-object v0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    const/4 v0, 0x0

    goto :goto_0

    .line 607
    :cond_1
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "screen_name"

    invoke-direct {v0, v2, p3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 617
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public d(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
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
    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "source"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "access_token"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    const/4 v0, 0x1

    .line 214
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/c/l;->h(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    if-eqz v0, :cond_1

    .line 219
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "uid"

    invoke-direct {v0, v2, p1}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :goto_1
    const-string v0, "https://api.weibo.com/2/users/show.json"

    .line 226
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->h:Lcn/sharesdk/framework/a/a;

    const-string v3, "/2/users/show.json"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_2

    .line 228
    new-instance v1, Lcom/mob/tools/c/g;

    invoke-direct {v1}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 230
    :goto_2
    return-object v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    const/4 v0, 0x0

    goto :goto_0

    .line 221
    :cond_1
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "screen_name"

    invoke-direct {v0, v2, p1}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 230
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 661
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 662
    const-string v1, "com.sina.weibo.sdk.Intent.ACTION_WEIBO_REGISTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 664
    const-string v2, "_weibo_sdkVersion"

    const-string v3, "0031405000"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    const-string v2, "_weibo_appPackage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    const-string v2, "_weibo_appKey"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    const-string v2, "_weibo_flag"

    const v3, 0x20130329

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 668
    const-string v2, "_weibo_sign"

    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcn/sharesdk/sina/weibo/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 671
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sina.weibo.permission.WEIBO_SDK_PERMISSION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 672
    const/4 v0, 0x1

    return v0
.end method

.method public e(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
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
    .line 463
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 464
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "source"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "access_token"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->f:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    const/4 v0, 0x1

    .line 468
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/c/l;->h(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :goto_0
    if-eqz v0, :cond_0

    .line 473
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "uid"

    invoke-direct {v0, v2, p1}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :goto_1
    const-string v0, "https://api.weibo.com/2/friendships/create.json"

    .line 479
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->h:Lcn/sharesdk/framework/a/a;

    const-string v3, "/2/friendships/create.json"

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/f;->c()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 480
    if-eqz v0, :cond_1

    .line 481
    new-instance v1, Lcom/mob/tools/c/g;

    invoke-direct {v1}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 483
    :goto_2
    return-object v0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    const/4 v0, 0x0

    goto :goto_0

    .line 475
    :cond_0
    new-instance v0, Lcom/mob/tools/a/k;

    const-string v2, "screen_name"

    invoke-direct {v0, v2, p1}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 483
    :cond_1
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, ""

    return-object v0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/e;)Lcn/sharesdk/framework/authorize/b;
    .locals 1
    .param p1, "webAct"    # Lcn/sharesdk/framework/authorize/e;

    .prologue
    .line 94
    new-instance v0, Lcn/sharesdk/sina/weibo/b;

    invoke-direct {v0, p1}, Lcn/sharesdk/sina/weibo/b;-><init>(Lcn/sharesdk/framework/authorize/e;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://api.weibo.com/oauth2/default.html"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/f;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSSOProcessor(Lcn/sharesdk/framework/authorize/c;)Lcn/sharesdk/framework/authorize/d;
    .locals 4
    .param p1, "ssoAct"    # Lcn/sharesdk/framework/authorize/c;

    .prologue
    .line 98
    new-instance v0, Lcn/sharesdk/sina/weibo/c;

    invoke-direct {v0, p1}, Lcn/sharesdk/sina/weibo/c;-><init>(Lcn/sharesdk/framework/authorize/c;)V

    .line 99
    const v1, 0x80cd

    invoke-virtual {v0, v1}, Lcn/sharesdk/sina/weibo/c;->a(I)V

    .line 100
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/f;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/f;->e:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/f;->g:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/sina/weibo/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 101
    return-object v0
.end method

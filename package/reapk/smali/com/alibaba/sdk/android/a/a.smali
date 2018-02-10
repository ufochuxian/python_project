.class public Lcom/alibaba/sdk/android/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/ExecutorService;

.field private static b:Ljava/util/concurrent/ConcurrentHashMap;

.field private static c:Z

.field private static d:Landroid/content/Context;

.field private static e:Lcom/alibaba/sdk/android/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Lcom/alibaba/sdk/android/a/f;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/a/f;-><init>()V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/alibaba/sdk/android/a/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sput-boolean v0, Lcom/alibaba/sdk/android/a/a;->c:Z

    new-instance v1, Lcom/alibaba/sdk/android/a/h;

    const-string v2, "AMSDevReporter"

    invoke-direct {v1, v2}, Lcom/alibaba/sdk/android/a/h;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/alibaba/sdk/android/a/a;->e:Lcom/alibaba/sdk/android/a/h;

    invoke-static {}, Lcom/alibaba/sdk/android/a/e;->a()[Lcom/alibaba/sdk/android/a/e;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/alibaba/sdk/android/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v5, Lcom/alibaba/sdk/android/a/c;->a:Lcom/alibaba/sdk/android/a/c;

    invoke-virtual {v4, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lcom/alibaba/sdk/android/a/e;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/a/d;->a:Lcom/alibaba/sdk/android/a/d;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/a/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/a/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/a/d;->b:Lcom/alibaba/sdk/android/a/d;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/a/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/a/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/sdk/android/a/e;Ljava/util/Map;)V
    .locals 3

    if-nez p0, :cond_0

    sget-object v0, Lcom/alibaba/sdk/android/a/a;->e:Lcom/alibaba/sdk/android/a/h;

    const-string v1, "Context is null, return."

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/a/h;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/alibaba/sdk/android/a/a;->d:Landroid/content/Context;

    sget-object v0, Lcom/alibaba/sdk/android/a/a;->e:Lcom/alibaba/sdk/android/a/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/a/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] to report queue."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/a/h;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/sdk/android/a/a;->c:Z

    sget-object v0, Lcom/alibaba/sdk/android/a/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alibaba/sdk/android/a/b;

    invoke-direct {v1, p1, p2}, Lcom/alibaba/sdk/android/a/b;-><init>(Lcom/alibaba/sdk/android/a/e;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/a/e;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/a/a;->b(Lcom/alibaba/sdk/android/a/e;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/a/a;->e:Lcom/alibaba/sdk/android/a/h;

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/a/h;->a(Z)V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/alibaba/sdk/android/a/a;->c:Z

    return v0
.end method

.method static synthetic b()Lcom/alibaba/sdk/android/a/h;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/a/a;->e:Lcom/alibaba/sdk/android/a/h;

    return-object v0
.end method

.method private static b(Lcom/alibaba/sdk/android/a/e;Ljava/util/Map;)V
    .locals 7

    const/16 v1, 0x3c

    const/4 v2, 0x0

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/a/e;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/sdk/android/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/alibaba/sdk/android/a/c;->a:Lcom/alibaba/sdk/android/a/c;

    if-eq v4, v5, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/a/a;->e:Lcom/alibaba/sdk/android/a/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] already reported, return."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/a/h;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :goto_1
    sget-object v4, Lcom/alibaba/sdk/android/a/a;->e:Lcom/alibaba/sdk/android/a/h;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Report ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], times: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/sdk/android/a/h;->b(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/a/a;->c(Lcom/alibaba/sdk/android/a/e;Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0xa

    if-gt v2, v4, :cond_2

    sget-object v4, Lcom/alibaba/sdk/android/a/a;->e:Lcom/alibaba/sdk/android/a/h;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Report ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] failed, wait for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] seconds."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/sdk/android/a/h;->b(Ljava/lang/String;)V

    int-to-double v4, v0

    invoke-static {v4, v5}, Lcom/alibaba/sdk/android/a/i;->a(D)V

    mul-int/lit8 v0, v0, 0x2

    if-lt v0, v1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/alibaba/sdk/android/a/a;->e:Lcom/alibaba/sdk/android/a/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] stat failed, exceed max retry times, return."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/a/h;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/sdk/android/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/alibaba/sdk/android/a/c;->a:Lcom/alibaba/sdk/android/a/c;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/sdk/android/a/a;->c:Z

    :goto_2
    sget-boolean v0, Lcom/alibaba/sdk/android/a/a;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/sdk/android/a/a;->e:Lcom/alibaba/sdk/android/a/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] failed, clear remain report in queue."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/a/h;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/alibaba/sdk/android/a/a;->e:Lcom/alibaba/sdk/android/a/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] stat success."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/a/h;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/sdk/android/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/alibaba/sdk/android/a/c;->b:Lcom/alibaba/sdk/android/a/c;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private static c(Lcom/alibaba/sdk/android/a/e;Ljava/util/Map;)Z
    .locals 10

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const v0, 0xa005

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/a/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/a/a;->e:Lcom/alibaba/sdk/android/a/h;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stat: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/sdk/android/a/h;->b(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/alibaba/sdk/android/a/a;->a(Lcom/alibaba/sdk/android/a/e;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "23356390Raw"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/alibaba/sdk/android/a/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "16594f72217bece5a457b4803a48f2da"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/alibaba/sdk/android/a/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "16594f72217bece5a457b4803a48f2da"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/a/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://adash.man.aliyuncs.com:80/man/api?ak=23356390&s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v5, 0x3a98

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Content-Type"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "multipart/form-data; boundary="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\nContent-Disposition: form-data; name=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Raw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"\r\nContent-Type: text/plain; charset=UTF-8\r\n\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\r\n--"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "--\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v6, 0xc8

    if-ne v1, v6, :cond_b

    new-instance v6, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x400

    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v6, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v4, v9, v7}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v4, v6

    move-object v2, v0

    move-object v0, v1

    move-object v1, v5

    :goto_1
    :try_start_4
    sget-object v5, Lcom/alibaba/sdk/android/a/a;->e:Lcom/alibaba/sdk/android/a/h;

    invoke-virtual {v5, v0}, Lcom/alibaba/sdk/android/a/h;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_2
    move v0, v3

    :goto_3
    return v0

    :cond_4
    :try_start_6
    sget-object v4, Lcom/alibaba/sdk/android/a/a;->e:Lcom/alibaba/sdk/android/a/h;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get MAN response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/alibaba/sdk/android/a/h;->a(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "success"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "success"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    if-eqz v5, :cond_6

    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_7
    :goto_4
    move v0, v2

    goto :goto_3

    :catch_1
    move-exception v0

    sget-object v1, Lcom/alibaba/sdk/android/a/a;->e:Lcom/alibaba/sdk/android/a/h;

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/a/h;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_2
    move-exception v1

    :try_start_9
    sget-object v2, Lcom/alibaba/sdk/android/a/a;->e:Lcom/alibaba/sdk/android/a/h;

    invoke-virtual {v2, v1}, Lcom/alibaba/sdk/android/a/h;->a(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_8
    :goto_5
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    if-eqz v5, :cond_a

    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    :cond_a
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    sget-object v1, Lcom/alibaba/sdk/android/a/a;->e:Lcom/alibaba/sdk/android/a/h;

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/a/h;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_b
    :try_start_b
    sget-object v2, Lcom/alibaba/sdk/android/a/a;->e:Lcom/alibaba/sdk/android/a/h;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MAN API error, response code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/sdk/android/a/h;->c(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object v6, v4

    goto :goto_5

    :catch_4
    move-exception v0

    sget-object v1, Lcom/alibaba/sdk/android/a/a;->e:Lcom/alibaba/sdk/android/a/h;

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/a/h;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v6, v4

    move-object v2, v4

    :goto_6
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    if-eqz v4, :cond_d

    :try_start_c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_d
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :cond_e
    :goto_7
    throw v0

    :catch_5
    move-exception v1

    sget-object v2, Lcom/alibaba/sdk/android/a/a;->e:Lcom/alibaba/sdk/android/a/h;

    invoke-virtual {v2, v1}, Lcom/alibaba/sdk/android/a/h;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_1
    move-exception v1

    move-object v6, v4

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v6, v4

    move-object v2, v0

    move-object v0, v1

    move-object v4, v5

    goto :goto_6

    :catchall_3
    move-exception v1

    move-object v4, v5

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v6, v4

    move-object v4, v1

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    goto/16 :goto_1

    :catch_7
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v4

    goto/16 :goto_1

    :catch_8
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_1
.end method

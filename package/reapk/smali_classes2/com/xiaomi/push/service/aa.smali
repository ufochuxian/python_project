.class public Lcom/xiaomi/push/service/aa;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/aa;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/push/service/aa;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/push/service/aa;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/push/service/aa;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/push/service/aa;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/push/service/aa;->f:Ljava/lang/String;

    iput p7, p0, Lcom/xiaomi/push/service/aa;->g:I

    return-void
.end method

.method public static a()Z
    .locals 2

    :try_start_0
    const-string v0, "miui.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "IS_ALPHA_BUILD"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/aa;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/x$b;
    .locals 3

    new-instance v0, Lcom/xiaomi/push/service/x$b;

    invoke-direct {v0, p1}, Lcom/xiaomi/push/service/x$b;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/service/XMPushService;->d()Lcom/xiaomi/push/service/v;

    move-result-object v1

    const-string v2, "c"

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/xiaomi/push/service/aa;->a(Lcom/xiaomi/push/service/x$b;Landroid/content/Context;Lcom/xiaomi/push/service/v;Ljava/lang/String;)Lcom/xiaomi/push/service/x$b;

    return-object v0
.end method

.method public a(Lcom/xiaomi/push/service/x$b;Landroid/content/Context;Lcom/xiaomi/push/service/v;Ljava/lang/String;)Lcom/xiaomi/push/service/x$b;
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/x$b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/service/aa;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/xiaomi/push/service/x$b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/service/aa;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/xiaomi/push/service/x$b;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/service/aa;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/xiaomi/push/service/x$b;->c:Ljava/lang/String;

    const-string v0, "5"

    iput-object v0, p1, Lcom/xiaomi/push/service/x$b;->h:Ljava/lang/String;

    const-string v0, "XMPUSH-PASS"

    iput-object v0, p1, Lcom/xiaomi/push/service/x$b;->d:Ljava/lang/String;

    iput-boolean v4, p1, Lcom/xiaomi/push/service/x$b;->e:Z

    const-string v0, "%1$s:%2$s,%3$s:%4$s,%5$s:%6$s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "sdk_ver"

    aput-object v2, v1, v4

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "cpvn"

    aput-object v2, v1, v6

    const-string v2, "3_0_3"

    aput-object v2, v1, v7

    const-string v2, "cpvc"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const/16 v3, 0x7533

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/x$b;->f:Ljava/lang/String;

    invoke-static {p2}, Lcom/xiaomi/push/service/aa;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1000271"

    :goto_0
    invoke-static {p2}, Lcom/xiaomi/push/service/aa;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "%1$s:%2$s,%3$s:%4$s,%5$s:%6$s"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "appid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    const-string v0, "locale"

    aput-object v0, v2, v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    const-string v0, "ab"

    aput-object v0, v2, v8

    const/4 v0, 0x5

    aput-object p4, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/x$b;->g:Ljava/lang/String;

    :goto_1
    iput-object p3, p1, Lcom/xiaomi/push/service/x$b;->k:Lcom/xiaomi/push/service/v;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/aa;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "%1$s:%2$s,%3$s:%4$s"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "appid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    const-string v0, "locale"

    aput-object v0, v2, v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/x$b;->g:Ljava/lang/String;

    goto :goto_1
.end method

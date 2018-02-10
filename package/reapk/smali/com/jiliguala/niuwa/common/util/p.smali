.class public Lcom/jiliguala/niuwa/common/util/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String; = "com.tencent.mm"

.field private static final c:Ljava/lang/String; = "com.tencent.mobileqq"

.field private static final d:Ljava/lang/String; = "com.sina.weibo"

.field private static final e:Ljava/lang/String; = "com.sina.weibog3"

.field private static final f:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field private static g:Lcom/jiliguala/niuwa/common/util/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/jiliguala/niuwa/common/util/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/util/p;->a:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/jiliguala/niuwa/common/util/p;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/p;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/common/util/p;->g:Lcom/jiliguala/niuwa/common/util/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/common/util/p;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/jiliguala/niuwa/common/util/p;->g:Lcom/jiliguala/niuwa/common/util/p;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/jiliguala/niuwa/common/util/p;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/p;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/common/util/p;->g:Lcom/jiliguala/niuwa/common/util/p;

    .line 29
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/common/util/p;->g:Lcom/jiliguala/niuwa/common/util/p;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 51
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 56
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-nez v1, :cond_0

    .line 59
    :goto_1
    return v2

    .line 52
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 59
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public b()Z
    .locals 1

    .prologue
    .line 33
    const-string v0, "com.tencent.mobileqq"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/util/p;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 37
    const-string v0, "com.tencent.mm"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/util/p;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 41
    const-string v0, "com.eg.android.AlipayGphone"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/util/p;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 45
    const-string v0, "com.sina.weibo"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/util/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sina.weibog3"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/util/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

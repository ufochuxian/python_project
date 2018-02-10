.class public Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static BUILD_NUMBER:I

.field public static VERSION_NAME:Ljava/lang/String;


# instance fields
.field private final mApplication:Lcom/jiliguala/niuwa/MyApplication;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/MyApplication;)V
    .locals 5
    .param p1, "application"    # Lcom/jiliguala/niuwa/MyApplication;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    .line 31
    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 32
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;->VERSION_NAME:Ljava/lang/String;

    .line 33
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;->BUILD_NUMBER:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-void

    .line 34
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .locals 3
    .annotation build Lorg/b/a/d;
    .end annotation

    .prologue
    .line 116
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 117
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-nez v0, :cond_0

    .line 118
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot get package manager from application object - it returned null!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getFlavorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "BASE"

    return-object v0
.end method

.method public getInstallDateString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/MyApplication;->getInstallDate()Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/story/helpers/DateHelper;->formatISO8601Date(Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperatingSystemString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportSignature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\n\nThe following information is to help us support you better:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;->getSupportString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 53
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/MyApplication;->getAuthenticationManager()Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;

    move-result-object v0

    .line 55
    .local v0, "authManager":Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;->isAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "userId":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%s | %s | %s | Installed: %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;->getVersionString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;->getOperatingSystemString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 62
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;->getInstallDateString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 61
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 58
    .end local v1    # "userId":Ljava/lang/String;
    :cond_0
    const-string v1, "NOT AUTHENTICATED"

    .restart local v1    # "userId":Ljava/lang/String;
    goto :goto_0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 99
    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 100
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 101
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getVersionString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 74
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s (%d) %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;->VERSION_NAME:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;->BUILD_NUMBER:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;->getFlavorString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendFeedback(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/b/a/d;
        .end annotation
    .end param
    .param p2, "subjectText"    # Ljava/lang/String;
        .annotation build Lorg/b/a/d;
        .end annotation
    .end param

    .prologue
    .line 40
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "feedback@farfaria.com"

    .line 43
    .local v3, "toAddress":Ljava/lang/String;
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "subject":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;->getSupportSignature()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "body":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "mailto:%s?subject=%s&body=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v8, 0x2

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "uriText":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 49
    const-string v5, "Send Email"

    invoke-static {v1, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

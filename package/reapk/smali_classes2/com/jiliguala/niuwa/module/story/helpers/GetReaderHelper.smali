.class public Lcom/jiliguala/niuwa/module/story/helpers/GetReaderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrOpenReader(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/jiliguala/niuwa/module/story/helpers/GetReaderHelper;->getOrOpenReader(Landroid/app/Activity;Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;)V

    .line 18
    return-void
.end method

.method public static getOrOpenReader(Landroid/app/Activity;Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/story/helpers/GetReaderHelper;->isJLGLInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    const-string v0, "farfaria://"

    .line 24
    .local v0, "uri":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "openStory?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 50
    .end local v0    # "uri":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static isJLGLInstalled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 56
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.jiliguala.niuwa"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return v2

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

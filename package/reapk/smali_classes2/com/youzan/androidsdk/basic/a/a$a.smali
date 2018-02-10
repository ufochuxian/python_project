.class public Lcom/youzan/androidsdk/basic/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youzan/androidsdk/basic/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/youzan/androidsdk/basic/a/a$a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Set;
    .locals 8
    .param p0, "cookieString"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, "field":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 157
    const-string v3, ";"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "cookies":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "field":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 159
    .restart local v1    # "field":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v5, v0

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v0, v3

    .line 160
    .local v2, "item":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 161
    const-string v6, "="

    const/4 v7, 0x2

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "cookies":[Ljava/lang/String;
    .end local v2    # "item":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 181
    :try_start_0
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebStorage;->deleteAllData()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 182
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 183
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-static {p0}, Lcom/youzan/androidsdk/basic/a/a$a;->b(Landroid/content/Context;)V

    .line 173
    invoke-static {}, Lcom/youzan/androidsdk/basic/a/a$a;->a()V

    .line 174
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 131
    :try_start_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 132
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    .line 133
    .local v3, "manager":Landroid/webkit/CookieManager;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "httpsHost":Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/youzan/androidsdk/basic/a/a$a;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 135
    .local v0, "field":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 137
    .local v2, "item":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=; Expires="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Sat, 31 Dec 2016 23:59:59 GMT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    .end local v0    # "field":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "httpsHost":Ljava/lang/String;
    .end local v2    # "item":Ljava/lang/String;
    .end local v3    # "manager":Landroid/webkit/CookieManager;
    :catch_0
    move-exception v4

    .line 147
    :goto_1
    return-void

    .line 140
    .restart local v0    # "field":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "httpsHost":Ljava/lang/String;
    .restart local v3    # "manager":Landroid/webkit/CookieManager;
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 141
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_1

    .line 143
    :cond_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/basic/a/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lcom/youzan/androidsdk/basic/a/b;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 83
    :try_start_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 84
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    .line 85
    .local v3, "manager":Landroid/webkit/CookieManager;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youzan/androidsdk/basic/a/b;

    .line 87
    .local v2, "item":Lcom/youzan/androidsdk/basic/a/b;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/youzan/androidsdk/basic/a/b;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "httpsHost":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/youzan/androidsdk/basic/a/b;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v1    # "httpsHost":Ljava/lang/String;
    .end local v2    # "item":Lcom/youzan/androidsdk/basic/a/b;
    .end local v3    # "manager":Landroid/webkit/CookieManager;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-void

    .line 90
    .restart local v3    # "manager":Landroid/webkit/CookieManager;
    :cond_1
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    .line 91
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_1

    .line 93
    :cond_2
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static varargs a(Landroid/content/Context;[Lcom/youzan/androidsdk/basic/a/b;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cookies"    # [Lcom/youzan/androidsdk/basic/a/b;

    .prologue
    .line 108
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/youzan/androidsdk/basic/a/a$a;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 109
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/basic/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lcom/youzan/androidsdk/basic/a/b;>;"
    new-instance v1, Lcom/youzan/androidsdk/basic/a/b$a;

    invoke-direct {v1}, Lcom/youzan/androidsdk/basic/a/b$a;-><init>()V

    const-string v2, "koudaitong.com"

    invoke-virtual {v1, v2}, Lcom/youzan/androidsdk/basic/a/b$a;->c(Ljava/lang/String;)Lcom/youzan/androidsdk/basic/a/b$a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/youzan/androidsdk/basic/a/b$a;->a(Ljava/lang/String;)Lcom/youzan/androidsdk/basic/a/b$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/youzan/androidsdk/basic/a/b$a;->b(Ljava/lang/String;)Lcom/youzan/androidsdk/basic/a/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youzan/androidsdk/basic/a/b$a;->c()Lcom/youzan/androidsdk/basic/a/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v1, Lcom/youzan/androidsdk/basic/a/b$a;

    invoke-direct {v1}, Lcom/youzan/androidsdk/basic/a/b$a;-><init>()V

    const-string v2, "youzan.com"

    invoke-virtual {v1, v2}, Lcom/youzan/androidsdk/basic/a/b$a;->c(Ljava/lang/String;)Lcom/youzan/androidsdk/basic/a/b$a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/youzan/androidsdk/basic/a/b$a;->a(Ljava/lang/String;)Lcom/youzan/androidsdk/basic/a/b$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/youzan/androidsdk/basic/a/b$a;->b(Ljava/lang/String;)Lcom/youzan/androidsdk/basic/a/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youzan/androidsdk/basic/a/b$a;->c()Lcom/youzan/androidsdk/basic/a/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    const-string v0, "koudaitong.com"

    invoke-static {p0, v0}, Lcom/youzan/androidsdk/basic/a/a$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    const-string v0, "youzan.com"

    invoke-static {p0, v0}, Lcom/youzan/androidsdk/basic/a/a$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    return-void
.end method

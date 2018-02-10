.class abstract Lio/fabric/sdk/android/services/settings/a;
.super Lio/fabric/sdk/android/services/common/a;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/settings/f;


# static fields
.field public static final a:Ljava/lang/String; = "app[identifier]"

.field public static final b:Ljava/lang/String; = "app[name]"

.field public static final c:Ljava/lang/String; = "app[instance_identifier]"

.field public static final d:Ljava/lang/String; = "app[display_version]"

.field public static final e:Ljava/lang/String; = "app[build_version]"

.field public static final f:Ljava/lang/String; = "app[source]"

.field public static final g:Ljava/lang/String; = "app[minimum_sdk_version]"

.field public static final h:Ljava/lang/String; = "app[built_sdk_version]"

.field public static final i:Ljava/lang/String; = "app[icon][hash]"

.field public static final j:Ljava/lang/String; = "app[icon][data]"

.field public static final k:Ljava/lang/String; = "app[icon][width]"

.field public static final l:Ljava/lang/String; = "app[icon][height]"

.field public static final m:Ljava/lang/String; = "app[icon][prerendered]"

.field public static final n:Ljava/lang/String; = "app[build][libraries][%s]"

.field public static final o:Ljava/lang/String; = "app[build][libraries][%s][version]"

.field public static final p:Ljava/lang/String; = "app[build][libraries][%s][type]"

.field static final q:Ljava/lang/String; = "icon.png"

.field static final r:Ljava/lang/String; = "application/octet-stream"


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/c;Lio/fabric/sdk/android/services/network/HttpMethod;)V
    .locals 0
    .param p1, "kit"    # Lio/fabric/sdk/android/i;
    .param p2, "protocolAndHostOverride"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "requestFactory"    # Lio/fabric/sdk/android/services/network/c;
    .param p5, "method"    # Lio/fabric/sdk/android/services/network/HttpMethod;

    .prologue
    .line 69
    invoke-direct/range {p0 .. p5}, Lio/fabric/sdk/android/services/common/a;-><init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/c;Lio/fabric/sdk/android/services/network/HttpMethod;)V

    .line 70
    return-void
.end method

.method private a(Lio/fabric/sdk/android/services/network/HttpRequest;Lio/fabric/sdk/android/services/settings/d;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 3
    .param p1, "request"    # Lio/fabric/sdk/android/services/network/HttpRequest;
    .param p2, "requestData"    # Lio/fabric/sdk/android/services/settings/d;

    .prologue
    .line 98
    const-string v0, "X-CRASHLYTICS-API-KEY"

    iget-object v1, p2, Lio/fabric/sdk/android/services/settings/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v2, "android"

    .line 99
    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v2, p0, Lio/fabric/sdk/android/services/settings/a;->kit:Lio/fabric/sdk/android/i;

    .line 102
    invoke-virtual {v2}, Lio/fabric/sdk/android/i;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 98
    return-object v0
.end method

.method private b(Lio/fabric/sdk/android/services/network/HttpRequest;Lio/fabric/sdk/android/services/settings/d;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 7
    .param p1, "request"    # Lio/fabric/sdk/android/services/network/HttpRequest;
    .param p2, "requestData"    # Lio/fabric/sdk/android/services/settings/d;

    .prologue
    .line 108
    const-string v3, "app[identifier]"

    iget-object v4, p2, Lio/fabric/sdk/android/services/settings/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lio/fabric/sdk/android/services/network/HttpRequest;->h(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v3

    const-string v4, "app[name]"

    iget-object v5, p2, Lio/fabric/sdk/android/services/settings/d;->f:Ljava/lang/String;

    .line 109
    invoke-virtual {v3, v4, v5}, Lio/fabric/sdk/android/services/network/HttpRequest;->h(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v3

    const-string v4, "app[display_version]"

    iget-object v5, p2, Lio/fabric/sdk/android/services/settings/d;->c:Ljava/lang/String;

    .line 110
    invoke-virtual {v3, v4, v5}, Lio/fabric/sdk/android/services/network/HttpRequest;->h(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v3

    const-string v4, "app[build_version]"

    iget-object v5, p2, Lio/fabric/sdk/android/services/settings/d;->d:Ljava/lang/String;

    .line 111
    invoke-virtual {v3, v4, v5}, Lio/fabric/sdk/android/services/network/HttpRequest;->h(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v3

    const-string v4, "app[source]"

    iget v5, p2, Lio/fabric/sdk/android/services/settings/d;->g:I

    .line 112
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/fabric/sdk/android/services/network/HttpRequest;->b(Ljava/lang/String;Ljava/lang/Number;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v3

    const-string v4, "app[minimum_sdk_version]"

    iget-object v5, p2, Lio/fabric/sdk/android/services/settings/d;->h:Ljava/lang/String;

    .line 113
    invoke-virtual {v3, v4, v5}, Lio/fabric/sdk/android/services/network/HttpRequest;->h(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v3

    const-string v4, "app[built_sdk_version]"

    iget-object v5, p2, Lio/fabric/sdk/android/services/settings/d;->i:Ljava/lang/String;

    .line 114
    invoke-virtual {v3, v4, v5}, Lio/fabric/sdk/android/services/network/HttpRequest;->h(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object p1

    .line 116
    iget-object v3, p2, Lio/fabric/sdk/android/services/settings/d;->e:Ljava/lang/String;

    invoke-static {v3}, Lio/fabric/sdk/android/services/common/i;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    const-string v3, "app[instance_identifier]"

    iget-object v4, p2, Lio/fabric/sdk/android/services/settings/d;->e:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lio/fabric/sdk/android/services/network/HttpRequest;->h(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 120
    :cond_0
    iget-object v3, p2, Lio/fabric/sdk/android/services/settings/d;->j:Lio/fabric/sdk/android/services/settings/o;

    if-eqz v3, :cond_1

    .line 121
    const/4 v1, 0x0

    .line 124
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lio/fabric/sdk/android/services/settings/a;->kit:Lio/fabric/sdk/android/i;

    invoke-virtual {v3}, Lio/fabric/sdk/android/i;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p2, Lio/fabric/sdk/android/services/settings/d;->j:Lio/fabric/sdk/android/services/settings/o;

    iget v4, v4, Lio/fabric/sdk/android/services/settings/o;->b:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 127
    const-string v3, "app[icon][hash]"

    iget-object v4, p2, Lio/fabric/sdk/android/services/settings/d;->j:Lio/fabric/sdk/android/services/settings/o;

    iget-object v4, v4, Lio/fabric/sdk/android/services/settings/o;->a:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lio/fabric/sdk/android/services/network/HttpRequest;->h(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v3

    const-string v4, "app[icon][data]"

    const-string v5, "icon.png"

    const-string v6, "application/octet-stream"

    .line 128
    invoke-virtual {v3, v4, v5, v6, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v3

    const-string v4, "app[icon][width]"

    iget-object v5, p2, Lio/fabric/sdk/android/services/settings/d;->j:Lio/fabric/sdk/android/services/settings/o;

    iget v5, v5, Lio/fabric/sdk/android/services/settings/o;->c:I

    .line 129
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/fabric/sdk/android/services/network/HttpRequest;->b(Ljava/lang/String;Ljava/lang/Number;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v3

    const-string v4, "app[icon][height]"

    iget-object v5, p2, Lio/fabric/sdk/android/services/settings/d;->j:Lio/fabric/sdk/android/services/settings/o;

    iget v5, v5, Lio/fabric/sdk/android/services/settings/o;->d:I

    .line 130
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/fabric/sdk/android/services/network/HttpRequest;->b(Ljava/lang/String;Ljava/lang/Number;)Lio/fabric/sdk/android/services/network/HttpRequest;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    const-string v3, "Failed to close app icon InputStream."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/common/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 140
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_0
    iget-object v3, p2, Lio/fabric/sdk/android/services/settings/d;->k:Ljava/util/Collection;

    if-eqz v3, :cond_2

    .line 141
    iget-object v3, p2, Lio/fabric/sdk/android/services/settings/d;->k:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/fabric/sdk/android/k;

    .line 142
    .local v2, "kit":Lio/fabric/sdk/android/k;
    invoke-virtual {p0, v2}, Lio/fabric/sdk/android/services/settings/a;->a(Lio/fabric/sdk/android/k;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lio/fabric/sdk/android/k;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lio/fabric/sdk/android/services/network/HttpRequest;->h(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 143
    invoke-virtual {p0, v2}, Lio/fabric/sdk/android/services/settings/a;->b(Lio/fabric/sdk/android/k;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lio/fabric/sdk/android/k;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lio/fabric/sdk/android/services/network/HttpRequest;->h(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    goto :goto_1

    .line 131
    .end local v2    # "kit":Lio/fabric/sdk/android/k;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v3

    const-string v4, "Fabric"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find app icon with resource ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lio/fabric/sdk/android/services/settings/d;->j:Lio/fabric/sdk/android/services/settings/o;

    iget v6, v6, Lio/fabric/sdk/android/services/settings/o;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    const-string v3, "Failed to close app icon InputStream."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/common/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v3

    const-string v4, "Failed to close app icon InputStream."

    invoke-static {v1, v4}, Lio/fabric/sdk/android/services/common/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v3

    .line 147
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_2
    return-object p1
.end method


# virtual methods
.method a(Lio/fabric/sdk/android/k;)Ljava/lang/String;
    .locals 5
    .param p1, "kit"    # Lio/fabric/sdk/android/k;

    .prologue
    .line 151
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "app[build][libraries][%s][version]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lio/fabric/sdk/android/k;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/fabric/sdk/android/services/settings/d;)Z
    .locals 7
    .param p1, "requestData"    # Lio/fabric/sdk/android/services/settings/d;

    .prologue
    .line 74
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/settings/a;->getHttpRequest()Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 75
    .local v0, "httpRequest":Lio/fabric/sdk/android/services/network/HttpRequest;
    invoke-direct {p0, v0, p1}, Lio/fabric/sdk/android/services/settings/a;->a(Lio/fabric/sdk/android/services/network/HttpRequest;Lio/fabric/sdk/android/services/settings/d;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 76
    invoke-direct {p0, v0, p1}, Lio/fabric/sdk/android/services/settings/a;->b(Lio/fabric/sdk/android/services/network/HttpRequest;Lio/fabric/sdk/android/services/settings/d;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    .line 78
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v3

    const-string v4, "Fabric"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending app info to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/settings/a;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v3, p1, Lio/fabric/sdk/android/services/settings/d;->j:Lio/fabric/sdk/android/services/settings/o;

    if-eqz v3, :cond_0

    .line 80
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v3

    const-string v4, "Fabric"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App icon hash is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lio/fabric/sdk/android/services/settings/d;->j:Lio/fabric/sdk/android/services/settings/o;

    iget-object v6, v6, Lio/fabric/sdk/android/services/settings/o;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v3

    const-string v4, "Fabric"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App icon size is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lio/fabric/sdk/android/services/settings/d;->j:Lio/fabric/sdk/android/services/settings/o;

    iget v6, v6, Lio/fabric/sdk/android/services/settings/o;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lio/fabric/sdk/android/services/settings/d;->j:Lio/fabric/sdk/android/services/settings/o;

    iget v6, v6, Lio/fabric/sdk/android/services/settings/o;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->c()I

    move-result v2

    .line 87
    .local v2, "statusCode":I
    const-string v3, "POST"

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->Q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "Create"

    .line 90
    .local v1, "kind":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v3

    const-string v4, "Fabric"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " app request ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "X-REQUEST-ID"

    .line 91
    invoke-virtual {v0, v6}, Lio/fabric/sdk/android/services/network/HttpRequest;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v3

    const-string v4, "Fabric"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Result was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {v2}, Lio/fabric/sdk/android/services/common/p;->a(I)I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 87
    .end local v1    # "kind":Ljava/lang/String;
    :cond_1
    const-string v1, "Update"

    goto :goto_0

    .line 94
    .restart local v1    # "kind":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method b(Lio/fabric/sdk/android/k;)Ljava/lang/String;
    .locals 5
    .param p1, "kit"    # Lio/fabric/sdk/android/k;

    .prologue
    .line 155
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "app[build][libraries][%s][type]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lio/fabric/sdk/android/k;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

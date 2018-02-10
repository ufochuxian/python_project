.class public Lcom/alibaba/mtl/log/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/alibaba/mtl/log/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/app/Application;

.field private h:Ljava/lang/String;

.field private i:Lcom/ut/mini/b/b/a;

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/alibaba/mtl/log/b;

    invoke-direct {v0}, Lcom/alibaba/mtl/log/b;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/log/b;->a:Lcom/alibaba/mtl/log/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/alibaba/mtl/log/b;->b:Landroid/content/Context;

    .line 41
    iput-object v0, p0, Lcom/alibaba/mtl/log/b;->c:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/alibaba/mtl/log/b;->d:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/alibaba/mtl/log/b;->e:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/alibaba/mtl/log/b;->f:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/alibaba/mtl/log/b;->g:Landroid/app/Application;

    .line 46
    iput-object v0, p0, Lcom/alibaba/mtl/log/b;->h:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/alibaba/mtl/log/b;->i:Lcom/ut/mini/b/b/a;

    .line 48
    iput-boolean v1, p0, Lcom/alibaba/mtl/log/b;->j:Z

    .line 235
    iput-boolean v1, p0, Lcom/alibaba/mtl/log/b;->k:Z

    .line 33
    return-void
.end method

.method public static a()Lcom/alibaba/mtl/log/b;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/alibaba/mtl/log/b;->a:Lcom/alibaba/mtl/log/b;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/mtl/log/b;->c:Ljava/lang/String;

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iput-object p1, p0, Lcom/alibaba/mtl/log/b;->d:Ljava/lang/String;

    .line 89
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/mtl/log/b;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/b;->b:Landroid/content/Context;

    const-string v1, "UTCommon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    const-string v1, "_lun"

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/alibaba/mtl/log/e/c;->c([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/mtl/log/b;->e:Ljava/lang/String;

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iput-object p1, p0, Lcom/alibaba/mtl/log/b;->f:Ljava/lang/String;

    .line 115
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/mtl/log/b;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/b;->b:Landroid/content/Context;

    const-string v1, "UTCommon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 120
    const-string v1, "_luid"

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/alibaba/mtl/log/e/c;->c([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_1
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/alibaba/mtl/log/b;->j:Z

    if-nez v0, :cond_0

    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 200
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/b;->e()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 202
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/b;->e()Landroid/app/Application;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/ut/mini/b/a/d;->a(Landroid/app/Application;)V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/mtl/log/b;->j:Z

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 210
    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/ut/mini/b/a/d;->a(Landroid/app/Application;)V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/mtl/log/b;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    const-string v0, "UTEngine"

    const-string v1, "You need set a application instance for UT."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Application;)V
    .locals 0
    .param p1, "aApplicationInstance"    # Landroid/app/Application;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alibaba/mtl/log/b;->g:Landroid/app/Application;

    .line 187
    invoke-direct {p0}, Lcom/alibaba/mtl/log/b;->f()V

    .line 188
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 4
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 146
    if-eqz p1, :cond_1

    .line 147
    iput-object p1, p0, Lcom/alibaba/mtl/log/b;->b:Landroid/content/Context;

    .line 148
    iget-object v0, p0, Lcom/alibaba/mtl/log/b;->b:Landroid/content/Context;

    const-string v1, "UTCommon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 150
    const-string v0, "_lun"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/alibaba/mtl/log/e/c;->a([BI)[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 156
    iput-object v2, p0, Lcom/alibaba/mtl/log/b;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_0
    :goto_0
    const-string v0, "_luid"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/e/c;->a([BI)[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 167
    iput-object v1, p0, Lcom/alibaba/mtl/log/b;->f:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/mtl/log/b;->f()V

    .line 174
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 168
    :catch_1
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "aAppVersion"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/mtl/log/b;->h:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "aUsernick"    # Ljava/lang/String;
    .param p2, "aUserid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 136
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/log/b;->b(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, p2}, Lcom/alibaba/mtl/log/b;->c(Ljava/lang/String;)V

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/ut/mini/c/a;

    const-string v1, "UT"

    const/16 v2, 0x3ef

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/c/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 141
    invoke-static {}, Lcom/ut/mini/b;->a()Lcom/ut/mini/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/b;->b()Lcom/ut/mini/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/c/a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ut/mini/h;->a(Ljava/util/Map;)V

    .line 143
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/mtl/log/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alibaba/mtl/log/e/i;->a(Z)V

    .line 74
    return-void
.end method

.method public d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alibaba/mtl/log/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method public e()Landroid/app/Application;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alibaba/mtl/log/b;->g:Landroid/app/Application;

    return-object v0
.end method

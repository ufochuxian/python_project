.class public Lcn/sharesdk/framework/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/sharesdk/framework/Platform;

.field private b:Lcn/sharesdk/framework/PlatformDb;

.field private c:Lcn/sharesdk/framework/a;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/framework/c;->g:Z

    .line 27
    iput-object p1, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    .line 28
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getVersion()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcn/sharesdk/framework/PlatformDb;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcn/sharesdk/framework/c;->b:Lcn/sharesdk/framework/PlatformDb;

    .line 30
    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/c;->a(Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcn/sharesdk/framework/a;

    invoke-direct {v0}, Lcn/sharesdk/framework/a;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/c;->c:Lcn/sharesdk/framework/a;

    .line 32
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/c;)Z
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcn/sharesdk/framework/c;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcn/sharesdk/framework/c;)Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method private j()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 124
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    iget-object v2, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v2

    const-string v3, "covert_url"

    invoke-virtual {p0, v2, v3, v4}, Lcn/sharesdk/framework/c;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 130
    :cond_0
    const-string v3, "false"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcn/sharesdk/framework/c;->g:Z

    .line 132
    iget-object v0, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->setNetworkDevinfo()V

    move v0, v1

    .line 163
    :cond_2
    :goto_0
    return v0

    .line 137
    :cond_3
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 139
    invoke-static {v2}, Lcn/sharesdk/framework/ShareSDK;->a(Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 144
    invoke-static {v2}, Lcn/sharesdk/framework/ShareSDK;->b(Ljava/util/HashMap;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 145
    new-instance v1, Lcom/mob/tools/c/g;

    invoke-direct {v1}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v1, v2}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse network dev-info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 152
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    .line 153
    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v2

    const-string v3, "covert_url"

    const/4 v4, 0x0

    .line 152
    invoke-virtual {p0, v2, v3, v4}, Lcn/sharesdk/framework/c;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    if-eqz v2, :cond_5

    .line 155
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 157
    :cond_5
    const-string v3, "false"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcn/sharesdk/framework/c;->g:Z

    .line 158
    iget-object v2, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->setNetworkDevinfo()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 159
    goto :goto_0

    :cond_6
    move v2, v0

    .line 157
    goto :goto_1
.end method

.method private k()Ljava/lang/String;
    .locals 6

    .prologue
    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    :try_start_0
    const-string v0, "TencentWeibo"

    iget-object v2, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v0

    const-string v2, "user id %s ==>>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcn/sharesdk/framework/c;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 345
    invoke-virtual {p0}, Lcn/sharesdk/framework/c;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/mob/tools/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :goto_0
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/sharesdk/framework/c;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v3, "secretType"

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Lcom/mob/tools/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/sharesdk/framework/c;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v3, "gender"

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Lcom/mob/tools/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/sharesdk/framework/c;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v3, "birthday"

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Lcom/mob/tools/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/sharesdk/framework/c;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v3, "educationJSONArrayStr"

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Lcom/mob/tools/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/sharesdk/framework/c;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v3, "workJSONArrayStr"

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Lcom/mob/tools/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 347
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcn/sharesdk/framework/c;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/mob/tools/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcn/sharesdk/framework/c;->d:I

    return v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    invoke-static {p1, p2}, Lcn/sharesdk/framework/ShareSDK;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    iget-object v1, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_1
    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 319
    iget-boolean v2, p0, Lcn/sharesdk/framework/c;->g:Z

    if-nez v2, :cond_0

    .line 320
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getShortLintk use time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 332
    :goto_0
    return-object p1

    .line 324
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getShortLintk use time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 329
    :cond_1
    iget-object v2, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    .line 330
    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v2

    invoke-direct {p0}, Lcn/sharesdk/framework/c;->k()Ljava/lang/String;

    move-result-object v3

    .line 329
    invoke-static {p1, p2, v2, v3}, Lcn/sharesdk/framework/ShareSDK;->a(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 331
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getShortLintk use time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public a(IILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 300
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object p3, v0, v3

    invoke-virtual {p0, v3, v0}, Lcn/sharesdk/framework/c;->c(ILjava/lang/Object;)V

    .line 301
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcn/sharesdk/framework/c;->c:Lcn/sharesdk/framework/a;

    iget-object v1, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0, v1, p1, p2}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/Platform;ILjava/lang/Object;)V

    .line 184
    return-void
.end method

.method public a(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 277
    if-nez p1, :cond_1

    .line 278
    iget-object v0, p0, Lcn/sharesdk/framework/c;->c:Lcn/sharesdk/framework/a;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcn/sharesdk/framework/c;->c:Lcn/sharesdk/framework/a;

    iget-object v1, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {v0, v1, v3, v2}, Lcn/sharesdk/framework/a;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-virtual {p0, v3, p1}, Lcn/sharesdk/framework/c;->c(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcn/sharesdk/framework/c;->c:Lcn/sharesdk/framework/a;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 78
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    const-string v0, "Id"

    invoke-static {p1, v0}, Lcn/sharesdk/framework/ShareSDK;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    :try_start_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/l;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/framework/c;->d:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    const-string v0, "SortId"

    invoke-static {p1, v0}, Lcn/sharesdk/framework/ShareSDK;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    :try_start_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/l;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/framework/c;->e:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    :cond_1
    :goto_1
    const-string v0, "Enable"

    invoke-static {p1, v0}, Lcn/sharesdk/framework/ShareSDK;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    if-nez v0, :cond_3

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/framework/c;->h:Z

    .line 57
    iget-object v0, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    instance-of v0, v0, Lcn/sharesdk/framework/CustomPlatform;

    if-nez v0, :cond_2

    .line 58
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed to parse Enable, this will cause platform always be enable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 65
    :cond_2
    :goto_2
    iget-object v0, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/Platform;->initDevInfo(Ljava/lang/String;)V

    .line 66
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    iget-object v0, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    instance-of v0, v0, Lcn/sharesdk/framework/CustomPlatform;

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed to parse Id, this will cause method getId() always returens 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 47
    :catch_1
    move-exception v0

    .line 48
    iget-object v0, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    instance-of v0, v0, Lcn/sharesdk/framework/CustomPlatform;

    if-nez v0, :cond_1

    .line 49
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed to parse SortId, this won\'t cause any problem, don\'t worry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 61
    :cond_3
    const-string v1, "true"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/framework/c;->h:Z

    goto :goto_2
.end method

.method public a(Ljava/lang/String;II)V
    .locals 4

    .prologue
    .line 292
    const/4 v0, 0x7

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/c;->c(ILjava/lang/Object;)V

    .line 293
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;SLjava/util/HashMap;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    const/high16 v0, 0xa0000

    or-int/2addr v0, p3

    .line 306
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/c;->c(ILjava/lang/Object;)V

    .line 307
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcn/sharesdk/framework/c;->f:Z

    .line 90
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lcn/sharesdk/framework/c$2;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/framework/c$2;-><init>(Lcn/sharesdk/framework/c;[Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Lcn/sharesdk/framework/c$2;->start()V

    .line 274
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcn/sharesdk/framework/c;->e:I

    return v0
.end method

.method protected b(ILjava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 187
    packed-switch p1, :pswitch_data_0

    .line 231
    :pswitch_0
    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .line 232
    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 233
    aget-object v0, p2, v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 235
    aget-object v4, p2, v4

    check-cast v4, Ljava/util/HashMap;

    .line 237
    const/4 v0, 0x3

    aget-object v5, p2, v0

    check-cast v5, Ljava/util/HashMap;

    .line 238
    iget-object v0, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/Platform;->doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 189
    :pswitch_1
    iget-object v1, p0, Lcn/sharesdk/framework/c;->c:Lcn/sharesdk/framework/a;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcn/sharesdk/framework/c;->c:Lcn/sharesdk/framework/a;

    iget-object v2, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1, v2, v8, v0}, Lcn/sharesdk/framework/a;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_0

    .line 194
    :pswitch_2
    iget-object v0, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcn/sharesdk/framework/Platform;->follow(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :pswitch_3
    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .line 198
    iget-object v2, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, p2, v8

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v3, v0}, Lcn/sharesdk/framework/Platform;->timeline(IILjava/lang/String;)V

    goto :goto_0

    .line 201
    :pswitch_4
    iget-object v1, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    if-nez p2, :cond_1

    move-object p2, v0

    :goto_1
    invoke-virtual {v1, p2}, Lcn/sharesdk/framework/Platform;->userInfor(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    check-cast p2, Ljava/lang/String;

    goto :goto_1

    .line 204
    :pswitch_5
    check-cast p2, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 205
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform$ShareParams;->toMap()Ljava/util/HashMap;

    move-result-object v3

    .line 206
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    .line 207
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 208
    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 211
    :try_start_0
    invoke-virtual {v6, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 216
    :goto_3
    if-eqz v1, :cond_2

    .line 217
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 212
    :catch_0
    move-exception v1

    .line 213
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    move-object v1, v0

    .line 214
    goto :goto_3

    .line 221
    :cond_3
    iget-object v0, p0, Lcn/sharesdk/framework/c;->c:Lcn/sharesdk/framework/a;

    instance-of v0, v0, Lcn/sharesdk/framework/a;

    if-eqz v0, :cond_4

    .line 222
    iget-object v0, p0, Lcn/sharesdk/framework/c;->c:Lcn/sharesdk/framework/a;

    iget-object v1, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0, v1, p2}, Lcn/sharesdk/framework/a;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 224
    :cond_4
    iget-object v0, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0, p2}, Lcn/sharesdk/framework/Platform;->doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto/16 :goto_0

    .line 227
    :pswitch_6
    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .line 228
    iget-object v2, p0, Lcn/sharesdk/framework/c;->a:Lcn/sharesdk/framework/Platform;

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, p2, v8

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v3, v0}, Lcn/sharesdk/framework/Platform;->getFriendList(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/c;->c(ILjava/lang/Object;)V

    .line 289
    return-void
.end method

.method public c()Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcn/sharesdk/framework/c;->c:Lcn/sharesdk/framework/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/a;->a()Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    return-object v0
.end method

.method protected c(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lcn/sharesdk/framework/c$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/sharesdk/framework/c$1;-><init>(Lcn/sharesdk/framework/c;ILjava/lang/Object;)V

    .line 260
    invoke-virtual {v0}, Lcn/sharesdk/framework/c$1;->start()V

    .line 261
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 296
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/c;->c(ILjava/lang/Object;)V

    .line 297
    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcn/sharesdk/framework/c;->b:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->isValid()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcn/sharesdk/framework/c;->f:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcn/sharesdk/framework/c;->h:Z

    return v0
.end method

.method public g()Lcn/sharesdk/framework/PlatformDb;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcn/sharesdk/framework/c;->b:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcn/sharesdk/framework/c;->b:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->removeAccount()V

    .line 315
    return-void
.end method

.method protected i()Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcn/sharesdk/framework/c;->c:Lcn/sharesdk/framework/a;

    return-object v0
.end method

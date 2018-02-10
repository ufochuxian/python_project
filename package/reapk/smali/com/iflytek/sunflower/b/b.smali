.class public Lcom/iflytek/sunflower/b/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "cmd=statsdklog&logver="

    iput-object v0, p0, Lcom/iflytek/sunflower/b/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/sunflower/b/b;->c:I

    iput-object p1, p0, Lcom/iflytek/sunflower/b/b;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/sunflower/b/b;)I
    .locals 1

    iget v0, p0, Lcom/iflytek/sunflower/b/b;->c:I

    return v0
.end method

.method private a()V
    .locals 2

    const-string v0, ""

    iget v0, p0, Lcom/iflytek/sunflower/b/b;->c:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/sunflower/b/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/sunflower/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/sunflower/b/b;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/iflytek/sunflower/b/b;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/sunflower/b/b;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget v1, p0, Lcom/iflytek/sunflower/b/b;->c:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/sunflower/b/b;->b:Landroid/content/Context;

    const-string v1, "body"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Collector"

    const-string v2, "write to local error."

    invoke-static {v1, v2, v0}, Lcom/iflytek/sunflower/c/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/sunflower/b/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/sunflower/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "log"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/iflytek/sunflower/b/b;->b:Landroid/content/Context;

    const v3, 0x8000

    invoke-static {v2, v0, v1, v3}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/iflytek/sunflower/b/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sunflower/b/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/sunflower/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sunflower/b/b;->a()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;I)V
    .locals 6

    iput p2, p0, Lcom/iflytek/sunflower/b/b;->c:I

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sunflower/b/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/sunflower/c/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/sunflower/c/c;->a([B)[B

    move-result-object v1

    new-instance v2, Lcom/iflytek/sunflower/b/a;

    invoke-direct {v2}, Lcom/iflytek/sunflower/b/a;-><init>()V

    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Lcom/iflytek/sunflower/b/a;->b(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iflytek/sunflower/b/a;->a(I)V

    new-instance v3, Lcom/iflytek/sunflower/b/c;

    invoke-direct {v3, p0, p1}, Lcom/iflytek/sunflower/b/c;-><init>(Lcom/iflytek/sunflower/b/b;Lorg/json/JSONObject;)V

    iget v4, p0, Lcom/iflytek/sunflower/b/b;->c:I

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd=statsdklog&logver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/iflytek/sunflower/config/Version;->getLogVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/iflytek/sunflower/config/a;->t:Ljava/lang/String;

    invoke-virtual {v2, v4, v0, v1}, Lcom/iflytek/sunflower/b/a;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/iflytek/sunflower/b/b;->b:Landroid/content/Context;

    sget-object v1, Lcom/iflytek/sunflower/config/b;->g:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/sunflower/b/a;->a(Lcom/iflytek/sunflower/b/a$a;)V

    invoke-virtual {v2}, Lcom/iflytek/sunflower/b/a;->a()V

    :goto_0
    return-void

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd=statsdklog&logver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/iflytek/sunflower/config/Version;->getCustomLogVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/iflytek/sunflower/config/a;->t:Ljava/lang/String;

    invoke-virtual {v2, v4, v0, v1}, Lcom/iflytek/sunflower/b/a;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/iflytek/sunflower/b/b;->b:Landroid/content/Context;

    sget-object v1, Lcom/iflytek/sunflower/config/b;->h:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/sunflower/b/a;->b(Lcom/iflytek/sunflower/b/a$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Collector"

    const-string v2, "upload error."

    invoke-static {v1, v2, v0}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/iflytek/sunflower/b/b;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "Collector"

    const-string v1, "upload error please check net state"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/iflytek/sunflower/b/b;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.class public Lcom/youzan/androidsdk/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x0

.field public static final c:Ljava/lang/String; = "goto_native"

.field public static final d:Ljava/lang/String; = "goto_webview"

.field public static final e:Ljava/lang/String; = "alert"


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Lcom/youzan/androidsdk/c/a/b;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, -0x1

    sput v0, Lcom/youzan/androidsdk/c/a/a;->a:I

    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/youzan/androidsdk/c/a/a;->b:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 37
    :cond_0
    const-string v0, "tool_icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/a/a;->f:Ljava/lang/String;

    .line 38
    const-string v0, "tool_parameter"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/a/a;->g:Ljava/lang/String;

    .line 39
    const-string v0, "new_sign"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/a/a;->h:I

    .line 40
    const-string v0, "tool_value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/a/a;->i:Ljava/lang/String;

    .line 41
    const-string v0, "tool_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/a/a;->j:Ljava/lang/String;

    .line 42
    const-string v0, "created_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/a/a;->k:I

    .line 43
    const-string v0, "tool_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/a/a;->l:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/youzan/androidsdk/c/a/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/youzan/androidsdk/c/a/a;->m:Lcom/youzan/androidsdk/c/a/b;

    .line 45
    iget-object v0, p0, Lcom/youzan/androidsdk/c/a/a;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/youzan/androidsdk/c/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Lcom/youzan/androidsdk/c/a/b;

    iget-object v1, p0, Lcom/youzan/androidsdk/c/a/a;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/youzan/androidsdk/c/a/b;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "toolType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v1, "\\:"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_2

    .line 97
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/youzan/androidsdk/c/a/a;->n:Ljava/lang/String;

    .line 100
    :cond_2
    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 101
    aget-object v1, v0, v2

    iput-object v1, p0, Lcom/youzan/androidsdk/c/a/a;->o:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youzan/androidsdk/c/a/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/youzan/androidsdk/c/a/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/youzan/androidsdk/c/a/a;->h:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/youzan/androidsdk/c/a/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youzan/androidsdk/c/a/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/youzan/androidsdk/c/a/a;->k:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/youzan/androidsdk/c/a/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/youzan/androidsdk/c/a/a;->h:I

    sget v1, Lcom/youzan/androidsdk/c/a/a;->b:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/youzan/androidsdk/c/a/a;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youzan/androidsdk/c/a/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/youzan/androidsdk/c/a/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/youzan/androidsdk/c/a/b;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/youzan/androidsdk/c/a/a;->m:Lcom/youzan/androidsdk/c/a/b;

    return-object v0
.end method

.class public Lcom/jiliguala/niuwa/logic/login/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:I = 0x3e9

.field private static final c:[B

.field private static d:Lcom/jiliguala/niuwa/logic/login/a;

.field private static e:Z


# instance fields
.field private f:Lrx/i/b;

.field private g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

.field private h:I

.field private i:Lcom/jiliguala/niuwa/logic/login/push/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/jiliguala/niuwa/logic/login/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/login/a;->a:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/jiliguala/niuwa/logic/login/a;->c:[B

    .line 54
    new-instance v0, Lcom/jiliguala/niuwa/logic/login/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/login/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/login/a;->d:Lcom/jiliguala/niuwa/logic/login/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    .line 62
    new-instance v0, Lcom/jiliguala/niuwa/logic/login/push/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/login/push/a;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->i:Lcom/jiliguala/niuwa/logic/login/push/a;

    .line 63
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/login/a;
    .locals 2

    .prologue
    .line 66
    const-class v1, Lcom/jiliguala/niuwa/logic/login/a;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/login/a;->d:Lcom/jiliguala/niuwa/logic/login/a;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/jiliguala/niuwa/logic/login/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/login/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/login/a;->d:Lcom/jiliguala/niuwa/logic/login/a;

    .line 70
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/login/a;->d:Lcom/jiliguala/niuwa/logic/login/a;

    monitor-exit v1

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ae()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->serialize()V

    .line 77
    return-void
.end method

.method private af()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->i:Lcom/jiliguala/niuwa/logic/login/push/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/login/push/a;->a(Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method private ag()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->i:Lcom/jiliguala/niuwa/logic/login/push/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/login/push/a;->b(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method private ah()V
    .locals 1

    .prologue
    .line 262
    const-string v0, "PREFS_AB_TEST_SONG"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/login/a;->d(Ljava/lang/String;)V

    .line 263
    const-string v0, "PREFS_AB_TEST_SONG_MASK"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/login/a;->d(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method private ai()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 386
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    if-nez v1, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->cts:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 390
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v4, "Account Created"

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->cts:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 395
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->b(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;)V

    .line 398
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->nick:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 399
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v4, "Username"

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->nick:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->nick:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/String;)V

    .line 403
    :cond_4
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->ava:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 404
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v4

    const-string v5, "Profile Picture"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->ava:Ljava/lang/String;

    .line 405
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v2

    .line 404
    :goto_1
    invoke-virtual {v4, v5, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Z)V

    .line 407
    :cond_5
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->city:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 408
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v4, "City"

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->city:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_6
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_8

    .line 411
    :cond_7
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v4

    const-string v5, "Baby Count"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_d

    move v1, v3

    :goto_2
    invoke-virtual {v4, v5, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;I)V

    .line 414
    :cond_8
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->desc:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 415
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v4

    const-string v5, "Signature"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->desc:Ljava/lang/String;

    .line 416
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    move v1, v2

    .line 415
    :goto_3
    invoke-virtual {v4, v5, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Z)V

    .line 418
    :cond_9
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->bg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 419
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v4

    const-string v5, "Back Picture"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->bg:Ljava/lang/String;

    .line 420
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    move v1, v2

    .line 419
    :goto_4
    invoke-virtual {v4, v5, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Z)V

    .line 422
    :cond_a
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v4, "Mobile"

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->mobile:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v4, "Money"

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->credits:I

    invoke-virtual {v1, v4, v5}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;I)V

    .line 424
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v4, "Referral"

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-boolean v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->referral:Z

    invoke-virtual {v1, v4, v5}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Z)V

    .line 425
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v4, "Referrer"

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-boolean v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->referrer:Z

    invoke-virtual {v1, v4, v5}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Z)V

    .line 427
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v4, "Member Chosen"

    .line 428
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->B()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 427
    :goto_5
    invoke-virtual {v1, v4, v2}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;I)V

    .line 429
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->C()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "member":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 431
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Member"

    const-string v3, "expired"

    const-string v4, "invalid"

    .line 432
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "empty"

    const-string v5, "none"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 431
    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_b
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->testAb:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->testAb:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 435
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Listen Free Sign"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->testAb:Ljava/util/HashMap;

    const-string v4, "PREFS_AB_TEST_SONG"

    .line 436
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 435
    invoke-virtual {v2, v3, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Listen Guide"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->testAb:Ljava/util/HashMap;

    const-string v4, "PREFS_AB_TEST_SONG_MASK"

    .line 438
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 437
    invoke-virtual {v2, v3, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "member":Ljava/lang/String;
    :cond_c
    move v1, v3

    .line 405
    goto/16 :goto_1

    .line 411
    :cond_d
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    .line 412
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto/16 :goto_2

    :cond_e
    move v1, v3

    .line 416
    goto/16 :goto_3

    :cond_f
    move v1, v3

    .line 420
    goto/16 :goto_4

    :cond_10
    move v2, v3

    .line 428
    goto :goto_5
.end method

.method private aj()Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 444
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    if-nez v1, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-object v0

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tok:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    goto :goto_0
.end method

.method private ak()V
    .locals 2

    .prologue
    .line 710
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->G()Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->i:Lcom/jiliguala/niuwa/logic/login/push/a;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/login/push/a;->a(Ljava/lang/String;)V

    .line 714
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->g()V

    .line 715
    return-void
.end method

.method private al()Z
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private am()Z
    .locals 1

    .prologue
    .line 766
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/login/a;->al()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 3
    .param p1, "template"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    .line 191
    const-string v1, "LST_UID"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "lstUid":Ljava/lang/String;
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->_id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    const-string v1, "CUR_CHOSEN_BABY_INDEX"

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 196
    const-string v1, "CUR_CHOSEN_BABY_ID"

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 198
    :cond_0
    return-void
.end method

.method private d(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 6
    .param p1, "template"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    const-wide/16 v4, 0x0

    .line 302
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    if-nez v0, :cond_1

    .line 303
    :cond_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .line 381
    :goto_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/login/a;->ah()V

    .line 382
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/login/a;->ai()V

    .line 383
    return-void

    .line 305
    :cond_1
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->cts:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->cts:Ljava/lang/String;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->cts:Ljava/lang/String;

    .line 308
    :cond_2
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->_id:Ljava/lang/String;

    .line 311
    :cond_3
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->nick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 312
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->nick:Ljava/lang/String;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->nick:Ljava/lang/String;

    .line 314
    :cond_4
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 315
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    .line 317
    :cond_5
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->access_token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 318
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->access_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->access_token:Ljava/lang/String;

    .line 320
    :cond_6
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tok:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 321
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tok:Ljava/lang/String;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tok:Ljava/lang/String;

    .line 323
    :cond_7
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->ava:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 324
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->ava:Ljava/lang/String;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->ava:Ljava/lang/String;

    .line 326
    :cond_8
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->typ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 327
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->typ:Ljava/lang/String;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->typ:Ljava/lang/String;

    .line 329
    :cond_9
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tts:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 330
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tts:Ljava/lang/String;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tts:Ljava/lang/String;

    .line 332
    :cond_a
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 333
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->u:Ljava/lang/String;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->u:Ljava/lang/String;

    .line 335
    :cond_b
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->city:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 336
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->city:Ljava/lang/String;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->city:Ljava/lang/String;

    .line 338
    :cond_c
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->userInfoSegP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 339
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->userInfoSegP:Ljava/lang/String;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->userInfoSegP:Ljava/lang/String;

    .line 341
    :cond_d
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->userInfoSegType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 342
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->userInfoSegType:Ljava/lang/String;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->userInfoSegType:Ljava/lang/String;

    .line 344
    :cond_e
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_10

    .line 345
    :cond_f
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    .line 347
    :cond_10
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->desc:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 348
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->desc:Ljava/lang/String;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->desc:Ljava/lang/String;

    .line 350
    :cond_11
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    if-eqz v0, :cond_15

    .line 351
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    iget-wide v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->thread:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_12

    .line 352
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    iget-wide v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->thread:J

    iput-wide v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->thread:J

    .line 354
    :cond_12
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    iget-wide v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->reply:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_13

    .line 355
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    iget-wide v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->reply:J

    iput-wide v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->reply:J

    .line 357
    :cond_13
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    iget-wide v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->sel:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_14

    .line 358
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    iget-wide v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->sel:J

    iput-wide v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->sel:J

    .line 360
    :cond_14
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    iget-wide v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->fav:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_15

    .line 361
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    iget-wide v2, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->fav:J

    iput-wide v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->fav:J

    .line 364
    :cond_15
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->bg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 365
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->bg:Ljava/lang/String;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->bg:Ljava/lang/String;

    .line 367
    :cond_16
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-boolean v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->isNew:Z

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->isNew:Z

    .line 368
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tag:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tag:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_17

    .line 369
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tag:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tag:Ljava/util/ArrayList;

    .line 371
    :cond_17
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->mobile:Ljava/lang/String;

    .line 372
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->guaid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 373
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->guaid:Ljava/lang/String;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->guaid:Ljava/lang/String;

    .line 375
    :cond_18
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->credits:I

    iput v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->credits:I

    .line 376
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-boolean v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->referral:Z

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->referral:Z

    .line 377
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-boolean v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->referrer:Z

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->referrer:Z

    .line 378
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->bind:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->bind:Ljava/util/HashMap;

    .line 379
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->membership:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->membership:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;

    goto/16 :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 6
    .param p1, "prefsKey"    # Ljava/lang/String;

    .prologue
    .line 270
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    if-nez v5, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->testAb:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 274
    .local v4, "testAb":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 278
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, "mapStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 281
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v5, Lcom/jiliguala/niuwa/logic/login/a$1;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/logic/login/a$1;-><init>(Lcom/jiliguala/niuwa/logic/login/a;)V

    .line 283
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/login/a$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 281
    invoke-static {v3, v5}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Map;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_1
    if-eqz v2, :cond_3

    .line 288
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->_id:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "testAb":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 292
    .restart local v4    # "testAb":Ljava/lang/String;
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 293
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5}, Ljava/util/Random;->nextBoolean()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v4, "A"

    .line 294
    :goto_3
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->_id:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-static {p1, v3}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_2
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->testAb:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 290
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 293
    :cond_4
    const-string v4, "B"

    goto :goto_3
.end method


# virtual methods
.method public A()[J
    .locals 4

    .prologue
    .line 608
    const/4 v1, 0x4

    new-array v0, v1, [J

    .line 609
    .local v0, "forumInfos":[J
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 616
    :goto_0
    return-object v0

    .line 612
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    iget-wide v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->thread:J

    aput-wide v2, v0, v1

    .line 613
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    iget-wide v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->reply:J

    aput-wide v2, v0, v1

    .line 614
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    iget-wide v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->sel:J

    aput-wide v2, v0, v1

    .line 615
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->forum:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;

    iget-wide v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$ForumPart;->fav:J

    aput-wide v2, v0, v1

    goto :goto_0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->membership:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->membership:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;->status:Ljava/lang/String;

    .line 623
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 622
    :goto_0
    return v0

    .line 623
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    const-string v0, ""

    .line 630
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->membership:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;->status:Ljava/lang/String;

    goto :goto_0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    const-string v0, ""

    .line 638
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->membership:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;->duets:Ljava/lang/String;

    goto :goto_0
.end method

.method public E()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 646
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tag:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    const/4 v0, 0x0

    .line 656
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->typ:Ljava/lang/String;

    goto :goto_0
.end method

.method public G()Z
    .locals 2

    .prologue
    .line 661
    const-string v0, "guest"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public H()Z
    .locals 2

    .prologue
    .line 665
    const-string v0, "wechat"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public I()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 674
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v2

    if-nez v2, :cond_0

    .line 687
    :goto_0
    :pswitch_0
    return v0

    .line 677
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->typ:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 685
    goto :goto_0

    .line 677
    :sswitch_0
    const-string v4, "guest"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    goto :goto_1

    :sswitch_1
    const-string v4, "mobile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_1

    :sswitch_2
    const-string v4, "qq"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "wechat"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v4, "weibo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v4, "email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3fb56f5e -> :sswitch_1
        -0x2f3174da -> :sswitch_3
        0xe20 -> :sswitch_2
        0x5c24b9c -> :sswitch_5
        0x5e22dd8 -> :sswitch_0
        0x6bc6ce8 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    const/4 v0, 0x0

    .line 694
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->typ:Ljava/lang/String;

    goto :goto_0
.end method

.method public K()I
    .locals 1

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 699
    :cond_0
    const/4 v0, 0x0

    .line 701
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public L()I
    .locals 8

    .prologue
    .line 770
    sget-object v6, Lcom/jiliguala/niuwa/logic/login/a;->c:[B

    monitor-enter v6

    .line 771
    :try_start_0
    const-string v5, "CUR_CHOSEN_BABY_INDEX"

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    .line 772
    const-string v5, "CUR_CHOSEN_BABY_ID"

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 774
    .local v3, "curChosenBabyId":Ljava/lang/String;
    iget v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    if-ltz v5, :cond_3

    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/login/a;->am()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 780
    if-nez v3, :cond_0

    iget v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    iget-object v7, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 781
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    iget v7, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v1, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->_id:Ljava/lang/String;

    .line 782
    .local v1, "bid":Ljava/lang/String;
    const-string v5, "CUR_CHOSEN_BABY_ID"

    invoke-static {v5, v1}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    monitor-exit v6

    .line 801
    .end local v1    # "bid":Ljava/lang/String;
    :goto_0
    return v5

    .line 785
    :cond_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 786
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 787
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    .line 788
    .local v0, "babyInfoData":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->_id:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 789
    iget v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    if-eq v5, v4, :cond_1

    .line 790
    iput v4, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    .line 791
    const-string v5, "CUR_CHOSEN_BABY_INDEX"

    iget v7, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    invoke-static {v5, v7}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;I)V

    .line 793
    :cond_1
    iget v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    monitor-exit v6

    goto :goto_0

    .line 802
    .end local v0    # "babyInfoData":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    .end local v2    # "count":I
    .end local v3    # "curChosenBabyId":Ljava/lang/String;
    .end local v4    # "index":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 786
    .restart local v0    # "babyInfoData":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    .restart local v2    # "count":I
    .restart local v3    # "curChosenBabyId":Ljava/lang/String;
    .restart local v4    # "index":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 799
    .end local v0    # "babyInfoData":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    .end local v2    # "count":I
    .end local v4    # "index":I
    :cond_3
    const/4 v5, 0x0

    :try_start_1
    iput v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    .line 800
    const-string v5, "CUR_CHOSEN_BABY_INDEX"

    iget v7, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    invoke-static {v5, v7}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;I)V

    .line 801
    iget v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public M()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 823
    :cond_0
    const/4 v0, 0x0

    .line 825
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public N()Ljava/lang/String;
    .locals 2

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 846
    :cond_0
    const-string v0, ""

    .line 851
    :goto_0
    return-object v0

    .line 848
    :cond_1
    iget v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2

    .line 849
    const-string v0, ""

    goto :goto_0

    .line 851
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->nick:Ljava/lang/String;

    goto :goto_0
.end method

.method public O()Ljava/lang/String;
    .locals 5

    .prologue
    .line 855
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 856
    :cond_0
    const-string v0, ""

    .line 861
    :goto_0
    return-object v0

    .line 858
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->bd:Ljava/lang/String;

    .line 859
    .local v0, "bd":Ljava/lang/String;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/f;->c(Ljava/lang/String;)J

    move-result-wide v2

    .line 860
    .local v2, "time":J
    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/f;->c(J)Ljava/lang/String;

    move-result-object v0

    .line 861
    goto :goto_0
.end method

.method public P()Ljava/lang/String;
    .locals 5

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 866
    :cond_0
    const-string v0, ""

    .line 871
    :goto_0
    return-object v0

    .line 868
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->bd:Ljava/lang/String;

    .line 869
    .local v0, "bd":Ljava/lang/String;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/f;->c(Ljava/lang/String;)J

    move-result-wide v2

    .line 870
    .local v2, "time":J
    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/f;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 871
    goto :goto_0
.end method

.method public Q()Ljava/util/Date;
    .locals 5

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 876
    :cond_0
    const/4 v1, 0x0

    .line 880
    :goto_0
    return-object v1

    .line 878
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->bd:Ljava/lang/String;

    .line 879
    .local v0, "bd":Ljava/lang/String;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/f;->c(Ljava/lang/String;)J

    move-result-wide v2

    .line 880
    .local v2, "time":J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public R()Ljava/lang/String;
    .locals 3

    .prologue
    .line 884
    sget-object v1, Lcom/jiliguala/niuwa/logic/login/a;->c:[B

    monitor-enter v1

    .line 885
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 886
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 891
    :goto_0
    return-object v0

    .line 888
    :cond_1
    iget v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 889
    const-string v0, ""

    monitor-exit v1

    goto :goto_0

    .line 892
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 891
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->_id:Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public S()Ljava/lang/String;
    .locals 3

    .prologue
    .line 896
    sget-object v1, Lcom/jiliguala/niuwa/logic/login/a;->c:[B

    monitor-enter v1

    .line 897
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 898
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 900
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->ava:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 901
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public T()Ljava/lang/String;
    .locals 6

    .prologue
    .line 905
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v4

    if-nez v4, :cond_1

    .line 906
    :cond_0
    const-string v4, ""

    .line 916
    :goto_0
    return-object v4

    .line 909
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    iget v5, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->bd:Ljava/lang/String;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/f;->c(Ljava/lang/String;)J

    move-result-wide v2

    .line 910
    .local v2, "time":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 911
    .local v0, "date":Ljava/util/Date;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/d;->a(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 912
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "time":J
    :catch_0
    move-exception v1

    .line 913
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 916
    const-string v4, ""

    goto :goto_0
.end method

.method public U()I
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 920
    sget-object v6, Lcom/jiliguala/niuwa/logic/login/a;->c:[B

    monitor-enter v6

    .line 921
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v4

    if-nez v4, :cond_1

    .line 922
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    .line 930
    :goto_0
    return v4

    .line 925
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->M()Ljava/util/ArrayList;

    move-result-object v4

    iget v7, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->bd:Ljava/lang/String;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/f;->c(Ljava/lang/String;)J

    move-result-wide v2

    .line 926
    .local v2, "time":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 927
    .local v0, "date":Ljava/util/Date;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/d;->b(Ljava/util/Date;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    :try_start_2
    monitor-exit v6

    goto :goto_0

    .line 932
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "time":J
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 928
    :catch_0
    move-exception v1

    .line 929
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 930
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v4, v5

    goto :goto_0
.end method

.method public V()Z
    .locals 2

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->U()I

    move-result v0

    .line 937
    .local v0, "currentBabyAge":I
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public W()I
    .locals 2

    .prologue
    .line 941
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->U()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 942
    .local v0, "babyCode":I
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 943
    const/4 v0, 0x5

    .line 945
    :cond_0
    return v0
.end method

.method public X()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 950
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->U()I

    move-result v0

    .line 951
    .local v0, "currentBabyAge":I
    if-le v0, v1, :cond_0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public Y()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 955
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->U()I

    move-result v0

    .line 956
    .local v0, "currentBabyAge":I
    if-ltz v0, :cond_0

    if-gt v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public Z()V
    .locals 2

    .prologue
    .line 960
    sget-object v1, Lcom/jiliguala/niuwa/logic/login/a;->c:[B

    monitor-enter v1

    .line 961
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 962
    monitor-exit v1

    .line 963
    return-void

    .line 962
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefsKey"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->testAb:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 256
    :cond_0
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->testAb:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public a(I)V
    .locals 4
    .param p1, "curChosenBabyIndex"    # I

    .prologue
    .line 806
    sget-object v2, Lcom/jiliguala/niuwa/logic/login/a;->c:[B

    monitor-enter v2

    .line 807
    :try_start_0
    iput p1, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    .line 808
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    const-string v1, "CUR_CHOSEN_BABY_INDEX"

    invoke-static {v1, p1}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;I)V

    .line 811
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v3, 0x1004

    invoke-direct {v2, v3}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 812
    iget v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 813
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    .line 814
    .local v0, "b":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    const-string v1, "CUR_CHOSEN_BABY_ID"

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Default Baby Age"

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->bd:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    .end local v0    # "b":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->e()V

    .line 819
    return-void

    .line 808
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 718
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sign Out"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 720
    invoke-static {}, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;->getInstance()Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;->reportServerAndClearDataAfterLoginOut()V

    .line 722
    sget-object v2, Lcom/jiliguala/niuwa/logic/login/a;->c:[B

    monitor-enter v2

    .line 723
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    if-eqz v1, :cond_0

    .line 725
    const-string v1, "LST_UID"

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/login/a;->ak()V

    .line 731
    const-string v1, ""

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/String;)V

    .line 732
    const-string v1, ""

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->b(Ljava/lang/String;)V

    .line 734
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->logout()V

    .line 735
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->_id:Ljava/lang/String;

    .line 736
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->u:Ljava/lang/String;

    .line 737
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->userInfoSegP:Ljava/lang/String;

    .line 738
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->userInfoSegType:Ljava/lang/String;

    .line 739
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    .line 740
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .line 742
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    .line 745
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/a;->a()Lcom/jiliguala/niuwa/logic/db/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/a;->c()V

    .line 746
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/b/a;->a()Lcom/jiliguala/niuwa/logic/login/b/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/logic/login/b/a;->a(Landroid/content/Context;)V

    .line 749
    sget-object v1, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->WEI_XIN_LOGIN_APP_ID:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    .line 750
    .local v0, "api":Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->unregisterApp()V

    .line 752
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v3, 0x1003

    invoke-direct {v2, v3}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 753
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/youzan/androidsdk/e;->a(Landroid/content/Context;)V

    .line 757
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/b;->a()Lcom/jiliguala/niuwa/logic/q/b;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/logic/q/b;->d:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/q/b;->b(I)V

    .line 758
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/b;->a()Lcom/jiliguala/niuwa/logic/q/b;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/jiliguala/niuwa/logic/q/b;->a(Z)V

    .line 759
    return-void

    .line 746
    .end local v0    # "api":Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate;)V
    .locals 5
    .param p1, "groupInfo"    # Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate;

    .prologue
    .line 1015
    sget-object v3, Lcom/jiliguala/niuwa/logic/login/a;->c:[B

    monitor-enter v3

    .line 1016
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1017
    monitor-exit v3

    .line 1036
    :goto_0
    return-void

    .line 1019
    :cond_0
    if-nez p1, :cond_1

    .line 1020
    monitor-exit v3

    goto :goto_0

    .line 1035
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1022
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1023
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 1025
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1026
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1027
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;

    .line 1028
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1029
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1033
    .end local v0    # "data":Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;
    :cond_5
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;Z)V
    .locals 8
    .param p1, "babyInfo"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    .param p2, "setCurrent"    # Z

    .prologue
    .line 94
    sget-object v5, Lcom/jiliguala/niuwa/logic/login/a;->c:[B

    monitor-enter v5

    .line 95
    :try_start_0
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 96
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->_id:Ljava/lang/String;

    .line 97
    .local v1, "bid":Ljava/lang/String;
    const/4 v2, 0x0

    .line 98
    .local v2, "find":Z
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    .line 99
    .local v3, "item":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    iget-object v6, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->_id:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 100
    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->nick:Ljava/lang/String;

    iput-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->nick:Ljava/lang/String;

    .line 101
    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->bd:Ljava/lang/String;

    iput-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->bd:Ljava/lang/String;

    .line 102
    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->ava:Ljava/lang/String;

    iput-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->ava:Ljava/lang/String;

    .line 103
    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->prt:Ljava/lang/String;

    iput-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->prt:Ljava/lang/String;

    .line 104
    const/4 v2, 0x1

    .line 108
    .end local v3    # "item":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    :cond_1
    if-nez v2, :cond_2

    .line 109
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    if-eqz p2, :cond_2

    .line 111
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    .line 112
    const-string v4, "CUR_CHOSEN_BABY_INDEX"

    iget v6, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    invoke-static {v4, v6}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;I)V

    .line 113
    iget v4, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 114
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    iget v6, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    .line 115
    .local v0, "b":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    const-string v4, "CUR_CHOSEN_BABY_ID"

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->_id:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v4

    const-string v6, "Default Baby Age"

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->bd:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v0    # "b":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v6, 0x1005

    invoke-direct {v5, v6}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 123
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/login/a;->ae()V

    .line 125
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->e()V

    .line 126
    return-void

    .line 120
    .end local v1    # "bid":Ljava/lang/String;
    .end local v2    # "find":Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 2
    .param p1, "template"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    .line 156
    if-eqz p1, :cond_2

    .line 157
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "PREFS_GUIDE_MASK"

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->mask:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    sget-object v1, Lcom/jiliguala/niuwa/logic/login/a;->c:[B

    monitor-enter v1

    .line 161
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/login/a;->c(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    .line 163
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/login/a;->d(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    .line 164
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/login/a;->af()V

    .line 167
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/login/a;->ag()V

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/login/a;->ae()V

    .line 172
    :cond_2
    return-void

    .line 164
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 4
    .param p1, "bind"    # Z

    .prologue
    .line 1039
    sget-object v1, Lcom/jiliguala/niuwa/logic/login/a;->c:[B

    monitor-enter v1

    .line 1040
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->bind:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->bind:Ljava/util/HashMap;

    const-string v2, "wechat"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    :cond_0
    monitor-exit v1

    .line 1044
    return-void

    .line 1043
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;)Z
    .locals 4
    .param p1, "serverUserData"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    .prologue
    const/4 v1, 0x0

    .line 141
    if-nez p1, :cond_2

    .line 142
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 148
    :cond_1
    :goto_0
    return v1

    .line 144
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    if-eqz v2, :cond_1

    .line 147
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    .line 148
    .local v0, "localUserData":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;
    new-instance v1, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->mobile:Ljava/lang/String;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->mobile:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v1

    goto :goto_0
.end method

.method public aa()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 966
    sget-object v1, Lcom/jiliguala/niuwa/logic/login/a;->c:[B

    monitor-enter v1

    .line 967
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v2

    if-nez v2, :cond_0

    .line 968
    monitor-exit v1

    .line 973
    :goto_0
    return v0

    .line 970
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 971
    monitor-exit v1

    goto :goto_0

    .line 975
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 973
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public ab()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 979
    sget-object v1, Lcom/jiliguala/niuwa/logic/login/a;->c:[B

    monitor-enter v1

    .line 980
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v2

    if-nez v2, :cond_0

    .line 981
    monitor-exit v1

    .line 986
    :goto_0
    return-object v0

    .line 983
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 984
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 987
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 986
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->_id:Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public ac()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 991
    sget-object v1, Lcom/jiliguala/niuwa/logic/login/a;->c:[B

    monitor-enter v1

    .line 992
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v2

    if-nez v2, :cond_0

    .line 993
    monitor-exit v1

    .line 998
    :goto_0
    return v0

    .line 995
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->bind:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->bind:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 996
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 999
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 998
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->bind:Ljava/util/HashMap;

    const-string v2, "wechat"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public ad()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1003
    sget-object v1, Lcom/jiliguala/niuwa/logic/login/a;->c:[B

    monitor-enter v1

    .line 1004
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1005
    monitor-exit v1

    .line 1010
    :goto_0
    return-object v0

    .line 1007
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 1008
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 1011
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1010
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->groups:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->title:Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 80
    sget-object v1, Lcom/jiliguala/niuwa/logic/login/a;->c:[B

    monitor-enter v1

    .line 81
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->loadFromDb()Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .line 82
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/login/a;->ah()V

    .line 83
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->L()I

    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 2
    .param p1, "template"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    sget-object v1, Lcom/jiliguala/niuwa/logic/login/a;->c:[B

    monitor-enter v1

    .line 203
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/login/a;->d(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    .line 204
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/login/a;->ae()V

    .line 211
    :cond_0
    return-void

    .line 204
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 5
    .param p1, "bid"    # Ljava/lang/String;

    .prologue
    .line 527
    sget-object v3, Lcom/jiliguala/niuwa/logic/login/a;->c:[B

    monitor-enter v3

    .line 528
    const/4 v1, 0x0

    .line 529
    .local v1, "index":I
    :try_start_0
    iput v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    .line 530
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    .line 531
    .local v0, "babyInfo":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->_id:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 532
    iput v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    .line 538
    .end local v0    # "babyInfo":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    :cond_0
    iget v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->h:I

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/logic/login/a;->a(I)V

    .line 539
    monitor-exit v3

    .line 540
    return-void

    .line 535
    .restart local v0    # "babyInfo":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 536
    goto :goto_0

    .line 539
    .end local v0    # "babyInfo":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public c(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    .locals 4
    .param p1, "bid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 830
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 841
    :goto_0
    return-object v0

    .line 833
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    .line 834
    .local v0, "babyInfoData":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->_id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 838
    .end local v0    # "babyInfoData":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    :catch_0
    move-exception v2

    :cond_3
    move-object v0, v1

    .line 841
    goto :goto_0
.end method

.method public c()Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->loadLocal()Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    move-result-object v0

    .line 89
    .local v0, "userInfo":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    return-object v0
.end method

.method public d()Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;
    .locals 2

    .prologue
    .line 129
    sget-object v1, Lcom/jiliguala/niuwa/logic/login/a;->c:[B

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    monitor-exit v1

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/login/a;->af()V

    .line 181
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 187
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->a(Landroid/content/Context;)V

    .line 188
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->i:Lcom/jiliguala/niuwa/logic/login/push/a;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->i:Lcom/jiliguala/niuwa/logic/login/push/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/push/a;->a()V

    .line 226
    :cond_0
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    if-nez v0, :cond_0

    .line 230
    const-string v0, ""

    .line 238
    :goto_0
    return-object v0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    if-nez v0, :cond_1

    .line 233
    const-string v0, ""

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->cts:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    const-string v0, ""

    goto :goto_0

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->cts:Ljava/lang/String;

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 5

    .prologue
    .line 243
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "cts":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    const-string v1, ""

    .line 250
    :goto_0
    return-object v1

    .line 248
    :cond_0
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/f;->c(Ljava/lang/String;)J

    move-result-wide v2

    .line 249
    .local v2, "time":J
    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/f;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "userBd":Ljava/lang/String;
    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    if-nez v0, :cond_0

    .line 455
    const-string v0, ""

    .line 463
    :goto_0
    return-object v0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    if-nez v0, :cond_1

    .line 458
    const-string v0, ""

    goto :goto_0

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->guaid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    const-string v0, ""

    goto :goto_0

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->guaid:Ljava/lang/String;

    goto :goto_0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->credits:I

    .line 476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    const/4 v0, 0x1

    .line 483
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 487
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    if-nez v1, :cond_1

    .line 496
    :cond_0
    :goto_0
    return v0

    .line 490
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->mobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    if-nez v0, :cond_0

    .line 505
    const-string v0, ""

    .line 510
    :goto_0
    return-object v0

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    if-nez v0, :cond_1

    .line 508
    const-string v0, ""

    goto :goto_0

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->mobile:Ljava/lang/String;

    goto :goto_0
.end method

.method public p()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 514
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->nick:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 517
    :cond_0
    return v0
.end method

.method public q()Z
    .locals 2

    .prologue
    .line 522
    const-string v0, "guest"

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->typ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->mobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    const-string v0, ""

    .line 546
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->_id:Ljava/lang/String;

    goto :goto_0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    const-string v0, ""

    .line 553
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->tok:Ljava/lang/String;

    goto :goto_0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    const-string v0, ""

    .line 560
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->nick:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    const-string v0, ""

    .line 567
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->city:Ljava/lang/String;

    goto :goto_0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    const/4 v0, 0x0

    .line 574
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->ava:Ljava/lang/String;

    goto :goto_0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    const/4 v0, 0x0

    .line 581
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->u:Ljava/lang/String;

    goto :goto_0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    const/4 v0, 0x0

    .line 588
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->userInfoSegP:Ljava/lang/String;

    goto :goto_0
.end method

.method public y()Ljava/lang/String;
    .locals 2

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-nez v1, :cond_1

    .line 593
    const-string v0, "\u8bf7\u767b\u5f55\u540e\u67e5\u770b\u4e2a\u4eba\u7b7e\u540d"

    .line 596
    :cond_0
    :goto_0
    return-object v0

    .line 595
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->desc:Ljava/lang/String;

    .line 596
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto :goto_0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    const-string v0, ""

    .line 604
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a;->g:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->bg:Ljava/lang/String;

    goto :goto_0
.end method

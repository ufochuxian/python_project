.class public Lcom/jiliguala/niuwa/logic/t/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field private static f:Lcom/jiliguala/niuwa/logic/t/a;


# instance fields
.field private g:Lcom/jiliguala/niuwa/logic/t/a/a;

.field private h:Lcom/jiliguala/niuwa/common/a/i;

.field private i:Lcom/jiliguala/niuwa/common/a/j;

.field private j:Lrx/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/jiliguala/niuwa/logic/t/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/t/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/t/a;->f:Lcom/jiliguala/niuwa/logic/t/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/t/a;
    .locals 2

    .prologue
    .line 44
    const-class v1, Lcom/jiliguala/niuwa/logic/t/a;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/t/a;->f:Lcom/jiliguala/niuwa/logic/t/a;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/jiliguala/niuwa/logic/t/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/t/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/t/a;->f:Lcom/jiliguala/niuwa/logic/t/a;

    .line 48
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/t/a;->f:Lcom/jiliguala/niuwa/logic/t/a;

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/t/a;)Lrx/i/b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/t/a;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/t/a;->j:Lrx/i/b;

    return-object v0
.end method

.method private a(Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "shareInfo"    # Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;
    .param p2, "fragmentManager"    # Landroid/support/v4/app/ag;

    .prologue
    .line 107
    if-eqz p2, :cond_1

    .line 108
    invoke-static {p2}, Lcom/jiliguala/niuwa/common/a/j;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/t/a;->i:Lcom/jiliguala/niuwa/common/a/j;

    .line 109
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/t/a;->i:Lcom/jiliguala/niuwa/common/a/j;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/t/a;->i:Lcom/jiliguala/niuwa/common/a/j;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/t/a;->h:Lcom/jiliguala/niuwa/common/a/i;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/j;->a(Lcom/jiliguala/niuwa/common/a/i;)V

    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/t/a;->i:Lcom/jiliguala/niuwa/common/a/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jiliguala/niuwa/common/a/j;->a(Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;I)V

    .line 118
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/t/a;->i:Lcom/jiliguala/niuwa/common/a/j;

    invoke-virtual {v0, p2}, Lcom/jiliguala/niuwa/common/a/j;->b(Landroid/support/v4/app/ag;)V

    .line 120
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/t/a;->g:Lcom/jiliguala/niuwa/logic/t/a/a;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/t/a;->g:Lcom/jiliguala/niuwa/logic/t/a/a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/logic/t/a/a;->a()V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/t/a;->g:Lcom/jiliguala/niuwa/logic/t/a/a;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/t/a;->g:Lcom/jiliguala/niuwa/logic/t/a/a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/logic/t/a/a;->b()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/t/a;Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;Landroid/support/v4/app/ag;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/t/a;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;
    .param p2, "x2"    # Landroid/support/v4/app/ag;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/t/a;->a(Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;Landroid/support/v4/app/ag;)V

    return-void
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/logic/t/a;)Lcom/jiliguala/niuwa/logic/t/a/a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/t/a;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/t/a;->g:Lcom/jiliguala/niuwa/logic/t/a/a;

    return-object v0
.end method

.method private b()Lrx/i/b;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/t/a;->j:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/t/a;->j:Lrx/i/b;

    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/t/a;->j:Lrx/i/b;

    return-object v0
.end method

.method private b(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;Landroid/support/v4/app/ag;)V
    .locals 4
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    .param p2, "fragmentManager"    # Landroid/support/v4/app/ag;

    .prologue
    .line 149
    if-eqz p2, :cond_1

    .line 150
    invoke-static {p2}, Lcom/jiliguala/niuwa/common/a/j;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/j;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/t/a;->i:Lcom/jiliguala/niuwa/common/a/j;

    .line 151
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/t/a;->i:Lcom/jiliguala/niuwa/common/a/j;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/t/a;->i:Lcom/jiliguala/niuwa/common/a/j;

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/t/a;->h:Lcom/jiliguala/niuwa/common/a/i;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/j;->a(Lcom/jiliguala/niuwa/common/a/i;)V

    .line 154
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;-><init>()V

    .line 155
    .local v0, "shareInfo":Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;-><init>()V

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    .line 156
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    const-string v2, ""

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->uuid:Ljava/lang/String;

    .line 157
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    iput-object p1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->extra:Ljava/lang/Object;

    .line 158
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    const-string v2, ""

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->target:Ljava/lang/String;

    .line 159
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->img:Ljava/lang/String;

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->img:Ljava/lang/String;

    .line 160
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0270

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->text:Ljava/lang/String;

    .line 161
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f01b8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->button:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/t/a;->i:Lcom/jiliguala/niuwa/common/a/j;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/jiliguala/niuwa/common/a/j;->a(Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;I)V

    .line 170
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/t/a;->i:Lcom/jiliguala/niuwa/common/a/j;

    invoke-virtual {v1, p2}, Lcom/jiliguala/niuwa/common/a/j;->b(Landroid/support/v4/app/ag;)V

    .line 171
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/t/a;->g:Lcom/jiliguala/niuwa/logic/t/a/a;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/t/a;->g:Lcom/jiliguala/niuwa/logic/t/a/a;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/logic/t/a/a;->a()V

    .line 180
    .end local v0    # "shareInfo":Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/t/a;->g:Lcom/jiliguala/niuwa/logic/t/a/a;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/t/a;->g:Lcom/jiliguala/niuwa/logic/t/a/a;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/logic/t/a/a;->b()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v4/app/ag;)V
    .locals 4
    .param p1, "fragmentManager"    # Landroid/support/v4/app/ag;

    .prologue
    .line 62
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/t/a;->b()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    .line 68
    invoke-interface {v2, v0}, Lcom/jiliguala/niuwa/logic/network/d;->i(Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 69
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/logic/t/a$1;

    invoke-direct {v3, p0, p1}, Lcom/jiliguala/niuwa/logic/t/a$1;-><init>(Lcom/jiliguala/niuwa/logic/t/a;Landroid/support/v4/app/ag;)V

    .line 70
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method public a(Lcom/jiliguala/niuwa/common/a/i;)V
    .locals 0
    .param p1, "shareActionListener"    # Lcom/jiliguala/niuwa/common/a/i;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/t/a;->h:Lcom/jiliguala/niuwa/common/a/i;

    .line 104
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/logic/t/a/a;)V
    .locals 0
    .param p1, "callback"    # Lcom/jiliguala/niuwa/logic/t/a/a;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/t/a;->g:Lcom/jiliguala/niuwa/logic/t/a/a;

    .line 100
    return-void
.end method

.method public a(Ljava/lang/Object;ILandroid/support/v4/app/ag;)V
    .locals 4
    .param p1, "ShareObject"    # Ljava/lang/Object;
    .param p2, "shareType"    # I
    .param p3, "fragmentManager"    # Landroid/support/v4/app/ag;

    .prologue
    .line 183
    if-eqz p3, :cond_1

    .line 184
    invoke-static {p3}, Lcom/jiliguala/niuwa/common/a/j;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/j;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/t/a;->i:Lcom/jiliguala/niuwa/common/a/j;

    .line 185
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/t/a;->i:Lcom/jiliguala/niuwa/common/a/j;

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/t/a;->i:Lcom/jiliguala/niuwa/common/a/j;

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/t/a;->h:Lcom/jiliguala/niuwa/common/a/i;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/j;->a(Lcom/jiliguala/niuwa/common/a/i;)V

    .line 188
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;-><init>()V

    .line 189
    .local v0, "shareInfo":Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;-><init>()V

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    .line 190
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    const-string v2, ""

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->uuid:Ljava/lang/String;

    .line 191
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    iput-object p1, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->extra:Ljava/lang/Object;

    .line 192
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    const-string v2, ""

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->target:Ljava/lang/String;

    .line 193
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    const-string v2, ""

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->img:Ljava/lang/String;

    .line 195
    packed-switch p2, :pswitch_data_0

    .line 206
    :goto_0
    :pswitch_0
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f01b8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->button:Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/t/a;->i:Lcom/jiliguala/niuwa/common/a/j;

    invoke-virtual {v1, v0, p2}, Lcom/jiliguala/niuwa/common/a/j;->a(Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;I)V

    .line 215
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/t/a;->i:Lcom/jiliguala/niuwa/common/a/j;

    invoke-virtual {v1, p3}, Lcom/jiliguala/niuwa/common/a/j;->b(Landroid/support/v4/app/ag;)V

    .line 216
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/t/a;->g:Lcom/jiliguala/niuwa/logic/t/a/a;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/t/a;->g:Lcom/jiliguala/niuwa/logic/t/a/a;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/logic/t/a/a;->a()V

    .line 225
    .end local v0    # "shareInfo":Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;
    :cond_0
    :goto_1
    return-void

    .line 197
    .restart local v0    # "shareInfo":Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;
    :pswitch_1
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f026f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->text:Ljava/lang/String;

    goto :goto_0

    .line 200
    :pswitch_2
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0272

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->text:Ljava/lang/String;

    goto :goto_0

    .line 203
    :pswitch_3
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0271

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->text:Ljava/lang/String;

    goto :goto_0

    .line 222
    .end local v0    # "shareInfo":Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/t/a;->g:Lcom/jiliguala/niuwa/logic/t/a/a;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/t/a;->g:Lcom/jiliguala/niuwa/logic/t/a/a;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/logic/t/a/a;->b()V

    goto :goto_1

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;Landroid/support/v4/app/ag;)Z
    .locals 4
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    .param p2, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    const/4 v2, 0x1

    .line 132
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/b;->j()I

    move-result v1

    .line 133
    .local v1, "count":I
    if-eqz v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v2

    .line 136
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/t/b/a;->a()Lcom/jiliguala/niuwa/logic/t/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/t/b/a;->c()Z

    move-result v0

    .line 137
    .local v0, "canDownload":Z
    if-nez v0, :cond_0

    .line 140
    if-nez v0, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/t/a;->b(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;Landroid/support/v4/app/ag;)V

    .line 142
    const/4 v2, 0x0

    goto :goto_0
.end method

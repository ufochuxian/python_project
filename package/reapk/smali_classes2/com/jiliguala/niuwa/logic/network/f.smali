.class public Lcom/jiliguala/niuwa/logic/network/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/f$b;,
        Lcom/jiliguala/niuwa/logic/network/f$a;
    }
.end annotation


# static fields
.field public static a:Lcom/qiniu/auth/Authorizer; = null

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String; = "dev"

.field private static final e:Ljava/lang/String; = "prod"

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String; = "jlgl"


# instance fields
.field volatile b:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/jiliguala/niuwa/logic/network/f$b;

.field private k:Ljava/lang/String;

.field private l:Lrx/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/jiliguala/niuwa/logic/network/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/f;->c:Ljava/lang/String;

    .line 38
    sget-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "dev"

    :goto_0
    sput-object v0, Lcom/jiliguala/niuwa/logic/network/f;->f:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/qiniu/auth/Authorizer;

    invoke-direct {v0}, Lcom/qiniu/auth/Authorizer;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/f;->a:Lcom/qiniu/auth/Authorizer;

    return-void

    .line 38
    :cond_0
    const-string v0, "prod"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/f;->b:Z

    .line 46
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/f;->l:Lrx/i/b;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/network/f;Lcom/jiliguala/niuwa/logic/network/f$b;)Lcom/jiliguala/niuwa/logic/network/f$b;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/network/f;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/f$b;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/f;->j:Lcom/jiliguala/niuwa/logic/network/f$b;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 153
    .local v0, "bmpBytes":[B
    new-instance v2, Lcom/jiliguala/niuwa/common/util/r;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/common/util/r;-><init>()V

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/common/util/r;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "md5_str":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, ""

    .end local v1    # "md5_str":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "typeStr"    # Ljava/lang/String;
    .param p2, "fileNames"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jiliguala/niuwa/logic/network/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/f;->h:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/logic/network/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, p2, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a()Lrx/i/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/f;->l:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/f;->l:Lrx/i/b;

    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/f;->l:Lrx/i/b;

    return-object v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/network/f;)Lrx/i/b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/network/f;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/f;->l:Lrx/i/b;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/network/f;->a()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/network/f;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->s(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 60
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 61
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 62
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/logic/network/f$1;

    invoke-direct {v2, p0, p2}, Lcom/jiliguala/niuwa/logic/network/f$1;-><init>(Lcom/jiliguala/niuwa/logic/network/f;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 88
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 172
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/logic/network/f;->b:Z

    if-eqz v1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 175
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/logic/network/f;->b:Z

    .line 176
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/f;->i:Ljava/lang/String;

    .line 177
    .local v2, "key":Ljava/lang/String;
    new-instance v4, Lcom/qiniu/rs/PutExtra;

    invoke-direct {v4}, Lcom/qiniu/rs/PutExtra;-><init>()V

    .line 178
    .local v4, "extra":Lcom/qiniu/rs/PutExtra;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v4, Lcom/qiniu/rs/PutExtra;->params:Ljava/util/HashMap;

    .line 180
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 181
    .local v0, "context":Landroid/content/Context;
    sget-object v1, Lcom/jiliguala/niuwa/logic/network/f;->a:Lcom/qiniu/auth/Authorizer;

    new-instance v5, Lcom/jiliguala/niuwa/logic/network/f$2;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/logic/network/f$2;-><init>(Lcom/jiliguala/niuwa/logic/network/f;)V

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/qiniu/io/IO;->putFile(Landroid/content/Context;Lcom/qiniu/auth/Authorizer;Ljava/lang/String;Landroid/net/Uri;Lcom/qiniu/rs/PutExtra;Lcom/qiniu/rs/CallBack;)Lcom/qiniu/rs/UploadTaskExecutor;

    goto :goto_0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/network/f;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/network/f;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/network/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 162
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 163
    .local v0, "uri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/network/f;->a(Landroid/net/Uri;)V

    .line 164
    return-void
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/logic/network/f;)Lcom/jiliguala/niuwa/logic/network/f$b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/network/f;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/f;->j:Lcom/jiliguala/niuwa/logic/network/f$b;

    return-object v0
.end method

.method private b(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "type"    # I
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "typeStr":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 139
    :goto_0
    invoke-static {p2}, Lcom/jiliguala/niuwa/common/util/i;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "fileNames":[Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/jiliguala/niuwa/logic/network/f;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/logic/network/f;->i:Ljava/lang/String;

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/jiliguala/niuwa/logic/network/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/network/f;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "url":Ljava/lang/String;
    return-object v2

    .line 121
    .end local v0    # "fileNames":[Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :pswitch_0
    const-string v1, "avatar"

    .line 122
    goto :goto_0

    .line 124
    :pswitch_1
    const-string v1, "post"

    .line 125
    goto :goto_0

    .line 127
    :pswitch_2
    const-string v1, "user_bg"

    .line 128
    goto :goto_0

    .line 130
    :pswitch_3
    const-string v1, "audio_msg"

    .line 131
    goto :goto_0

    .line 133
    :pswitch_4
    const-string v1, "group/avatar"

    .line 134
    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 158
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/network/f;->a(Ljava/io/File;)V

    .line 159
    return-void
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/logic/network/f;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/network/f;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/f;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/f$b;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/jiliguala/niuwa/logic/network/f$b;

    .prologue
    .line 98
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/f;->h:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/network/f;->j:Lcom/jiliguala/niuwa/logic/network/f$b;

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/network/f;->a(ILjava/lang/String;)V

    .line 101
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/f$b;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "sectionID"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/jiliguala/niuwa/logic/network/f$b;

    .prologue
    .line 110
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/f;->h:Ljava/lang/String;

    .line 111
    iput-object p4, p0, Lcom/jiliguala/niuwa/logic/network/f;->j:Lcom/jiliguala/niuwa/logic/network/f$b;

    .line 112
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/network/f;->k:Ljava/lang/String;

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/network/f;->a(ILjava/lang/String;)V

    .line 114
    return-void
.end method

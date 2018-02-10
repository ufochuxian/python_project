.class public Lcom/jiliguala/niuwa/logic/login/push/a$a;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/login/push/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static a:Ljava/lang/String;


# instance fields
.field private b:Lrx/i/b;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/logic/login/push/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcn/jpush/android/api/TagAliasCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "push_register"

    sput-object v0, Lcom/jiliguala/niuwa/logic/login/push/a$a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/logic/login/push/a;)V
    .locals 1
    .param p1, "outRef"    # Lcom/jiliguala/niuwa/logic/login/push/a;

    .prologue
    .line 109
    sget-object v0, Lcom/jiliguala/niuwa/logic/login/push/a$a;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/jiliguala/niuwa/logic/login/push/a$a$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/logic/login/push/a$a$1;-><init>(Lcom/jiliguala/niuwa/logic/login/push/a$a;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/login/push/a$a;->d:Lcn/jpush/android/api/TagAliasCallback;

    .line 110
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/login/push/a$a;->c:Ljava/lang/ref/WeakReference;

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/login/push/a$a;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/login/push/a$a;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/push/a$a;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;
    .locals 5
    .param p1, "_id"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "jPushRegid"    # Ljava/lang/String;
    .param p4, "miPushRegid"    # Ljava/lang/String;
    .param p5, "tags"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 156
    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate;-><init>()V

    .line 157
    .local v2, "template":Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate;
    iput-object p1, v2, Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate;->_id:Ljava/lang/String;

    .line 158
    iput-object p2, v2, Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate;->alias:Ljava/lang/String;

    .line 159
    iput-object p5, v2, Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate;->tags:Ljava/lang/String;

    .line 160
    new-instance v3, Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate$RegIdPart;

    invoke-direct {v3}, Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate$RegIdPart;-><init>()V

    iput-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate;->regid:Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate$RegIdPart;

    .line 161
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->G()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    iget-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate;->regid:Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate$RegIdPart;

    iput-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate$RegIdPart;->jpush:Ljava/lang/String;

    .line 163
    iget-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate;->regid:Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate$RegIdPart;

    iput-object p4, v3, Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate$RegIdPart;->mipush:Ljava/lang/String;

    .line 168
    :goto_0
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 170
    .local v0, "body":Lokhttp3/ab;
    return-object v0

    .line 165
    .end local v0    # "body":Lokhttp3/ab;
    .end local v1    # "json":Ljava/lang/String;
    :cond_0
    iget-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate;->regid:Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate$RegIdPart;

    iput-object p3, v3, Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate$RegIdPart;->jpush:Ljava/lang/String;

    .line 166
    iget-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate;->regid:Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate$RegIdPart;

    iput-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/DeviceInfoTemplate$RegIdPart;->mipush:Ljava/lang/String;

    goto :goto_0
.end method

.method private a()Lrx/i/b;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/push/a$a;->b:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/login/push/a$a;->b:Lrx/i/b;

    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/push/a$a;->b:Lrx/i/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/login/push/a$a;->d:Lcn/jpush/android/api/TagAliasCallback;

    invoke-static {v0, p1, v1, v2}, Lcn/jpush/android/api/JPushInterface;->setAliasAndTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;)V

    .line 148
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/logic/login/push/a$a;)Lrx/i/b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/login/push/a$a;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/push/a$a;->b:Lrx/i/b;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->c()V

    .line 153
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 8
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/login/push/a$a;->a()Lrx/i/b;

    move-result-object v6

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v7

    .line 176
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->d()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/api/JPushInterface;->getRegistrationID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->d()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 176
    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/logic/login/push/a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 175
    invoke-interface {v7, v0}, Lcom/jiliguala/niuwa/logic/network/d;->r(Lokhttp3/ab;)Lrx/e;

    move-result-object v0

    .line 178
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 179
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 179
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/login/push/a$a$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/logic/login/push/a$a$2;-><init>(Lcom/jiliguala/niuwa/logic/login/push/a$a;)V

    invoke-virtual {v0, v1}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v0

    .line 175
    invoke-virtual {v6, v0}, Lrx/i/b;->a(Lrx/m;)V

    .line 197
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 120
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 140
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 122
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 125
    .local v0, "alias":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/login/push/a$a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/login/push/a$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v0    # "alias":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 137
    .restart local v0    # "alias":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/login/push/a$a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

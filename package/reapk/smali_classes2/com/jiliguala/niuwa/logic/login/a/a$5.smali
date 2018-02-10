.class Lcom/jiliguala/niuwa/logic/login/a/a$5;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/login/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/login/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jiliguala/niuwa/logic/login/a/a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/login/a/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/login/a/a;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/login/a/a$5;->c:Lcom/jiliguala/niuwa/logic/login/a/a;

    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/login/a/a$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/login/a/a$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 6
    .param p1, "userInfo"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v5, 0x1002

    invoke-direct {v4, v5}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 287
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/login/a/a$5;->a:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/login/a/a$5;->a:Ljava/lang/String;

    const-string v4, "wechatcode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 220
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->access_token:Ljava/lang/String;

    iput-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->userInfoSegP:Ljava/lang/String;

    .line 221
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    const-string v4, "wechattoken"

    iput-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->userInfoSegType:Ljava/lang/String;

    .line 226
    :goto_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/jiliguala/niuwa/logic/login/a;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    .line 228
    const-string v2, ""

    .line 229
    .local v2, "type":Ljava/lang/String;
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->typ:Ljava/lang/String;

    const-string v4, "wechat"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 230
    const-string v2, "WeChat"

    .line 231
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Account"

    const-string v5, "Weixin"

    .line 232
    invoke-virtual {v3, v4, v5}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_1
    :goto_2
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-boolean v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->isNew:Z

    if-eqz v3, :cond_b

    .line 256
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Sign Up"

    invoke-static {v3, v4, v0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 261
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 262
    .local v1, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "Type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Sign Up"

    .line 264
    invoke-virtual {v3, v4, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 278
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/login/a/a$5;->c:Lcom/jiliguala/niuwa/logic/login/a/a;

    invoke-static {v3}, Lcom/jiliguala/niuwa/logic/login/a/a;->b(Lcom/jiliguala/niuwa/logic/login/a/a;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 279
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/login/a/a$5;->c:Lcom/jiliguala/niuwa/logic/login/a/a;

    invoke-static {v3}, Lcom/jiliguala/niuwa/logic/login/a/a;->c(Lcom/jiliguala/niuwa/logic/login/a/a;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/login/a/b;

    invoke-interface {v3}, Lcom/jiliguala/niuwa/logic/login/a/b;->a()V

    .line 282
    :cond_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/login/a/a$5;->c:Lcom/jiliguala/niuwa/logic/login/a/a;

    invoke-static {v3}, Lcom/jiliguala/niuwa/logic/login/a/a;->d(Lcom/jiliguala/niuwa/logic/login/a/a;)V

    .line 284
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v5, 0x1001

    invoke-direct {v4, v5}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 286
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->e()V

    goto/16 :goto_0

    .line 223
    .end local v2    # "type":Ljava/lang/String;
    :cond_4
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/login/a/a$5;->b:Ljava/lang/String;

    iput-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->userInfoSegP:Ljava/lang/String;

    .line 224
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/login/a/a$5;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->userInfoSegType:Ljava/lang/String;

    goto/16 :goto_1

    .line 233
    .restart local v2    # "type":Ljava/lang/String;
    :cond_5
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->typ:Ljava/lang/String;

    const-string v4, "weibo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 234
    const-string v2, "Weibo"

    .line 235
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Account"

    const-string v5, "Weibo"

    .line 236
    invoke-virtual {v3, v4, v5}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 237
    :cond_6
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->typ:Ljava/lang/String;

    const-string v4, "qq"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 238
    const-string v2, "QQ"

    .line 239
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Account"

    const-string v5, "QQ"

    invoke-virtual {v3, v4, v5}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 240
    :cond_7
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->typ:Ljava/lang/String;

    const-string v4, "email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 241
    const-string v2, "Email"

    .line 242
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Account"

    const-string v5, "Email"

    .line 243
    invoke-virtual {v3, v4, v5}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 244
    :cond_8
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->typ:Ljava/lang/String;

    const-string v4, "mobile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 245
    const-string v2, "Mobile"

    .line 246
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Account"

    const-string v5, "Mobile"

    invoke-virtual {v3, v4, v5}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 247
    :cond_9
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->typ:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "guest"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 248
    const-string v2, "Guest"

    .line 249
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Account"

    invoke-virtual {v3, v4, v2}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 250
    :cond_a
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->typ:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobilecode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    const-string v2, "mobilecode"

    .line 252
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Account"

    invoke-virtual {v3, v4, v2}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 267
    :cond_b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 269
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Sign In"

    invoke-static {v3, v4, v0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 272
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 273
    .restart local v1    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "Type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Sign In"

    .line 275
    invoke-virtual {v3, v4, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_3
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/login/a/a$5;->c:Lcom/jiliguala/niuwa/logic/login/a/a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/login/a/a;->a(Lcom/jiliguala/niuwa/logic/login/a/a;)Lrx/i/b;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 196
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 200
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a/a$5;->c:Lcom/jiliguala/niuwa/logic/login/a/a;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/login/a/a;->b(Lcom/jiliguala/niuwa/logic/login/a/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/logic/network/g;->a(Ljava/lang/Throwable;)Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;

    move-result-object v0

    .line 202
    .local v0, "rsp":Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;
    if-eqz v0, :cond_1

    .line 203
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a/a$5;->c:Lcom/jiliguala/niuwa/logic/login/a/a;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/login/a/a;->c(Lcom/jiliguala/niuwa/logic/login/a/a;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/login/a/b;

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;->msg:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/login/a/b;->a(Ljava/lang/String;)V

    .line 208
    .end local v0    # "rsp":Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v3, 0x1002

    invoke-direct {v2, v3}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 209
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a/a$5;->c:Lcom/jiliguala/niuwa/logic/login/a/a;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/login/a/a;->a(Lcom/jiliguala/niuwa/logic/login/a/a;)Lrx/i/b;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 210
    return-void

    .line 205
    .restart local v0    # "rsp":Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/login/a/a$5;->c:Lcom/jiliguala/niuwa/logic/login/a/a;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/login/a/a;->c(Lcom/jiliguala/niuwa/logic/login/a/a;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/login/a/b;

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/login/a/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 192
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/login/a/a$5;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    return-void
.end method

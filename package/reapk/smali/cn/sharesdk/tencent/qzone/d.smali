.class public Lcn/sharesdk/tencent/qzone/d;
.super Lcom/mob/tools/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcn/sharesdk/framework/PlatformActionListener;

.field private d:Lcn/sharesdk/framework/authorize/RegisterView;

.field private e:Landroid/webkit/WebView;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mob/tools/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qzone/d;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qzone/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcn/sharesdk/tencent/qzone/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b()Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    .line 73
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    .line 72
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 74
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "QZoneWebShareAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 89
    :goto_0
    return-object v0

    .line 79
    :cond_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 81
    instance-of v2, v0, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-nez v2, :cond_2

    move-object v0, v1

    .line 82
    goto :goto_0

    .line 85
    :cond_2
    check-cast v0, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 89
    goto :goto_0
.end method

.method static synthetic b(Lcn/sharesdk/tencent/qzone/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/sharesdk/tencent/qzone/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcn/sharesdk/tencent/qzone/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 233
    if-nez p1, :cond_0

    const-string v0, ""

    .line 234
    :goto_0
    invoke-static {p1}, Lcom/mob/tools/c/l;->e(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 235
    if-nez v1, :cond_1

    .line 236
    iput-boolean v4, p0, Lcn/sharesdk/tencent/qzone/d;->h:Z

    .line 237
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 238
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to parse callback uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6, v5, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 273
    :goto_1
    return-void

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_1
    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 243
    const-string v3, "share"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "shareToQzone"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 244
    iput-boolean v4, p0, Lcn/sharesdk/tencent/qzone/d;->h:Z

    .line 245
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 246
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6, v5, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_1

    .line 250
    :cond_2
    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    const-string v3, "cancel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 252
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 253
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, v6, v5}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_1

    .line 255
    :cond_3
    const-string v3, "complete"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 256
    iput-boolean v4, p0, Lcn/sharesdk/tencent/qzone/d;->h:Z

    .line 257
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 258
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operation failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6, v5, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_1

    .line 262
    :cond_4
    const-string v2, "response"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 264
    iput-boolean v4, p0, Lcn/sharesdk/tencent/qzone/d;->h:Z

    .line 265
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 266
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response empty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6, v5, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_1

    .line 270
    :cond_5
    iput-boolean v4, p0, Lcn/sharesdk/tencent/qzone/d;->g:Z

    .line 271
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 272
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Lcom/mob/tools/c/g;

    invoke-direct {v2}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v2, v1}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v6, v5, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto/16 :goto_1
.end method

.method private c()V
    .locals 4

    .prologue
    .line 138
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 140
    const-string v1, "pkg_name"

    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 144
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    :cond_0
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 148
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->f:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/mob/tools/a;->registerExecutor(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 276
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 280
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 286
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 287
    invoke-virtual {p0, v1}, Lcn/sharesdk/tencent/qzone/d;->startActivity(Landroid/content/Intent;)V

    .line 289
    :cond_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 284
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 158
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->a()Lcn/sharesdk/framework/authorize/RegisterView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    .line 160
    :try_start_0
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_share_to_qzone"

    invoke-static {v0, v1}, Lcom/mob/tools/c/l;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 161
    if-lez v0, :cond_0

    .line 162
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->d()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->setBodyView(Landroid/widget/RelativeLayout;)V

    .line 170
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->setWebView(Landroid/webkit/WebView;)V

    .line 171
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->setTitleView(Lcn/sharesdk/framework/TitleLayout;)V

    .line 172
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onCreate()V

    .line 173
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v0

    .line 176
    const-string v1, "none"

    invoke-virtual {v0}, Lcom/mob/tools/c/e;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/tencent/qzone/d;->h:Z

    .line 178
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 179
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "failed to load webpage, network disconnected."

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 184
    :goto_1
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 166
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/TitleLayout;->setVisibility(I)V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected a()Lcn/sharesdk/framework/authorize/RegisterView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 187
    new-instance v0, Lcn/sharesdk/framework/authorize/RegisterView;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/sharesdk/framework/authorize/RegisterView;-><init>(Landroid/content/Context;)V

    .line 188
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getChildCount()I

    move-result v1

    .line 189
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/TitleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 190
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->a()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcn/sharesdk/tencent/qzone/d$1;

    invoke-direct {v2, p0}, Lcn/sharesdk/tencent/qzone/d$1;-><init>(Lcn/sharesdk/tencent/qzone/d;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->e:Landroid/webkit/WebView;

    .line 207
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->e:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 208
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 209
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 210
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 211
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 212
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 213
    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    const-string v3, "database"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 216
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 217
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 218
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->e:Landroid/webkit/WebView;

    new-instance v2, Lcn/sharesdk/tencent/qzone/d$2;

    invoke-direct {v2, p0}, Lcn/sharesdk/tencent/qzone/d$2;-><init>(Lcn/sharesdk/tencent/qzone/d;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 228
    return-object v0
.end method

.method public a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    .line 52
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tencent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->f:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/d;->a:Ljava/lang/String;

    .line 47
    iput-boolean p2, p0, Lcn/sharesdk/tencent/qzone/d;->b:Z

    .line 48
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x9

    .line 93
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 99
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/l;->e(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 100
    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string v2, "action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 102
    const-string v3, "shareToQQ"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "shareToQzone"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    :cond_0
    const-string v2, "complete"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1

    .line 105
    const-string v1, "response"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v1, Lcom/mob/tools/c/g;

    invoke-direct {v1}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, v5, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 122
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    const-class v2, Lcom/mob/tools/MobUIShell;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 124
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Lcn/sharesdk/tencent/qzone/d;->startActivity(Landroid/content/Intent;)V

    .line 134
    :goto_1
    return-void

    .line 109
    :cond_2
    const-string v2, "error"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_1

    .line 111
    const-string v1, "response"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, v5, v4, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_0

    .line 116
    :cond_3
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, v5, v4}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_0

    .line 128
    :cond_4
    iget-boolean v0, p0, Lcn/sharesdk/tencent/qzone/d;->b:Z

    if-eqz v0, :cond_5

    .line 129
    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/d;->c()V

    goto :goto_1

    .line 131
    :cond_5
    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/d;->d()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 322
    iget-boolean v0, p0, Lcn/sharesdk/tencent/qzone/d;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/sharesdk/tencent/qzone/d;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/sharesdk/tencent/qzone/d;->g:Z

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onDestroy()V

    .line 328
    :cond_1
    return-void
.end method

.method public onFinish()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onFinish()Z

    move-result v0

    .line 334
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/mob/tools/a;->onFinish()Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onPause()V

    .line 301
    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onRestart()V

    .line 319
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onResume()V

    .line 307
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onStart()V

    .line 295
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onStop()V

    .line 313
    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/mob/tools/a;->setActivity(Landroid/app/Activity;)V

    .line 61
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-nez v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/d;->b()Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    .line 63
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-direct {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    .line 67
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-virtual {v0, p1}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->setActivity(Landroid/app/Activity;)V

    .line 68
    return-void
.end method

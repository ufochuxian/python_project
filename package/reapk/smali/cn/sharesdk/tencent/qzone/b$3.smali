.class Lcn/sharesdk/tencent/qzone/b$3;
.super Lcom/mob/tools/RxMob$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qzone/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qzone/b;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/b;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/b$3;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b$3;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/b;->c(Lcn/sharesdk/tencent/qzone/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b$3;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/b;->c(Lcn/sharesdk/tencent/qzone/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b$3;->a:Lcn/sharesdk/tencent/qzone/b;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/b$3;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/b;->c(Lcn/sharesdk/tencent/qzone/b;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "callback( "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/sharesdk/tencent/qzone/b;->a(Lcn/sharesdk/tencent/qzone/b;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b$3;->a:Lcn/sharesdk/tencent/qzone/b;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/b$3;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/b;->c(Lcn/sharesdk/tencent/qzone/b;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " );"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/sharesdk/tencent/qzone/b;->a(Lcn/sharesdk/tencent/qzone/b;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    new-instance v0, Lcom/mob/tools/c/g;

    invoke-direct {v0}, Lcom/mob/tools/c/g;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/b$3;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/b;->c(Lcn/sharesdk/tencent/qzone/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 191
    const-string v1, "unionid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    const-string v1, "unionid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/b$3;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/b;->d(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    const-string v2, "unionid"

    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b$3;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/b;->e(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "unionid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 201
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/b$3;->a:Lcn/sharesdk/tencent/qzone/b;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/b;->f(Lcn/sharesdk/tencent/qzone/b;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "unionid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v0

    const-string v1, "qq auth, get unionId fail"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 203
    return-void
.end method

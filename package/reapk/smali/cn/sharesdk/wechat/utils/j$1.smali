.class Lcn/sharesdk/wechat/utils/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/wechat/utils/j;->a(Lcn/sharesdk/wechat/utils/i;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/mob/tools/c/e;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcn/sharesdk/framework/PlatformActionListener;

.field final synthetic e:Lcn/sharesdk/framework/Platform;

.field final synthetic f:Ljava/util/HashMap;

.field final synthetic g:Lcn/sharesdk/wechat/utils/j;


# direct methods
.method constructor <init>(Lcn/sharesdk/wechat/utils/j;Lcom/mob/tools/c/e;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform;Ljava/util/HashMap;)V
    .locals 1

    .prologue
    .line 151
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/j$1;->g:Lcn/sharesdk/wechat/utils/j;

    iput-object p2, p0, Lcn/sharesdk/wechat/utils/j$1;->b:Lcom/mob/tools/c/e;

    iput-object p3, p0, Lcn/sharesdk/wechat/utils/j$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/sharesdk/wechat/utils/j$1;->d:Lcn/sharesdk/framework/PlatformActionListener;

    iput-object p5, p0, Lcn/sharesdk/wechat/utils/j$1;->e:Lcn/sharesdk/framework/Platform;

    iput-object p6, p0, Lcn/sharesdk/wechat/utils/j$1;->f:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcn/sharesdk/wechat/utils/j$1;->a:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 154
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j$1;->b:Lcom/mob/tools/c/e;

    invoke-virtual {v0}, Lcom/mob/tools/c/e;->L()Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/j$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j$1;->d:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/j$1;->d:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/j$1;->e:Lcn/sharesdk/framework/Platform;

    const/16 v2, 0x9

    iget-object v3, p0, Lcn/sharesdk/wechat/utils/j$1;->f:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 165
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_1
    iget v0, p0, Lcn/sharesdk/wechat/utils/j$1;->a:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 161
    iget v0, p0, Lcn/sharesdk/wechat/utils/j$1;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/sharesdk/wechat/utils/j$1;->a:I

    .line 162
    const/4 v0, 0x0

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3, p0}, Lcom/mob/tools/c/o;->b(IJLandroid/os/Handler$Callback;)Z

    goto :goto_0
.end method

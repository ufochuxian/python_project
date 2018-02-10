.class Lcn/sharesdk/sina/weibo/e$3;
.super Lcom/mob/tools/RxMob$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/e;->b()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/RxMob$d",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/e;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/e;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/e$3;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Lcom/mob/tools/RxMob$d;->a()V

    .line 179
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 168
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/sharesdk/sina/weibo/e$3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e$3;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/e;->c(Lcn/sharesdk/sina/weibo/e;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/e$3;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-static {v1, p1}, Lcn/sharesdk/sina/weibo/e;->b(Lcn/sharesdk/sina/weibo/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 182
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    .line 183
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e$3;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/e;->c(Lcn/sharesdk/sina/weibo/e;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/e$3;->a:Lcn/sharesdk/sina/weibo/e;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/sharesdk/sina/weibo/e;->b(Lcn/sharesdk/sina/weibo/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Lcom/mob/tools/RxMob$d;->b()V

    .line 171
    return-void
.end method

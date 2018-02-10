.class Lcn/sharesdk/sina/weibo/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/RxMob$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/d;->c()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mob/tools/RxMob$a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/d;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/d$2;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/RxMob$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$d",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "subscriber":Lcom/mob/tools/RxMob$d;, "Lcom/mob/tools/RxMob$d<Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d$2;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/d;->c(Lcn/sharesdk/sina/weibo/d;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/d$2;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/d;->e(Lcn/sharesdk/sina/weibo/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Lcom/mob/tools/RxMob$d;->a()V

    .line 172
    return-void
.end method

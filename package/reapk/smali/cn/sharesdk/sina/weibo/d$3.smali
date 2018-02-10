.class Lcn/sharesdk/sina/weibo/d$3;
.super Lcom/mob/tools/RxMob$d;
.source "SourceFile"


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
        "Lcom/mob/tools/RxMob$d",
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
    .line 176
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/d$3;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Lcom/mob/tools/RxMob$d;->a()V

    .line 180
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 183
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 184
    return-void
.end method

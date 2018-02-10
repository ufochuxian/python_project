.class Lcn/sharesdk/sina/weibo/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/RxMob$a;


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
        "Ljava/lang/Object;",
        "Lcom/mob/tools/RxMob$a",
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
    .line 160
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/e$2;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/RxMob$d;)V
    .locals 1
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
    .line 162
    .local p1, "subscriber":Lcom/mob/tools/RxMob$d;, "Lcom/mob/tools/RxMob$d<Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e$2;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/e;->d(Lcn/sharesdk/sina/weibo/e;)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {p1, v0}, Lcom/mob/tools/RxMob$d;->a(Ljava/lang/Object;)V

    .line 164
    return-void
.end method

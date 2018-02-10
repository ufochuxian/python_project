.class Lcom/jiliguala/niuwa/module/video/VideoActivity$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/VideoActivity;->updateFavImg(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/video/VideoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 3162
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$17;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$17;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3165
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3166
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/e;->a()Lcom/jiliguala/niuwa/logic/k/e;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$17;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/e;->b(Ljava/lang/String;)Z

    move-result v0

    .line 3167
    .local v0, "isFav":Z
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$17;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updateFavIcon(Z)V

    .line 3171
    .end local v0    # "isFav":Z
    :goto_0
    return-void

    .line 3169
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$17;->b:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->updateFavIcon(Z)V

    goto :goto_0
.end method

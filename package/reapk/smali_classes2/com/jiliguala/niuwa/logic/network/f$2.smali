.class Lcom/jiliguala/niuwa/logic/network/f$2;
.super Lcom/qiniu/rs/CallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/network/f;->a(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/f;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/network/f;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/network/f;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/f$2;->a:Lcom/jiliguala/niuwa/logic/network/f;

    invoke-direct {p0}, Lcom/qiniu/rs/CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/qiniu/rs/CallRet;)V
    .locals 2
    .param p1, "ret"    # Lcom/qiniu/rs/CallRet;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/f$2;->a:Lcom/jiliguala/niuwa/logic/network/f;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/logic/network/f;->c:Z

    .line 228
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/f$2;->a:Lcom/jiliguala/niuwa/logic/network/f;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/network/f;->b(Lcom/jiliguala/niuwa/logic/network/f;)Lcom/jiliguala/niuwa/logic/network/f$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/f$2;->a:Lcom/jiliguala/niuwa/logic/network/f;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/network/f;->b(Lcom/jiliguala/niuwa/logic/network/f;)Lcom/jiliguala/niuwa/logic/network/f$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/logic/network/f$b;->onFailed()V

    .line 230
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/f$2;->a:Lcom/jiliguala/niuwa/logic/network/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/network/f;->a(Lcom/jiliguala/niuwa/logic/network/f;Lcom/jiliguala/niuwa/logic/network/f$b;)Lcom/jiliguala/niuwa/logic/network/f$b;

    .line 233
    :cond_0
    return-void
.end method

.method public onProcess(JJ)V
    .locals 5
    .param p1, "current"    # J
    .param p3, "total"    # J

    .prologue
    .line 195
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    div-long/2addr v2, p3

    long-to-int v0, v2

    .line 198
    .local v0, "percent":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/f$2;->a:Lcom/jiliguala/niuwa/logic/network/f;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/f;->b(Lcom/jiliguala/niuwa/logic/network/f;)Lcom/jiliguala/niuwa/logic/network/f$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/f$2;->a:Lcom/jiliguala/niuwa/logic/network/f;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/f;->b(Lcom/jiliguala/niuwa/logic/network/f;)Lcom/jiliguala/niuwa/logic/network/f$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/logic/network/f$b;->onProgress(I)V

    .line 201
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/qiniu/rs/UploadCallRet;)V
    .locals 4
    .param p1, "ret"    # Lcom/qiniu/rs/UploadCallRet;

    .prologue
    .line 205
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/f$2;->a:Lcom/jiliguala/niuwa/logic/network/f;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/jiliguala/niuwa/logic/network/f;->c:Z

    .line 206
    invoke-virtual {p1}, Lcom/qiniu/rs/UploadCallRet;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://qiniu.jiliguala.com/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "redirect":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/f$2;->a:Lcom/jiliguala/niuwa/logic/network/f;

    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/f;->b(Lcom/jiliguala/niuwa/logic/network/f;)Lcom/jiliguala/niuwa/logic/network/f$b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/f$2;->a:Lcom/jiliguala/niuwa/logic/network/f;

    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/f;->c(Lcom/jiliguala/niuwa/logic/network/f;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/f$2;->a:Lcom/jiliguala/niuwa/logic/network/f;

    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/f;->b(Lcom/jiliguala/niuwa/logic/network/f;)Lcom/jiliguala/niuwa/logic/network/f$b;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/jiliguala/niuwa/logic/network/f$b;->onSucceed(Ljava/lang/String;)V

    .line 219
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/f$2;->a:Lcom/jiliguala/niuwa/logic/network/f;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/logic/network/f;->a(Lcom/jiliguala/niuwa/logic/network/f;Lcom/jiliguala/niuwa/logic/network/f$b;)Lcom/jiliguala/niuwa/logic/network/f$b;

    .line 222
    :cond_0
    return-void

    .line 217
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/f$2;->a:Lcom/jiliguala/niuwa/logic/network/f;

    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/f;->b(Lcom/jiliguala/niuwa/logic/network/f;)Lcom/jiliguala/niuwa/logic/network/f$b;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/network/f$2;->a:Lcom/jiliguala/niuwa/logic/network/f;

    invoke-static {v3}, Lcom/jiliguala/niuwa/logic/network/f;->c(Lcom/jiliguala/niuwa/logic/network/f;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/jiliguala/niuwa/logic/network/f$b;->onSucceed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

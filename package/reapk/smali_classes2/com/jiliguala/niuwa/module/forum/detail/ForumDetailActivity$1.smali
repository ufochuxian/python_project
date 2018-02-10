.class Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->performFavPost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 252
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->updateFavIcon(Z)V

    .line 253
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 247
    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 239
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$1;->a(Ljava/lang/Void;)V

    return-void
.end method

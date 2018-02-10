.class Lcom/jiliguala/niuwa/logic/t/a$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/t/a;->a(Landroid/support/v4/app/ag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/ag;

.field final synthetic b:Lcom/jiliguala/niuwa/logic/t/a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/t/a;Landroid/support/v4/app/ag;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/t/a;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/t/a$1;->b:Lcom/jiliguala/niuwa/logic/t/a;

    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/t/a$1;->a:Landroid/support/v4/app/ag;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;)V
    .locals 2
    .param p1, "shareInfoTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    .prologue
    .line 85
    if-eqz p1, :cond_1

    .line 86
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate$DataPart;->uuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/t/a$1;->b:Lcom/jiliguala/niuwa/logic/t/a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/t/a$1;->a:Landroid/support/v4/app/ag;

    invoke-static {v0, p1, v1}, Lcom/jiliguala/niuwa/logic/t/a;->a(Lcom/jiliguala/niuwa/logic/t/a;Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;Landroid/support/v4/app/ag;)V

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/t/a$1;->b:Lcom/jiliguala/niuwa/logic/t/a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/t/a;->b(Lcom/jiliguala/niuwa/logic/t/a;)Lcom/jiliguala/niuwa/logic/t/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/logic/t/a/a;->b()V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/t/a$1;->b:Lcom/jiliguala/niuwa/logic/t/a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/t/a;->b(Lcom/jiliguala/niuwa/logic/t/a;)Lcom/jiliguala/niuwa/logic/t/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/logic/t/a/a;->b()V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/t/a$1;->b:Lcom/jiliguala/niuwa/logic/t/a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/t/a;->a(Lcom/jiliguala/niuwa/logic/t/a;)Lrx/i/b;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 74
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/t/a$1;->b:Lcom/jiliguala/niuwa/logic/t/a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/t/a;->b(Lcom/jiliguala/niuwa/logic/t/a;)Lcom/jiliguala/niuwa/logic/t/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/t/a$1;->b:Lcom/jiliguala/niuwa/logic/t/a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/t/a;->b(Lcom/jiliguala/niuwa/logic/t/a;)Lcom/jiliguala/niuwa/logic/t/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/logic/t/a/a;->b()V

    .line 81
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 70
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/t/a$1;->a(Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplate;)V

    return-void
.end method

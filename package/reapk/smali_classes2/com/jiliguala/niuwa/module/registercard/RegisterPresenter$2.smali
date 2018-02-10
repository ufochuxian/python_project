.class Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->addEventObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Lcom/jiliguala/niuwa/logic/b/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$2;->a:Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/a;)V
    .locals 4
    .param p1, "loginEvent"    # Lcom/jiliguala/niuwa/logic/b/a/a;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 67
    iget v1, p1, Lcom/jiliguala/niuwa/logic/b/a/a;->a:I

    sparse-switch v1, :sswitch_data_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 69
    :sswitch_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/b/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "from":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jiliguala/niuwa/logic/network/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/api/clockin/record"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$2;->a:Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    invoke-static {v1, v3}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->access$002(Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;Z)Z

    .line 74
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$2;->a:Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$2;->a:Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/registercard/RegisterView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/registercard/RegisterView;->goToMobilePage()V

    goto :goto_0

    .line 80
    .end local v0    # "from":Ljava/lang/String;
    :sswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$2;->a:Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->access$002(Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;Z)Z

    .line 81
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$2;->a:Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->requestServer()V

    goto :goto_0

    .line 85
    :sswitch_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$2;->a:Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    invoke-static {v1, v3}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->access$002(Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;Z)Z

    .line 86
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$2;->a:Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$2;->a:Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/registercard/RegisterView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/registercard/RegisterView;->goToWxBind()V

    goto :goto_0

    .line 91
    :sswitch_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$2;->a:Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->access$002(Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;Z)Z

    .line 92
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$2;->a:Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->requestServer()V

    goto :goto_0

    .line 67
    nop

    :sswitch_data_0
    .sparse-switch
        0x1015 -> :sswitch_3
        0x1024 -> :sswitch_0
        0x1032 -> :sswitch_1
        0x1035 -> :sswitch_2
    .end sparse-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$2;->a(Lcom/jiliguala/niuwa/logic/b/a/a;)V

    return-void
.end method

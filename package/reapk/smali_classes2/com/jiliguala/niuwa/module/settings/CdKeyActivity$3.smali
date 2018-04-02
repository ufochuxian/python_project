.class Lcom/jiliguala/niuwa/module/settings/CdKeyActivity$3;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->onExchange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity$3;->a:Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/JsonObject;)V
    .locals 2
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .line 166
    const-string v0, "\u5151\u6362\u6210\u529f"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity$3;->a:Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->access$100(Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;Z)V

    .line 169
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity$3;->a:Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->access$100(Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;Z)V

    .line 161
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 152
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity$3;->a(Lcom/google/gson/JsonObject;)V

    return-void
.end method

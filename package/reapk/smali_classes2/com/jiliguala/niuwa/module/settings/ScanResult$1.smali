.class Lcom/jiliguala/niuwa/module/settings/ScanResult$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/ScanResult;->reportResultToServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/TVLoginModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/ScanResult;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/ScanResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/ScanResult;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/ScanResult$1;->a:Lcom/jiliguala/niuwa/module/settings/ScanResult;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/TVLoginModel;)V
    .locals 1
    .param p1, "tvLoginModel"    # Lcom/jiliguala/niuwa/logic/network/json/TVLoginModel;

    .prologue
    .line 97
    const-string v0, "\u626b\u7801\u767b\u5f55\u6210\u529f"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 93
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 84
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/TVLoginModel;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/settings/ScanResult$1;->a(Lcom/jiliguala/niuwa/logic/network/json/TVLoginModel;)V

    return-void
.end method

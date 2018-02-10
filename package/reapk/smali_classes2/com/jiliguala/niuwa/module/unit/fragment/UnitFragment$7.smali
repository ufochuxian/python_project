.class Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$7;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->shareComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$7;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 1
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    .line 1462
    if-eqz p1, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$7;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->notifyData(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    .line 1465
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 1453
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1458
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1449
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$7;->a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    return-void
.end method

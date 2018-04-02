.class Lcom/jiliguala/niuwa/module/game/GameActivity$3;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/game/GameActivity;->doRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/game/GameActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/game/GameActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/game/GameActivity;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$3;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;)V
    .locals 1
    .param p1, "gameTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity$3;->a:Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getPackageSuccess(Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;)V

    .line 298
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 293
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 284
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/game/GameActivity$3;->a(Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;)V

    return-void
.end method

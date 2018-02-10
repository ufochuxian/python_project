.class Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->bingo()V
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 4
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->access$300(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->access$300(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6$1;-><init>(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->access$300(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->access$300(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->onBackPressed()V

    .line 314
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->access$400(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)V

    .line 316
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 303
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$6;->a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    return-void
.end method

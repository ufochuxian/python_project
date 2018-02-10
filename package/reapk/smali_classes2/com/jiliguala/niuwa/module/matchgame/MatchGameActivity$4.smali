.class Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$4;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->requestExam()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate;",
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
    .line 131
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$4;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate;)V
    .locals 2
    .param p1, "matchGameTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate;

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$4;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$DataPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$DataPart;->questions:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->access$002(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 146
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$4;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->access$100(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$4;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->access$000(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;->updateData(Ljava/util/ArrayList;)V

    .line 147
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$4;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->access$100(Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;)Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;->notifyDataSetChanged()V

    .line 148
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$4;->a:Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity;->onPageSelected(I)V

    .line 150
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 140
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 131
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/matchgame/MatchGameActivity$4;->a(Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate;)V

    return-void
.end method

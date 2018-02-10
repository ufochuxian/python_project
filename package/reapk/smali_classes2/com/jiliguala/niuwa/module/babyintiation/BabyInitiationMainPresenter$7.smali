.class Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->addEventObserver()V
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
        "Lcom/jiliguala/niuwa/logic/b/a/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$7;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/j;)V
    .locals 2
    .param p1, "event"    # Lcom/jiliguala/niuwa/logic/b/a/j;

    .prologue
    .line 223
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/j;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 231
    :goto_0
    return-void

    .line 225
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$7;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/b/a/j;->a()Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;->showTreasure(Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;)V

    goto :goto_0

    .line 228
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$7;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->access$500(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;Lcom/jiliguala/niuwa/logic/b/a/j;)V

    goto :goto_0

    .line 223
    :sswitch_data_0
    .sparse-switch
        0x1021 -> :sswitch_0
        0x1041 -> :sswitch_1
    .end sparse-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 220
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/j;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$7;->a(Lcom/jiliguala/niuwa/logic/b/a/j;)V

    return-void
.end method

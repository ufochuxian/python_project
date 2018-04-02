.class Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$9;
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
        "Lcom/jiliguala/niuwa/logic/b/a/c;",
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
    .line 239
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$9;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/c;)V
    .locals 3
    .param p1, "classRoomEvent"    # Lcom/jiliguala/niuwa/logic/b/a/c;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$9;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/b/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/b/a/c;->b()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;->showClassRoom(Ljava/lang/String;Z)V

    .line 243
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 239
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/c;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$9;->a(Lcom/jiliguala/niuwa/logic/b/a/c;)V

    return-void
.end method

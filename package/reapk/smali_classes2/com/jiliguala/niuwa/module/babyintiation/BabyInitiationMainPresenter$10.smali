.class Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$10;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->postShareGiftResultToServer(Lcom/jiliguala/niuwa/logic/b/a/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/PostBaseResult;",
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
    .line 258
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$10;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/PostBaseResult;)V
    .locals 0
    .param p1, "result"    # Lcom/jiliguala/niuwa/logic/network/json/PostBaseResult;

    .prologue
    .line 272
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 267
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 258
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/PostBaseResult;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$10;->a(Lcom/jiliguala/niuwa/logic/network/json/PostBaseResult;)V

    return-void
.end method

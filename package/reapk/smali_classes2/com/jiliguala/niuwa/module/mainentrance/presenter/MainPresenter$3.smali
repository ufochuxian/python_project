.class Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$3;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->doRequestGlobe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$3;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;)V
    .locals 1
    .param p1, "globeTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    .prologue
    .line 263
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;

    iget v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;->speakmode:I

    sput v0, Lcom/jiliguala/niuwa/MyApplication;->speakmode:I

    .line 265
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$3;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$200(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;Ljava/lang/Object;)V

    .line 267
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 258
    const/4 v0, 0x0

    const-string v1, "UPDATE_DIALOG"

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->addDialogToChain(Landroid/app/Dialog;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 247
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$3;->a(Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;)V

    return-void
.end method

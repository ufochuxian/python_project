.class Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$11;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->confirmUnFavThisSong(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$11;->a:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 1195
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 1185
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1190
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1181
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$11;->a(Ljava/lang/Void;)V

    return-void
.end method
.class Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->getObserver()Lrx/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/f",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper$2;->a:Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper$2;->a:Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->access$000(Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;)Lcom/nostra13/universalimageloader/core/assist/c;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;)V

    .line 142
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 136
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 126
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper$2;->a(Ljava/lang/String;)V

    return-void
.end method

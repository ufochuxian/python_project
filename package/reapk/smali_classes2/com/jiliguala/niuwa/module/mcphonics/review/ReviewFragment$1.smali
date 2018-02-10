.class Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->requestServer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment$1;->b:Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;

    iput-boolean p2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment$1;->a:Z

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate;)V
    .locals 3
    .param p1, "reviewsTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate;

    .prologue
    .line 163
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment$1;->b:Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment$1;->a:Z

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->access$000(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate$Data;Z)V

    .line 166
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 159
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 150
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment$1;->a(Lcom/jiliguala/niuwa/logic/network/json/ReviewsTemplate;)V

    return-void
.end method

.class Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->requestServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/SystemCourseTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/SystemCourseTemplate;)V
    .locals 2
    .param p1, "template"    # Lcom/jiliguala/niuwa/logic/network/json/SystemCourseTemplate;

    .prologue
    .line 158
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/SystemCourseTemplate;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->access$100(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;)Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/SystemCourseTemplate;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->updateData(Ljava/util/List;)V

    .line 160
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->access$100(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;)Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->updateMember()V

    .line 161
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->access$100(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;)Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->notifyDataSetChanged()V

    .line 163
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 154
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 144
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/SystemCourseTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment$2;->a(Lcom/jiliguala/niuwa/logic/network/json/SystemCourseTemplate;)V

    return-void
.end method

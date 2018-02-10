.class Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment$3;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;",
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
    .line 180
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment$3;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 3
    .param p1, "userInfoTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    .line 193
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->membership:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment$3;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->membership:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;->status:Ljava/lang/String;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->membership:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$Membership;->duets:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->access$200(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment$3;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->access$100(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;)Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->updateMember()V

    .line 198
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment$3;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->access$100(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;)Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;->notifyDataSetChanged()V

    .line 200
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 189
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 180
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment$3;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    return-void
.end method

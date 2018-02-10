.class Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->getProvinceData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$3;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$3;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "province_data.json"

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/util/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "province_data_json":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$3;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->parseJson(Ljava/lang/String;)V

    .line 218
    const-string v1, ""

    invoke-virtual {p1, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p1}, Lrx/l;->onCompleted()V

    .line 220
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 211
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$3;->a(Lrx/l;)V

    return-void
.end method

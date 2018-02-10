.class Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/f;


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
        "Lrx/f",
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
    .line 225
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$2;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 229
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$2;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->access$100(Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;)Lcom/bigkoo/pickerview/b;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$2;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->provinceBeanList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$2;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->cityList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$2;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->districtList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bigkoo/pickerview/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 234
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$2;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->access$100(Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;)Lcom/bigkoo/pickerview/b;

    move-result-object v0

    invoke-virtual {v0, v5, v5, v5}, Lcom/bigkoo/pickerview/b;->a(ZZZ)V

    .line 236
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$2;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->access$100(Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;)Lcom/bigkoo/pickerview/b;

    move-result-object v0

    invoke-virtual {v0, v5, v5, v5}, Lcom/bigkoo/pickerview/b;->a(III)V

    .line 238
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 244
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 250
    return-void
.end method

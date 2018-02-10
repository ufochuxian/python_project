.class Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bigkoo/pickerview/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$1;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 4
    .param p1, "options1"    # I
    .param p2, "option2"    # I
    .param p3, "options3"    # I

    .prologue
    .line 189
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$1;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->provinceBeanList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/ProvinceBean;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/ProvinceBean;->getPickerViewText()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "city":Ljava/lang/String;
    const-string v2, "\u5317\u4eac\u5e02"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u4e0a\u6d77\u5e02"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u5929\u6d25\u5e02"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u91cd\u5e86\u5e02"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u6fb3\u95e8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u9999\u6e2f"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$1;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->provinceBeanList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/ProvinceBean;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/ProvinceBean;->getPickerViewText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$1;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->districtList:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "address":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$1;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->access$000(Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    return-void

    .line 196
    .end local v0    # "address":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$1;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->provinceBeanList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/ProvinceBean;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/ProvinceBean;->getPickerViewText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$1;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->cityList:Ljava/util/ArrayList;

    .line 197
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$1;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->districtList:Ljava/util/ArrayList;

    .line 198
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "address":Ljava/lang/String;
    goto :goto_0
.end method
